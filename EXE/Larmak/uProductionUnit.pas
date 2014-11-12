unit uProductionUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner,
  StdCtrls, Buttons, DB ;

type
  TfrmProductionUnit = class(TForm)
    Panel1: TPanel;
    grdProdUnits: TdxDBGrid;
    grdProdUnitsProductionUnitNo: TdxDBGridMaskColumn;
    grdProdUnitsClientNo: TdxDBGridMaskColumn;
    grdProdUnitsSequenceNo: TdxDBGridMaskColumn;
    grdProdUnitsCreatedUser: TdxDBGridMaskColumn;
    grdProdUnitsModifiedUser: TdxDBGridMaskColumn;
    grdProdUnitsDateCreated: TdxDBGridColumn;
    grdProdUnitsLogicalInventoryPointNo: TdxDBGridMaskColumn;
    grdProdUnitsInventory: TdxDBGridLookupColumn;
    bbInsert: TBitBtn;
    bbRemove: TBitBtn;
    bbCancelRow: TBitBtn;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    grdProdUnitsOnSticks: TdxDBGridCheckColumn;
    grdProdUnitsSurfacingNo: TdxDBGridMaskColumn;
    grdProdUnitsDIM_DIV: TdxDBGridMaskColumn;
    grdProdUnitsProductionUnitName: TdxDBGridLookupColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbInsertClick(Sender: TObject);
    procedure bbRemoveClick(Sender: TObject);
    procedure bbCancelRowClick(Sender: TObject);
    procedure bbApplyChangesClick(Sender: TObject);
    procedure bbCancelChangesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    Procedure CreateCo(ClientNo : Integer ) ;
  end;

var
  frmProductionUnit: TfrmProductionUnit;

implementation

uses dmsVidaContact;

{$R *.dfm}
Procedure TfrmProductionUnit.CreateCo(ClientNo : Integer ) ;
Begin
 With dmsContact do
 Begin
  fClientNo := ClientNo ;
  cds_LogInv.Filter:= 'OwnerNo = '+IntToStr(fClientNo);
  cds_LogInv.Filtered:= True ;
  cds_ProductionUnit.Filter:= 'ClientNo = '+IntToStr(fClientNo);
  cds_ProductionUnit.Filtered:= True ;
  cds_ProductionUnit.Active:= True ;
 End ;
End ;

procedure TfrmProductionUnit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 With dmsContact do
 Begin

  cds_ProductionUnit.Active:= False ;
  cds_LogInv.Filtered:= False ;
  cds_ProductionUnit.Filtered:= False ;
 End ;
end;

procedure TfrmProductionUnit.bbInsertClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  cds_ProductionUnit.Insert ;
 End ;
end;

procedure TfrmProductionUnit.bbRemoveClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Delete ;
 End ;
end;

procedure TfrmProductionUnit.bbCancelRowClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_ProductionUnit.Cancel ;
 End ;
end;

procedure TfrmProductionUnit.bbApplyChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  if cds_ProductionUnit.ChangeCount > 0 then
   cds_ProductionUnit.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmProductionUnit.bbCancelChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_ProductionUnit.State in [dsInsert, dsEdit] then
  cds_ProductionUnit.Post ;
  if cds_ProductionUnit.ChangeCount > 0 then
   cds_ProductionUnit.CancelUpdates ;
 End ;

end;

end.
