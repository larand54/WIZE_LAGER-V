unit VidaUser;

interface

uses
  Graphics,
  dmcVidaSystem,
  VidaType,
  dmsDataConn ;


type
  TUser = class
  private
    FUserSpec : TUserSpec;
    FNeedsRefresh: Boolean; // If user name or password is changed, note that
    // we need to re-read access rights from database before
    // supplying access rights data.
    // Security stuff
    FDatabase   : string;
    FDBUserPswd : string;
    FDBUserName : string;
    FHostName   : string;
    FUserName   : string;
    FUserPswd   : string;
//    FCompanyNo  : integer;
    //
    // User preferences
    //
    FclBackPreliminaryLO  : TColor; // Color of background for rows on
    FclBackNewLO          : TColor; // load orders grid.
    FclBackAcceptedLO     : TColor;
    FclBackRejectedLO     : TColor;
    FclBackCompletedLO    : TColor;
    FfLoadOrderHSplit     : integer;  // Horizontal split position between 2
                                      // grids on form in fLoadOrder
    FLoadEntryHSplit: Integer;

    procedure setDatabase(const Value: String);
    function getCanModify(DataCategory: TDataCategory) : Boolean;
    function getUserID: Integer;
    function getUserCompanyNo: Integer;
  protected
    procedure LoadAccessRightsFromDB;
    function getCanView(DataCategory: TDataCategory) : Boolean;
//    procedure LoadUserPreferences;
//    procedure SaveUserPreferences;
    procedure setUserName(const Value: String);
    procedure setUserPswd(const Value: String);
    function  Check_UserLogOn(UserName, Password: String): Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    function GetLogonValues (var vHostName, vDatabase, vUserName, vPassword, vpath: String) : Boolean ;
    function Logon : Boolean;
    property CanView [DataCategory: TDataCategory] : Boolean read getCanView;
    property CanModify [DataCategory: TDataCategory] : Boolean read getCanModify;
    property clBackPreliminaryLO : TColor read FclBackPreliminaryLO write
             FclBackPreliminaryLO;
    property clBackNewLO : TColor read FclBackNewLO write FclBackNewLO;
    property clBackRejectedLO : TColor read FclBackRejectedLO write
             FclBackRejectedLO;
    property clBackAcceptedLO : TColor read FclBackAcceptedLO write
             FclBackAcceptedLO;
    property clBackCompletedLO : TColor read FclBackCompletedLO write
             FclBackCompletedLO;
    property CompanyNo : integer read getUserCompanyNo ; //LARS FCompanyNo;
    property Database : String read FDatabase write setDatabase;
    property DBUserName : String read FDBUserName write FDBUserName;
    property DBUserPswd : String read FDBUserPswd write FDBUserPswd;
    property fLoadOrderHSplit : integer read FfLoadOrderHSplit write
             FfLoadOrderHSplit;
    property HostName : String  read FHostName;
    property UserID   : Integer read getUserID;
    property UserName : String  read FUserName write setUserName;
    property UserPswd : String  read FUserPswd write setUserPswd;
    property LoadEntryHSplit : Integer read FLoadEntryHSplit write FLoadEntryHSplit;
  end;

function ThisUser : TUser;

implementation

uses
  Classes,
  Dialogs,
  Forms,
  inifiles,
  SysUtils,
  frmLogon,
  VidaSecureStore,
  VidaUtils;


var
  TheOneAndOnlyUser: TUser;
  CreatingAsSingleton: Boolean = False;

function ThisUser : TUser;
begin
  if TheOneAndOnlyUser = nil then
  begin
    CreatingAsSingleton := true;
    try
      TheOneAndOnlyUser := TUser.Create
    finally
      CreatingAsSingleton := False
    end;
  end;
  Result := TheOneAndOnlyUser
end;


{ TUser }
constructor TUser.Create;
var
  DataCategory: TDataCategory;
begin
  inherited;

  // Get user access rights & company number
  for DataCategory := Low(TDataCategory) to High(TDataCategory) do
    FUserSpec.AccessRights[DataCategory] := arNONE;
  FNeedsRefresh := TRUE;
end;


destructor TUser.Destroy;
begin
//  SaveUserPreferences;
  inherited
end;


