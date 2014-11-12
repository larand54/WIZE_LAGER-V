unit dmsDataConn;

interface

uses
  Classes,
  DB,
  DBXpress,
  SqlExpr,
  SysUtils, FMTBcd, Provider, ImgList, Controls, Dialogs, DBClient,
  CRSQLConnection ;

type
  TdmsConnector = class(TDataModule)
    sq_Updater: TSQLQuery;
    SQLMonitor: TSQLMonitor;
    ilStatus: TImageList;
    sp_MaxNo: TSQLStoredProc;
    sq_GetCompany: TSQLQuery;
    sq_GetCompanyClientName: TStringField;
    sp_GetCurrPkgNo: TSQLStoredProc;
    SQLConnection: TCRSQLConnection;
    sp_MinNo: TSQLStoredProc;
    sq_GetLoggedInUser: TSQLQuery;
    sq_GetLoggedInUserLoggedInUser: TStringField;
    sq_GetUserName: TSQLQuery;
    sq_GetUserNameUserName: TStringField;
    sq_GetUserNamePassWord: TStringField;
    procedure DataModuleCreate           (Sender: TObject);
    procedure DataModuleDestroy          (Sender: TObject);
    procedure SQLConnectionAfterConnect(Sender: TObject);
    procedure CRSQLConnection1AfterConnect(Sender: TObject);
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
    LoginChanged : Boolean ;
    Org_AD_Name : String ;
    Org_DB_Name : String ;
    function  Get_AD_Name : String ;
    procedure GetUserNameLoggedIn(Var UserName, UserPswd : String;Const pAD_Name : String) ;

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
    function NextMinNo(TableName: string): Integer;

    Property LogActive : Boolean read getLogActive write setLogActive;
    property LogFile   : string  read getLogFile   write setLogFile;

  end;

var
  dmsConnector: TdmsConnector;

implementation

uses
  Forms;
//  VidaUser;


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

procedure TdmsConnector.GetUserNameLoggedIn(Var UserName, UserPswd : String;Const pAD_Name : String) ;
Var AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  AD_Name:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    AD_Name:= '-' ;
// ShowMessage('AD_Name = '+AD_Name) ;
 if Length(pAD_Name) > 0 then
  AD_Name:= pAD_Name ;
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

procedure TdmsConnector.DataModuleCreate(Sender: TObject);
//
// This method is used to open the connection to the database
// immediately when this data module is created. The connection
// is kept open as long as the application is running.
// This connection should be shared by all code that accesses
// the database.
//
//var
// YY,MM,DD,HH,MN,SS,MS : WORD;
begin
//  try
//    DecodeDate(Now,YY,MM,DD);
//    DecodeTime(Now,HH,MN,SS,MS);
//    SQLMonitor.FileName := Format('Logs\%d%d%d%d%d%d.txt',[YY,MM,DD,HH,MN,SS]);
//    SQLConnection.Open;
//  except
//    on EAbort do
//      Application.Terminate;
//  end;
end;


procedure TdmsConnector.DataModuleDestroy(Sender: TObject);
//
// Close the database when the data module is destroyed when
// the application is closed.
//
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
{    DecodeDate(Now,YY,MM,DD);
    DecodeTime(Now,HH,MN,SS,MS);
    SQLMonitor.FileName := Format('Logs\%d%d%d%d%d%d.txt',[YY,MM,DD,HH,MN,SS]);
    SQLConnection.Params.Values['HostName']  := HostName;
    SQLConnection.Params.Values['Database']  := Database;
    SQLConnection.Params.Values['User Name'] := DBUserName;
    SQLConnection.Params.Values['Password']  := DBUserPswd;
 }

    SQLConnection.Params.Values['HostName']  := HostName;
    SQLConnection.Params.Values['Database']  := Database;
    SQLConnection.Params.Values['User Name'] := DBUserName;
    SQLConnection.Params.Values['Password']  := DBUserPswd; 
{    ShowMessage('Hostname: '+SQLConnection.Params.Values['HostName']
    +'  Database: '+ SQLConnection.Params.Values['Database']
    +'  User name: '+ SQLConnection.Params.Values['User Name']
    +'  Password: '+ SQLConnection.Params.Values['Password']     ) ; }
    SQLConnection.Connected := True ; // .Open;

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

function TdmsConnector.NextMinNo(TableName: string): Integer;
begin
  self.sp_MinNo.ParamByName('TableName').AsString := TableName;
  self.sp_MinNo.ExecProc;
  try
    Result := self.sp_MinNo.ParamByName('MaxNo').AsInteger;
  finally
    self.sp_MinNo.Close;
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

procedure TdmsConnector.SQLConnectionAfterConnect(Sender: TObject);
const
  coEnableBCD = TSQLConnectionOption(102); // boolean
begin
 SQLConnection.SQLConnection.SetOption(coEnableBCD, Integer(False))
end;

procedure TdmsConnector.CRSQLConnection1AfterConnect(Sender: TObject);
const
  coEnableBCD = TSQLConnectionOption(102); // boolean
begin
 SQLConnection.SQLConnection.SetOption(coEnableBCD, Integer(False))
end;

end.
