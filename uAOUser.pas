unit uAOUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, StdCtrls, Buttons, ActnList;

type
  TfAOUser = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    grdAOUserRPDBTableView1: TcxGridDBTableView;
    grdAOUserRPLevel1: TcxGridLevel;
    grdAOUserRP: TcxGrid;
    grdAOUserRPDBTableView1UserID: TcxGridDBColumn;
    grdAOUserRPDBTableView1ProducerNo: TcxGridDBColumn;
    grdAOUserRPDBTableView1RegPointNo: TcxGridDBColumn;
    grdAOUserRPDBTableView1DateCreated: TcxGridDBColumn;
    grdAOUserRPDBTableView1DateModified: TcxGridDBColumn;
    grdAOUserRPDBTableView1ModifiedUser: TcxGridDBColumn;
    grdAOUserRPDBTableView1Producent: TcxGridDBColumn;
    grdAOUserRPDBTableView1Mtpunkt: TcxGridDBColumn;
    grdAOUserRPDBTableView1StandardRegPoint: TcxGridDBColumn;
    Panel6: TPanel;
    ActionList1: TActionList;
    acAdd: TAction;
    acDelete: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    grdAOUserRPDBTableView1VoEnhet: TcxGridDBColumn;
    procedure acAddExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure grdAOUserRPDBTableView1MtpunktPropertiesInitPopup(
      Sender: TObject);
    procedure grdAOUserRPDBTableView1MtpunktPropertiesCloseUp(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fAOUser: TfAOUser;

implementation

uses dmcVidaOrder;

{$R *.dfm}

procedure TfAOUser.acAddExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  cds_AOUserRP.Insert ;
 End ;
end;

procedure TfAOUser.acDeleteExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin
  cds_AOUserRP.Delete ;
 End ;
end;

procedure TfAOUser.BitBtn1Click(Sender: TObject);
begin
 With dmcOrder do
 Begin
  if cds_AOUserRP.State in [dsEdit, dsInsert] then
  cds_AOUserRP.Post ;
  if cds_AOUserRP.ChangeCount > 0 then
  cds_AOUserRP.ApplyUpdates(0) ;
 End ;
end;

procedure TfAOUser.grdAOUserRPDBTableView1MtpunktPropertiesInitPopup(
  Sender: TObject);
begin
 With dmcOrder do
 Begin
  if cds_AOUserRPProducerNo.AsInteger > 0 then
  cds_RegPointUser.Filter   := 'ClientNo = '+cds_AOUserRPProducerNo.AsString
  else
    cds_RegPointUser.Filter   := 'ClientNo = -1' ;
  cds_RegPointUser.Filtered := True ;
 End ;
end;

procedure TfAOUser.grdAOUserRPDBTableView1MtpunktPropertiesCloseUp(
  Sender: TObject);
begin
 With dmcOrder do
 Begin
  cds_RegPointUser.Filtered := False ;
 End ;
end;

end.
