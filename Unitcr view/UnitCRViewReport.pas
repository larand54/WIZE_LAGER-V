unit UnitCRViewReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, CRVIEWER9Lib_TLB, OleServer, INIFiles, 
  StdCtrls, CRAXDDRT_TLB, CRAXDRT_TLB;

type
  TFormCRViewReport = class(TForm)
    Application1: TApplication;
    CRViewer91: TCRViewer9;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
//    AppName : String ;
  public
    { Public declarations }
   report : IReport ;

    constructor CreateCo(AOwner: TComponent; ReportName : String;AppName: String);
  end;

//var  FormCRViewReport: TFormCRViewReport;


implementation

{$R *.dfm}

Uses
   VidaConst,
  VidaUser,
  VidaUtils ;

constructor TFormCRViewReport.CreateCo(AOwner: TComponent; ReportName: String;AppName: String);
  var HostName, Database, UserName, Password, spath: String ;
begin
//  inherited Create(AOwner);

// with TIniFile.Create(ChangeFileExt(AppName, '.' + ThisUser.UserName)) do
 with TIniFile.Create('VIS_ALL.INI') do
 try
  sPath:= ReadString ('Setup', 'Path to CR Reports', '');
  HostName:= ReadString ('Setup', 'HostName', '');
  Database:= ReadString ('Setup', 'Database', '');
  UserName:= ReadString ('Setup', 'Username', '');
  Password:= ReadString ('Setup', 'Password', '');

 Finally
  Free
 End ;


  report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);


 Caption:= sPath+ReportName ;
end;


procedure TFormCRViewReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Report:= Nil ;
//  Application1.Destroy ;
end;

end.
