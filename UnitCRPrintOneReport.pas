unit UnitCRPrintOneReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls,  OleServer, 
  StdCtrls, Printers, CRAXDRT_TLB, siComp;

type
  TFormCRPrintOneReport = class(TForm)
    Application1: TApplication;
    siLang_FormCRPrintOneReport: TsiLang;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   CRreport : IReport ;
   ReportFound  : Boolean ;
   procedure CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);
  end;

//var FormCRPrintOneReport: TFormCRPrintOneReport;


implementation

{$R *.dfm}

Uses
   VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact , dmsVidaSystem;

procedure TFormCRPrintOneReport.CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);
  var HostName, Database, UserName, Password, spath: String ;
      I : Integer ;
      startPageN, stopPageN : OleVariant ;
      Save_Cursor     : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 ReportFound  := True ;
// startPageN   := 0 ;
// stopPageN    := 0 ;
// ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

  if not(FileExists(sPath+ReportName)) then
  Begin
   ReportFound:= False ;
   ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
   Exit ;
  End ;

  CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

//  CRreport.ParameterFields.Item[1].AddCurrentValue(62366);
  for I := 0 to High(A) do
  CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

//  if PrinterSetup then
   CRreport.PrinterSetup(0) ;
//  Try
  crreport.printout(False, numberOfCopy, False, startPageN, stopPageN);
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TFormCRPrintOneReport.FormDestroy(Sender: TObject);
begin
  CRreport:= Nil ;
  Application1:= Nil ;
end;

end.
