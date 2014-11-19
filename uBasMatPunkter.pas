unit uBasMatPunkter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid ;

type
  TfBasMatPunkter = class(TForm)
    Panel1: TPanel;
    bbInsert: TBitBtn;
    bbRemove: TBitBtn;
    bbCancelRow: TBitBtn;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    grdBasMPDBTableView1: TcxGridDBTableView;
    grdBasMPLevel1: TcxGridLevel;
    grdBasMP: TcxGrid;
    grdBasMPDBTableView1RegPointNo: TcxGridDBColumn;
    grdBasMPDBTableView1RegPointName: TcxGridDBColumn;
    grdBasMPDBTableView1CreatedUser: TcxGridDBColumn;
    grdBasMPDBTableView1ModifiedUser: TcxGridDBColumn;
    grdBasMPDBTableView1DateCreated: TcxGridDBColumn;
    grdBasMPDBTableView1SequenceNo: TcxGridDBColumn;
    procedure bbInsertClick(Sender: TObject);
    procedure bbRemoveClick(Sender: TObject);
    procedure bbCancelRowClick(Sender: TObject);
    procedure bbApplyChangesClick(Sender: TObject);
    procedure bbCancelChangesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fBasMatPunkter: TfBasMatPunkter;

implementation

uses dmsVidaContact;

{$R *.dfm}

procedure TfBasMatPunkter.bbInsertClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_RegPoints.State in [dsInsert, dsEdit] then
  cds_RegPoints.Post ;
  cds_RegPoints.Insert ;
 End ;

end;

procedure TfBasMatPunkter.bbRemoveClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_RegPoints.Delete ;
 End ;
end;

procedure TfBasMatPunkter.bbCancelRowClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_RegPoints.Cancel ;
 End ;
end;

procedure TfBasMatPunkter.bbApplyChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_RegPoints.State in [dsInsert, dsEdit] then
  cds_RegPoints.Post ;
  if cds_RegPoints.ChangeCount > 0 then
   cds_RegPoints.ApplyUpdates(0) ;
 End ;
end;

procedure TfBasMatPunkter.bbCancelChangesClick(Sender: TObject);
begin
 With dmsContact do
 Begin
  if cds_RegPoints.State in [dsInsert, dsEdit] then
  cds_RegPoints.Post ;
  if cds_RegPoints.ChangeCount > 0 then
   cds_RegPoints.CancelUpdates ;
 End ;
end;

procedure TfBasMatPunkter.FormCreate(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_RegPoints.Active:= True ;
 End ;
end;

procedure TfBasMatPunkter.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmsContact do
 Begin
  cds_RegPoints.Active:= False ;
 End ;
 CanClose:= True ;
end;

end.
