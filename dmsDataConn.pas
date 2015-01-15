unit dmsDataConn;

interface

uses
  Classes,
  DB,
  SysUtils, ImgList, Controls, Dialogs,
  cxClasses, cxStyles, cxGridTableView,FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.Moni.FlatFile, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, FireDAC.Comp.UI,
  siComp;

  Const VIDA_WOOD_CLIENTNO = 741 ;

type
  TdmsConnector = class(TDataModule)
    ilStatus: TImageList;
    sp_MaxNo: TFDStoredProc;
    sq_GetCompany: TFDQuery;
    sq_GetCompanyClientName: TStringField;
    sp_GetCurrPkgNo: TFDStoredProc;
    imgSTD: TImageList;
    spGetSecondNo: TFDStoredProc;
    Images2424: TImageList;
    ILStatus1616: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ssOrderList: TcxGridTableViewStyleSheet;
    LOStatus1616: TImageList;
    cxStyle3: TcxStyle;
    cxStyleRed: TcxStyle;
    sq_GetLoggedInUser: TFDQuery;
    sq_GetUserName: TFDQuery;
    sq_GetUserNameUserName: TStringField;
    sq_GetUserNamePassWord: TStringField;
    FDConnection1: TFDConnection;
    sq_Updater: TFDQuery;
    sq_GetLoggedInUserLoggedInUser: TWideStringField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    procedure DataModuleDestroy          (Sender: TObject);
  private
    { Private declarations }

    FLastTransNo : LongWord;

  public
    { Public declarations }
    LoginChanged : Boolean ;
    Org_AD_Name : String ;
    Org_DB_Name : String ;
    DriveLetter : String ;
//    DB_Name     : String ;
    function  Get_AD_Name : String ;
    procedure GetUserNameLoggedIn(Var UserName, UserPswd : String;Const PFD_Name : String) ;
    function NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
    function  ExecProcedure(Proc: TFDStoredProc): Boolean;
    procedure InitProcedure(Proc: TFDStoredProc);
    function GetSecondNo(TableName: String; PrimaryKeyValue: Integer; var SecondNo: Integer): Boolean;
    function GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
    function GetCompanyName (CompanyNo : Integer) : String ;

    constructor Create(AOwner : TComponent); override;

    procedure Commit ;
    procedure Rollback ;
    function StartTransaction : LongWord;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

    function NextMaxNo(TableName: string): Integer;

  end;

var
  dmsConnector: TdmsConnector;

implementation

uses
  Forms ;


{$R *.dfm}

function TdmsConnector.Get_AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  Result:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    Result:= '-' ;
 sq_GetLoggedInUser.Close ;
End ;

procedure TdmsConnector.GetUserNameLoggedIn(Var UserName, UserPswd : String;Const PFD_Name : String) ;
Var AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  AD_Name:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    AD_Name:= '-' ;
// ShowMessage('AD_Name = '+AD_Name) ;
 if Length(PFD_Name) > 0 then
  AD_Name:= PFD_Name ;
 sq_GetLoggedInUser.Close ;
 if AD_Name <> '-' then
 Begin
  sq_GetUserName.ParamByName('AD_Name').AsString:= AD_Name ;
  sq_GetUserName.Open ;
  if not sq_GetUserName.Eof Then
  Begin
   UserName:= sq_GetUserNameUserName.AsString ;
   UserPswd:= sq_GetUserNamePassWord.AsString ;
  End
   else
    Begin
     ShowMessage('Användare ' + AD_Name + ' saknar behörighet i VIS') ;
     UserName:= '-' ;
    End ;
  sq_GetUserName.Close ;
 End
 else
 Begin
  ShowMessage('Windows användarnamn saknas') ;
  UserName:= '-' ;
 End ;
End ;

procedure TdmsConnector.Commit ;
begin
  FDConnection1.Commit ;
end;

constructor TdmsConnector.Create(AOwner : TComponent);
begin
  inherited;
  FLastTransNo := 0;
end;

procedure TdmsConnector.DataModuleDestroy(Sender: TObject);
begin
  FDConnection1.close
