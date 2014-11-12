unit dmsDataConn;

interface

uses
  Classes,
  DB,
  DBXpress,
  SqlExpr,
  SysUtils, FMTBcd, Provider, ImgList, Controls, Dialogs, DBClient,
  ADODB, cxClasses, cxStyles, cxGridTableView, CRSQLConnection;

  Const VIDA_WOOD_CLIENTNO = 741 ;

type
  TdmsConnector = class(TDataModule)
    sq_Updater: TSQLQuery;
    SQLMonitor: TSQLMonitor;
    ilStatus: TImageList;
    sp_MaxNo: TSQLStoredProc;
    sq_GetCompany: TSQLQuery;
    sq_GetCompanyClientName: TStringField;
    sp_GetCurrPkgNo: TSQLStoredProc;
    imgSTD: TImageList;
    spGetSecondNo: TSQLStoredProc;
    Images2424: TImageList;
    ILStatus1616: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ssOrderList: TcxGridTableViewStyleSheet;
    LOStatus1616: TImageList;
    cxStyle3: TcxStyle;
    SQLConnection: TCRSQLConnection;
    cxStyleRed: TcxStyle;
    sq_GetLoggedInUser: TSQLQuery;
    sq_GetLoggedInUserLoggedInUser: TStringField;
    sq_GetUserName: TSQLQuery;
    sq_GetUserNameUserName: TStringField;
    sq_GetUserNamePassWord: TStringField;
    procedure DataModuleDestroy          (Sender: TObject);
  private
    { Private declarations }

    FLastTransNo : LongWord;
    function getLogActive: Boolean;
    procedure setLogActive(const Value: Boolean);
    function getLogFile: string;
    procedure setLogFile(const Value: string);

  public
    { Public declarations }
    DriveLetter,
    InifilesMap : String ;
    procedure GetUserNameLoggedIn(Var UserName, UserPswd : String) ;
    function NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
    function  ExecProcedure(Proc: TSQLStoredProc): Boolean;
    procedure InitProcedure(Proc: TSQLStoredProc);
    function GetSecondNo(TableName: String; PrimaryKeyValue: Integer; var SecondNo: Integer): Boolean;
    function GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
    function GetCompanyName (CompanyNo : Integer) : String ;

    constructor Create(AOwner : TComponent); override;

    procedure Commit  (TransactionNo : LongWord);
    procedure Rollback(TransactionNo : LongWord);
    function StartTransaction : LongWord;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

    function NextMaxNo(TableName: string): Integer;
    Property LogActive : Boolean read getLogActive write setLogActive;
    property LogFile   : string  read getLogFile   write setLogFile;

  end;

var
  dmsConnector: TdmsConnector;

implementation

uses
  Forms ;


{$R *.dfm}

procedure TdmsConnector.GetUserNameLoggedIn(Var UserName, UserPswd : String) ;
Var AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  AD_Name:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    AD_Name:= '-' ;
// ShowMessage('AD_Name = '+AD_Name) ;
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
    UserName:= '-' ;
  sq_GetUserName.Close ;
 End
 else
 Begin
  UserName:= '-' ;
 End ;
End ;

procedure TdmsConnector.Commit(TransactionNo: LongWord);
var
  TransactionDesc : TTransactionDesc;
begin
  TransactionDesc.TransactionID  := TransactionNo;
  TransactionDesc.IsolationLevel := xilDIRTYREAD;
  SQLConnection.Commit(TransactionDesc);
end;

constructor TdmsConnector.Create(AOwner : TComponent);
begin
  inherited;
  FLastTransNo := 0;
end;

procedure TdmsConnector.DataModuleDestroy(Sender: TObject);
begin
  SQLConnection.close
end;

function TdmsConnector.getLogActive: Boolean;
begin
  Result := SQLMonitor.Active;
end;

function TdmsConnector.getLogFile: string;
begin
  Result := SQLMonitor.FileName;
end;

