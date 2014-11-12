unit uGenShipCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ImgList, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, dxDBELib,
  dxDBTLCl, dxGrClms, DB ;

type
  TfrmGenShipCost = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbExit: TdxBarLargeButton;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    lbNew: TdxBarLargeButton;
    lbDeleteRow: TdxBarLargeButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    grdGenFreightCost: TdxDBGrid;
    peSalesRegion: TdxPickEdit;
    pecosttype: TdxPickEdit;
    Panel2: TPanel;
    dxDBDateEdit1: TdxDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    grdGenFreightCostSalesRegionNo: TdxDBGridMaskColumn;
    grdGenFreightCosttype: TdxDBGridMaskColumn;
    grdGenFreightCostValidFrom: TdxDBGridColumn;
    grdGenFreightCostCost: TdxDBGridMaskColumn;
    grdGenFreightCostCurrencyNo: TdxDBGridMaskColumn;
    grdGenFreightCostVolunitNo: TdxDBGridMaskColumn;
    grdGenFreightCostDateCreated: TdxDBGridColumn;
    grdGenFreightCostModifiedUser: TdxDBGridMaskColumn;
    grdGenFreightCostVALUTA: TdxDBGridLookupColumn;
    grdGenFreightCostENHET: TdxDBGridLookupColumn;
    procedure FormCreate(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure lbNewClick(Sender: TObject);
    procedure lbDeleteRowClick(Sender: TObject);
    procedure lbApplyUpdatesClick(Sender: TObject);
    procedure lbCancelUpdatesClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure peSalesRegionChange(Sender: TObject);
    procedure pecosttypeChange(Sender: TObject);
  private
    { Private declarations }
    procedure FilterSC(Sender: TObject);
  public
    { Public declarations }
  end;

//var frmGenShipCost: TfrmGenShipCost;

implementation

uses UnitdmModule1, dmsVidaContact;

{$R *.dfm}

procedure TfrmGenShipCost.FormCreate(Sender: TObject);
begin
 dmsContact.LoadRegions(peSalesRegion.Items);
 if peSalesRegion.Items.Count > 0 then
  peSalesRegion.ItemIndex:= 0 ;

 With dmModule1 do
 Begin
  cds_genfreight.Active:= True ;
  FilterSC(Sender) ;
 End ;
end;

procedure TfrmGenShipCost.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmGenShipCost.lbNewClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_genfreight.Insert ;
  cds_genfreighttype.AsString:= pecosttype.Text ;
  cds_genfreightSalesRegionNo.AsInteger:= integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]) ;
 End ;
end;

procedure TfrmGenShipCost.lbDeleteRowClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_genfreight.Delete ;
 End ;
end;

procedure TfrmGenShipCost.lbApplyUpdatesClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  if cds_genfreight.State in [dsEdit, dsInsert] then
   cds_genfreight.Post ;
  if cds_genfreight.ChangeCount > 0 then
   cds_genfreight.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmGenShipCost.lbCancelUpdatesClick(Sender: TObject);
begin
 With dmModule1 do
 Begin
  if cds_genfreight.State in [dsEdit, dsInsert] then
   cds_genfreight.Cancel ;
  if cds_genfreight.ChangeCount > 0 then
   cds_genfreight.CancelUpdates ;
 End ;
end;

procedure TfrmGenShipCost.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmModule1 do
 Begin
  if (cds_genfreight.State in [dsEdit, dsInsert])
  or (cds_genfreight.changecount > 0) then
   Begin
    if MessageDlg('Data är inte sparad.  vill du avsluta?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose := True
     else
     CanClose:= False ;
   End
    else
     CanClose := True ;
  if CanClose then
  Begin
   With dmModule1 do
   Begin
    cds_genfreight.Filtered:= False ;
    cds_genfreight.Active:= False ;
   End ;
  End ;
 End ;
end;

procedure TfrmGenShipCost.peSalesRegionChange(Sender: TObject);
begin
 FilterSC(Sender) ;
end;

procedure TfrmGenShipCost.FilterSC(Sender: TObject);
begin
 With dmModule1 do
 Begin
  cds_genfreight.Filter:= 'SalesRegionNo = '+IntToStr(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]))
  +' AND type = '+QuotedStr(pecosttype.Text) ;
  cds_genfreight.Filtered:= True ;
 End ;
end;




procedure TfrmGenShipCost.pecosttypeChange(Sender: TObject);
begin
 FilterSC(Sender) ;
end;

end.
