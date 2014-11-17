unit UnitCRPrintReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls,  OleServer,
  StdCtrls, Printers, CRAXDRT_TLB, siComp, siLngLnk;

type
  TFormCRPrintReport = class(TForm)
    Application1: TApplication;
    siLangLinked_FormCRPrintReport: TsiLangLinked;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   report : IReport ;
   constructor CreateCo(ClientNo, DocTyp : Integer;
                Param1, Param2, Param3 : Integer);
  end;

//var FormCRPrintReport: TFormCRPrintReport;


implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact, dmsVidaSystem ;

constructor TFormCRPrintReport.CreateCo(ClientNo, DocTyp : Integer;
            Param1, Param2, Param3 : Integer);
  var  ReportName, HostName, Database, UserName, Password, spath: String ;
      promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
                       startPageN: OleVariant; stopPageN: OleVariant ;
                       PrinterSetup : Integer ;
begin
 ReportName:= '' ;
// dmsContact.GetClientDocPrefs ( ClientNo, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
 if (numberOfCopy < 1) or (Length(ReportName) < 4) then
 Begin
  ShowMessage('Rapporten finns inte upplagd på klienten') ;
  Exit ;
 End ;

  dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) ;

  report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  if Param1 > 0 then
  report.ParameterFields.Item[1].AddCurrentValue(Param1);
  if Param2 > 0 then
  report.ParameterFields.Item[2].AddCurrentValue(Param2);
  if Param3 > 0 then
  report.ParameterFields.Item[3].AddCurrentValue(Param3);

  Caption:= sPath+ReportName ;

   if promptUser = 0 then
   promptUser:= False
   else
     promptUser:= True ;

  if collated = 0 then
   collated:= False
    else
     collated:= True ;


  if PrinterSetup = 1 then
   report.PrinterSetup(0) ;
  report.PrintOut(promptUser,  numberOfCopy,  collated, startPageN, stopPageN) ;
end;


procedure TFormCRPrintReport.FormDestroy(Sender: TObject);
begin
  Report:= Nil ;
  Application1:= Nil ;
end;

end.