function TUser.getCanModify(DataCategory: TDataCategory) : Boolean;
begin
  if FNeedsRefresh then
    LoadAccessRightsFromDB;
  Result := FUserSpec.AccessRights[DataCategory] = arMODIFY
end;


function TUser.getCanView(DataCategory: TDataCategory) : Boolean;
begin
  if FNeedsRefresh then
    LoadAccessRightsFromDB;
  Result := FUserSpec.AccessRights[DataCategory] in [arREAD, arMODIFY] ;
  if Result = False then
   ShowMessage('Behörighet saknas') ;
end;


function TUser.getUserID: Integer;
begin
  Result := FUserSpec.UserID;
end;

function TUser.getUserCompanyNo: Integer;
begin
  Result := FUserSpec.CompanyNo;
end;

procedure TUser.LoadAccessRightsFromDB;
begin
  FUserSpec := dmcSystem.AccessRights(UserName, UserPswd);
//  LoadUserPreferences;
  FNeedsRefresh := FALSE;
end;


{procedure TUser.LoadUserPreferences;
begin
  with TIniFile.Create(dmsConnector.InifilesMap+'Vis'+'.'+ThisUser.UserName) do
    try
      //
      // Colors on Load Order form
      //
      FclBackPreliminaryLO := INIStringToColor(ReadString('Preferences','Background Color Preliminary LO', 'Window'));
      FclBackNewLO         := INIStringToColor(ReadString('Preferences','Background Color New LO',         'Yellow'));
      FclBackAcceptedLO    := INIStringToColor(ReadString('Preferences','Background Color Accepted LO',    'Lime'));
      FclBackRejectedLO    := INIStringToColor(ReadString('Preferences','Background Color Rejected LO',    'Red'));
      FclBackCompletedLO   := INIStringToColor(ReadString('Preferences','Background Color Completed LO',   'MoneyGreen'));

      //
      // Other Load Order form otions
      //
      FfLoadOrderHSplit := ReadInteger('Preferences', 'Load Orders Lower grid height', 140);

      //
      // Load Entry Form options
      //
      FLoadEntryHSplit := readInteger('Preferences', 'Load Entry horizontal split', 136);

      // Add new reads here when adding more preferences
    finally
      Free
    end;
end; }


function TUser.Logon : Boolean;
var
  dlg : TdlgLogOn;
  Store : TSecureStore;
  iPosDelim: integer;
begin
  Result := FALSE;
  Store := TSecureStore.Create;
  with Store do try

    dlg := TdlgLogOn.Create(nil);
    with dlg do try

      // Move data from secure storage to the dialog for display to the user
      dlg.UserName   := Store.UserName;
      dlg.UserPswd   := Store.UserPswd;
      dlg.DBUserName := Store.DBUserName;
      dlg.DBUserPswd := Store.DBUserPswd;
      dlg.Database   := Store.Database;
      dlg.Remember   := Store.Remember;
      dlg.UserKey    := Store.UserKey;

      if Execute then begin

        // The user has accepted / modified the data as required, and wants to log in.
        // Get the password data from the dialog before we destroy it
        iPosDelim := Pos(':', dlg.Database);
        if iPosDelim > 0 then begin
          FHostName    := Copy(dlg.Database, 1, iPosDelim - 1);
          FDatabase    := Copy(dlg.Database, iPosDelim + 1, Length(dlg.Database) - iPosDelim);
          FUserName    := dlg.UserName;
          FUserPswd    := dlg.UserPswd;
          FDBUserPswd  := dlg.DBUserPswd;
          FDBUserName  := dlg.DBUserName;
          end
        else
          raise EInvalidOperation.CreateFmt('Invalid Remote database (%s)', [dlg.Database]);

        Result := dmcSystem.LogOnToDatabase(FHostName,FDatabase,FDBUserName,FDBUserPswd);
        if Result then
         begin
          Result := Check_UserLogOn(dlg.UserName, dlg.UserPswd) ;
          if Result then
          begin
           LoadAccessRightsFromDB;

           // Also copy the data to the store so it can (if requested by user) be saved
           Store.UserName   := dlg.UserName;
           Store.UserPswd   := dlg.UserPswd;
           Store.DBUserName := dlg.DBUserName;
           Store.DBUserPswd := dlg.DBUserPswd;
           Store.Database   := dlg.Database;
           Store.Remember   := dlg.Remember;
           Store.UserKey    := dlg.UserKey;
          End
           else
            ShowMessage('Användare '+dlg.UserName+' eller lösen '+dlg.UserPswd+' är fel') ;

         end
          else
           ShowMessage('Cannot connect because database connection parameters are wrong.  Remote database: '+dlg.Database
    +'  db Username: '+ dlg.DBUserName
    +'  db password: '+ dlg.DBUserPswd) ;


        end;
    finally
      dlg.free;
      end;

  finally
    Store.free;
    end;