function TdmsConnector.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  try

    SQLConnection.Params.Values['HostName']  := HostName;
    SQLConnection.Params.Values['Database']  := Database;
    SQLConnection.Params.Values['User Name'] := DBUserName;
    SQLConnection.Params.Values['Password']  := DBUserPswd;

    SQLConnection.Connected := True ;

    Result := SQLConnection.Connected;
  except
    on EAbort do
//    Begin
     Result := FALSE;
  // End ;
  end;
end;

function TdmsConnector.NextMaxNo(TableName: string): Integer;
begin
  self.sp_MaxNo.ParamByName('TableName').AsString := TableName;
  self.sp_MaxNo.ExecProc;
  try
    Result := self.sp_MaxNo.ParamByName('MaxNo').AsInteger;
  finally
    self.sp_MaxNo.Close;
    end;
end;

function TdmsConnector.NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
begin
    InitProcedure(spGetSecondNo);
  spGetSecondNo.ParamByName('TableName').AsString := TableName;
  spGetSecondNo.ParamByName('PrimaryKeyValue').AsInteger := PrimaryKeyValue;
//  spGetSecondNo.ParamByName('SecondKeyValue').AsInteger := 0 ;

  spGetSecondNo.ExecProc;
  try
    Result := spGetSecondNo.ParamByName('SecondKeyValue').AsInteger;
  finally
    spGetSecondNo.Close;
  end;
end;

procedure TdmsConnector.Rollback(TransactionNo: LongWord);
var
  TransactionDesc : TTransactionDesc;
begin
  TransactionDesc.TransactionID  := TransactionNo;
  TransactionDesc.IsolationLevel := xilDIRTYREAD;
  SQLConnection.Rollback(TransactionDesc);
end;

procedure TdmsConnector.setLogActive(const Value: Boolean);
begin
  if Value then
    try
      SQLMonitor.Active := VALUE;
    except
      on EAbort do
        Application.Terminate;
    end
  else
    SQLMonitor.Active := FALSE;
end;

procedure TdmsConnector.setLogFile(const Value: string);
begin
  if SQLMonitor.Active then
    try
      SQLMonitor.Active := FALSE;
      SQLMonitor.FileName := Value;
    finally
      SQLMonitor.Active := TRUE;
      end
  else
    SQLMonitor.FileName := Value;
end;

function TdmsConnector.StartTransaction : LongWord;
var
  TransactionDesc : TTransactionDesc;
begin
  inc(FLastTransNo);
  TransactionDesc.TransactionID  := FLastTransNo;
  TransactionDesc.IsolationLevel := xilDIRTYREAD;
  SQLConnection.StartTransaction(TransactionDesc);
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
  sp_GetCurrPkgNo.ParamByName('ClientNo').AsInteger := ClientNo ;
  sp_GetCurrPkgNo.ParamByName('NoOfPkgNo').AsInteger := NoOfPkgNo ;

  sp_GetCurrPkgNo.ExecProc;
  try
    Result := sp_GetCurrPkgNo.ParamByName('fCurrentPkgNo').AsInteger;
  finally
    sp_GetCurrPkgNo.Close;
  end;
end;

procedure TdmsConnector.InitProcedure(Proc: TSQLStoredProc);
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
    ParamByName('TableName').AsString := TableName;
    ParamByName('PrimaryKeyValue').AsInteger := PrimaryKeyValue;

    Result := ExecProcedure(spGetSecondNo);
    if Result then
    begin
      SecondNo := ParamByName('SecondKeyValue').AsInteger;
    end;
  end;
end;

function TdmsConnector.ExecProcedure(Proc: TSQLStoredProc): Boolean;
begin
  Result := False;

  try
    Proc.ExecProc;
//		proc.GetResults;
    if Proc.ParamByName('RETURN_VALUE').AsInteger <> 0 then
      raise Exception('Execute stored procedure error, error code: '
          + IntToStr(Proc.ParamByName('RETURN_VALUE').AsInteger));
    Result := True;
  except
     On E: Exception do
      ShowMessage(E.Message);
  end;
  Proc.Close ;
end;

end.
