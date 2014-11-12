unit uSelectLIP_AR ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, ExtCtrls, cxLabel, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfSelectLIP_AR = class(TForm)
    cmbPhysInv: TcxComboBox;
    cmbLogicalInv: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure cmbPhysInvPropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LO_CUSTOMERNO, LIPNo : Integer ;
    procedure LoadDefaultLager ;
  end;

//var fSelectLIP_AR: TfSelectLIP_AR ;

implementation

uses dmsVidaContact, VidaUser, VidaConst ;

{$R *.dfm}

procedure TfSelectLIP_AR.LoadDefaultLager ;
Var y, x, PIPNo : Integer ;
begin
  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   dmsContact.LoadPhysInventory(cmbPhysInv.Properties.Items, LO_CUSTOMERNO, ThisUser.CompanyNo)
    else
     dmsContact.LoadPhysInventory(cmbPhysInv.Properties.Items, LO_CUSTOMERNO, ThisUser.CompanyNo) ;

  PIPNo:=  dmsContact.GetPIPNo(LIPNo) ;

  For x := 0 to cmbPhysInv.Properties.Items.Count -1 do
  Begin
   if PIPNo = integer(cmbPhysInv.Properties.Items.Objects[x]) then
   Begin
    cmbPhysInv.ItemIndex := x ;
    if cmbPhysInv.Properties.Items.Count > 0 then
    Begin
     dmsContact.LoadLogicalInventory(
     cmbLogicalInv.Properties.Items, integer(cmbPhysInv.Properties.Items.Objects[cmbPhysInv.ItemIndex]) );
//     cmbLogicalInv.Text:= cmbPhysInv.Properties.Items[cmbPhysInv.ItemIndex] ;
     if cmbPhysInv.Properties.Items.Count > 0 then
     cmbLogicalInv.ItemIndex:= 0 ;

     For y := 0 to cmbLogicalInv.Properties.Items.Count -1 do
     if LIPNo = integer(cmbLogicalInv.Properties.Items.Objects[y]) then
     Begin
      cmbLogicalInv.ItemIndex:= y ;
     End ;

    End ;
   End ;
  End ;

end;

procedure TfSelectLIP_AR.cmbPhysInvPropertiesChange(Sender: TObject);
begin
 if cmbPhysInv.Properties.Items.Count > 0 then
 Begin
  dmsContact.LoadLogicalInventory(
  cmbLogicalInv.Properties.Items,
  integer(cmbPhysInv.Properties.Items.Objects[cmbPhysInv.ItemIndex]) );
  cmbLogicalInv.Text:= cmbPhysInv.Properties.Items[cmbPhysInv.ItemIndex] ;
  cmbLogicalInv.ItemIndex:= 0 ;
 End ;
end;

procedure TfSelectLIP_AR.BitBtn1Click(Sender: TObject);
begin
 if cmbLogicalInv.Properties.Items.Count > 0 then
  LIPNo:= integer(cmbLogicalInv.Properties.Items.Objects[cmbLogicalInv.ItemIndex])
   else
    LIPNo:= -1 ;
end;

end.