end;

function TdmsConnector.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  try
    FDConnection1.Params.Values['Server']  := HostName;
    FDConnection1.Params.Values['Database']  := Database;
    FDConnection1.Params.Values['User_Name'] := DBUserName;
    FDConnection1.Params.Values['Password']  := DBUserPswd;
    FDConnection1.Connected := True ;
    Result := FDConnection1.Connected;
  except
    on EAbort do
//    Begin
     Result := FALSE;
  // End ;
  end;
end;

function TdmsConnector.NextMaxNo(TableName: string): Integer;
begin
  self.sp_MaxNo.ParamByName('@TableName').AsString := TableName;
  self.sp_MaxNo.ExecProc;
  try
    Result := self.sp_MaxNo.ParamByName('@MaxNo').AsInteger;
  finally
    self.sp_MaxNo.Close;
    end;
end;

function TdmsConnector.NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
begin
  InitProcedure(spGetSecondNo);
  spGetSecondNo.ParamByName('@TableName').AsString := TableName;
  spGetSecondNo.ParamByName('@PrimaryKeyValue').AsInteger := PrimaryKeyValue;
//  spGetSecondNo.ParamByName('SecondKeyValue').AsInteger := 0 ;

  spGetSecondNo.ExecProc;
  try
    Result := spGetSecondNo.ParamByName('@SecondKeyValue').AsInteger;
  finally
    spGetSecondNo.Close;
  end;
end;

procedure TdmsConnector.Rollback ;
begin
  FDConnection1.Rollback ;
end;


function TdmsConnector.StartTransaction : LongWord;
begin
  inc(FLastTransNo);
  FDConnection1.StartTransaction ;
  Result := FLastTransNo;
end;

function TdmsConnector.GetCompanyName (CompanyNo : Integer) : String ;
Begin
 sq_GetCompany.Close ;
 sq_GetCompany.ParamByName('CompanyNo').AsInteger:= CompanyNo ;
 sq_GetCompany.Open ;
 if not sq_GetCompany.Eof then
  Result:= sq_GetCompanyClientName.AsString
  else
  Result:= '' ;
 sq_GetCompany.Close ;
End ;

function TdmsConnector.GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
begin
  sp_GetCurrPkgNo.ParamByName('@ClientNo').AsInteger := ClientNo ;
  sp_GetCurrPkgNo.ParamByName('@NoOfPkgNo').AsInteger := NoOfPkgNo ;

  sp_GetCurrPkgNo.ExecProc;
  try
    Result := sp_GetCurrPkgNo.ParamByName('@fCurrentPkgNo').AsInteger;
  finally
    sp_GetCurrPkgNo.Close;
  end;
end;

procedure TdmsConnector.InitProcedure(Proc: TFDStoredProc);
var
  i: Integer;
begin
  Proc.Close;
  for i:=0 to Proc.Params.Count-1 do
    Proc.Params[i].Clear;
end;

function TdmsConnector.GetSecondNo(TableName: String; PrimaryKeyValue: Integer; var SecondNo: Integer): Boolean;
begin
  with spGetSecondNo do
  begin
    InitProcedure(spGetSecondNo);
    ParamByName('@TableName').AsString := TableName;
    ParamByName('@PrimaryKeyValue').AsInteger := PrimaryKeyValue;

    Result := ExecProcedure(spGetSecondNo);
    if Result then
    begin
      SecondNo := ParamByName('@SecondKeyValue').AsInteger;
    end;
  end;
end;

function TdmsConnector.ExecProcedure(Proc: TFDStoredProc): Boolean;
begin
  Result := False;

  try
    Proc.ExecProc;
//		proc.GetResults;
    if Proc.ParamByName('@RETURN_VALUE').AsInteger <> 0 then
      raise Exception('Execute stored procedure error, error code: '
          + IntToStr(Proc.ParamByName('@RETURN_VALUE').AsInteger));
    Result := True;
  except
     On E: Exception do
      ShowMessage(E.Message);
  end;
  Proc.Close ;
end;

end.
