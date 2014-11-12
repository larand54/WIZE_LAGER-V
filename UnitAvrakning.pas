unit UnitAvrakning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, db, dxExEdtr,
  dxDBEdtr ;

type
  TfrmAvrakning = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbSaveInvoice: TdxBarLargeButton;
    lbCancelInvoice: TdxBarLargeButton;
    lbPrintInvoice: TdxBarLargeButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    grdLoads: TdxDBGrid;
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    grdLoadsVIS_FS: TdxDBGridMaskColumn;
    grdLoadsMILL_FS: TdxDBGridMaskColumn;
    grdLoadsLOAD_DATE: TdxDBGridColumn;
    grdLoadsCUSTOMER: TdxDBGridMaskColumn;
    grdLoadsAKT_THICK: TdxDBGridMaskColumn;
    grdLoadsAKT_WIDTH: TdxDBGridMaskColumn;
    grdLoadsACT_M3: TdxDBGridMaskColumn;
    grdLoadsNOM_LPM: TdxDBGridMaskColumn;
    grdLoadsNOM_THICK: TdxDBGridMaskColumn;
    grdLoadsNOM_WIDTH: TdxDBGridMaskColumn;
    grdLoadsNOM_M3: TdxDBGridMaskColumn;
    grdLoadsPRICE: TdxDBGridMaskColumn;
    grdLoadsVALUE: TdxDBGridMaskColumn;
    grdLoadsMOMS_VALUE: TdxDBGridMaskColumn;
    grdLoadsSUPPCODE: TdxDBGridMaskColumn;
    grdLoadsCUSTOMER_1: TdxDBGridMaskColumn;
    grdLoadsGRADENAME: TdxDBGridMaskColumn;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure lbCancelInvoiceClick(Sender: TObject);
    procedure lbSaveInvoiceClick(Sender: TObject);
    procedure lbPrintInvoiceClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmAvrakning: TfrmAvrakning;

implementation

uses dmcVidaPayment, UnitCRViewReport, dmsVidaContact, dmsDataConn, VidaUser ;

{$R *.dfm}

procedure TfrmAvrakning.lbCancelInvoiceClick(Sender: TObject);
begin
 dmcPayment.AngraAvrakning:= True ;
 dmcPayment.cdsPayHead.Delete ;
 if  dmcPayment.cdsPayHead.ChangeCount > 0 then
   dmcPayment.cdsPayHead.ApplyUpdates(0) ;
 Close ;
end;

procedure TfrmAvrakning.lbSaveInvoiceClick(Sender: TObject);
begin
 if dmcPayment.cdsPayHead.State in [dsEdit, dsInsert] then
  dmcPayment.cdsPayHead.Post ;

 if dmcPayment.cdsPayHead.ChangeCount > 0 then
   dmcPayment.cdsPayHead.ApplyUpdates(0) ;

 Close ;
end;

procedure TfrmAvrakning.lbPrintInvoiceClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmcPayment.IntegerField9.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('AVRAKNING_2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcPayment.IntegerField9.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmAvrakning.FormCreate(Sender: TObject);
begin
 dmsContact.cds_Verk.Active:= True ;
 grdLoads.LoadFromIniFile(dmsConnector.InifilesMap+'Avrakning'+'.'+ThisUser.UserName);

end;

procedure TfrmAvrakning.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsContact.cds_Verk.Active:= False ;
  grdLoads.SaveToIniFile(dmsConnector.InifilesMap+'Avrakning'+'.'+ThisUser.UserName);  
  CanClose := True ;
end;

end.