end;

function TUser.Check_UserLogOn(UserName, Password: String): Boolean;
begin
  Result := False;

  with dmcSystem.qryExec do
  begin
   SQL.Add('SELECT users.UserID, users.CompanyNo, client.SalesRegionNo From Users '
        + ' LEFT OUTER JOIN Client ON client.ClientNo = users.CompanyNo '
        + ' WHERE UserName = ''' + UserName + ''' AND '
        + ' Password = ''' + Password + '''');
   Open ;     

    if Not Eof then
    begin
      Result := True;

    end;
   Close ;  
  end; //with
end;

{procedure TUser.SaveUserPreferences;
begin
  if FNeedsRefresh then  // Don't write data to INI file if we never got as far as reading
    Exit;                // it in from the INI file when running the program

  with TIniFile.Create(dmsConnector.InifilesMap+'Vis'+'.'+ThisUser.UserName) do
    try
      WriteString ('Preferences', 'Background Color Preliminary LO', ColortoINIString(FclBackPreliminaryLO));
      WriteString ('Preferences', 'Background Color New LO',         ColortoINIString(FclBackNewLO));
      WriteString ('Preferences', 'Background Color Accepted LO',    ColortoINIString(FclBackAcceptedLO));
      WriteString ('Preferences', 'Background Color Rejected LO',    ColortoINIString(FclBackRejectedLO));
      WriteString ('Preferences', 'Background Color Completed LO',   ColortoINIString(FclBackCompletedLO));
      WriteInteger('Preferences', 'Load Orders Lower grid height',   FfLoadOrderHSplit);

      WriteInteger('Preferences', 'Load Entry horizontal split',     FLoadEntryHSplit);

      // Add new writes here when adding more preferences

    finally
      Free
    end;
end; }


procedure TUser.setDatabase(const Value: String);
var
  iPosDelim: integer;
begin
  iPosDelim := Pos(':', Value);
  if iPosDelim > 0 then
  begin
    FHostName := Copy(Value, 1, iPosDelim - 1);
    FDatabase := Copy(Value, iPosDelim + 1, Length(Value) - iPosDelim)
  end
  else
    raise EInvalidOperation.CreateFmt('Invalid Remote database (%s)', [Value])
end;


procedure TUser.setUserName(const Value: String);
begin
  FUserName := Value;
  FNeedsRefresh := true
end;


procedure TUser.setUserPswd(const Value: String);
begin
  FUserPswd := Value;
  FNeedsRefresh := true
end;

function TUser.GetLogonValues (var vHostName, vDatabase, vUserName, vPassword, vpath: String) : Boolean ;
var
//  dlg : TdlgLogOn;
  Store : TSecureStore;
  iPosDelim: integer;
  D_Database, D_UserName, D_Password, D_path: String ;
begin

  Result := True ;

  Store := TSecureStore.Create;
  with Store do try

      D_UserName := Store.DBUserName;
      D_Password := Store.DBUserPswd;
      D_Database   := Store.Database;
      D_PATH := Store.CRPath ;


        // The user has accepted / modified the data as required, and wants to log in.
        // Get the password data from the dialog before we destroy it
        iPosDelim := Pos(':', D_Database);
        if iPosDelim > 0 then begin
          vDatabase    := Copy(D_Database, iPosDelim + 1, Length(D_Database) - iPosDelim);
          vHostName    := Copy(D_Database, 1, iPosDelim - 1);
          vUserName    := D_UserName;
          vPassword    := D_Password;
          vPATH        := D_PATH ;
          end
        else
         Begin
          Result:= False ;
          raise EInvalidOperation.CreateFmt('Invalid Remote database (%s)', [Database]);

         End ;

  finally
    Store.free;
  end;

end;

end.


