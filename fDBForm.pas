// =============================================================================
//
//  FILE           :  fDBForm.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Base form from which nested forms are derived.
//                    Do not create instances of this form. Instead, define
//                    function-specific forms that inherit from this one
//                    and create instances of those.
//
//
//  NOTES          :  This unit was created by copying the unit of the same
//                    name in the original VidaSys project, and removing the
//                    code behind it to eliminate dependencies on the rest of
//                    the project. New code will be built up as required.
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//  2002.12.09  DMc       001     Copied from VidaSys project.
//
//                                Commented out all code behind the form.
//
//                                Added new code for DataValidate method to
//                                ensure no instances of this form are created.
//
//                                Removed empty methods & made them abstract.
//
//                                Reinstated FormClose event handler.
//
//                                Re-coded IsModified method to avoid checking
//                                all the datasets. Instead, maintain a flag
//                                FIsModified as changes are made/saved/cancelled.
//
//                                Added constructor; initialise FIsModified flag.
//
//
//  2002.12.10  DMc       002     Made FIsModified protected, not private.
//
//
//
//
//
//
//
unit fDBForm;

interface

uses
  ActnList,
  Classes,
  ComCtrls,
  Controls,
  ExtCtrls,
  Forms,
  ImgList,
  ToolWin,
  Windows, siComp, siLngLnk, System.Actions;

//  Db,
//  Dialogs,
//  dxCntner,
//  dxDBCtrl,
//  dxDBGrid,
//  dxTL,
//  Graphics,
//  Messages,
//  SdEngine,
//  SysUtils,
//  Variants,


type

  TfrmDBForm = class(TForm)

    tbarMain: TToolBar;
    ActionList_DBForm: TActionList;
    imglistActions: TImageList;
    atExit: TAction;
    paneToolbars: TPanel;
    toolbar_DBForm_1: TToolBar;
    toolbtn_DBForm_1: TToolButton;
    toolbtn_DBForm_2: TToolButton;
    toolbtn_DBForm_3: TToolButton;
    siLangLinked_frmDBForm: TsiLangLinked;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atExitExecute(Sender: TObject);

  private


//    procedure PostDataSet(DataSet: TDataSet);

  protected
//    FDataSets: Array [1..15] of TSDQuery;  // the first one is main dataset
//    FDataSetCount: Integer;

    FIsModified : Boolean;

    procedure ApplyModifiedEnter;     virtual; abstract;
    procedure ApplyModifiedExit;      virtual; abstract;
    procedure CancelModifiedEnter;    virtual; abstract;
    procedure CancelModifiedExit;     virtual; abstract;

    function  DataValidate : Boolean; virtual;

    function  ApplyModified: Boolean;
    function  IsModified: Boolean;
    procedure CancelModified;
//    function  SaveCurrent: Boolean;

//    procedure EditRecord(IDValue: Integer); virtual;

//    procedure AddRecord(Dataset: TDataset);
//    procedure DeleteRecord(DataSet: TDataSet);

  public

    constructor Create(AOwner : TComponent); override;

  end;


implementation

{$R *.dfm}

uses
  Dialogs;


//-------------------------------------------------------------------
//procedure TfrmDBForm.PostDataSet(DataSet: TDataSet);
//begin
//  with DataSet do
//    if Active then
//      if (State = dsEdit) or (State = dsInsert) then Post;
//end;



//-------------------------------------------------------------------
function TfrmDBForm.DataValidate: Boolean;
begin
  assert(False,'TfrmDBForm.DataValidate called.');
  {$IFDEF DEBUG}
  ShowMessage('LOGIC ERROR: TfrmDBForm Descendants MUST override DataValidate');
  {$ENDIF}
  // In descendants of this form, override this method.
  // If data validation is required, implement appropriate
  // checks there, and return True or False.
  // If no validation is required, include a comment to
  // that effect and return True.
  // Do not call inherited from your descendant class.
  Result := False;
end;




//-------------------------------------------------------------------
{ TODO 2 -oDuncan -cReinstate : TfrmDBForm.ApplyModified }
function TfrmDBForm.ApplyModified : Boolean;
//var
//  i: Integer;
//  SavePlace: TBookmark;
begin
//  Result := False;
//
//  for i:=1 to FDataSetCount do
//    PostDataset(FDataSets[i]);
//
//  if not DataValidate then Exit;
//
//  try
//    ApplyModifiedEnter;
//
//    for i:=1 to FDataSetCount do
//    begin
//      if FDataSets[i].Active and FDataSets[i].UpdatesPending then
//      begin
//        SavePlace := FDataSets[i].GetBookmark;
//        FDataSets[i].ApplyUpdates;
//        FDataSets[i].CommitUpdates;
//        if (SavePlace <> nil) and FDataSets[i].BookmarkValid(SavePlace) then
//        begin
//          FDataSets[i].GotoBookmark(SavePlace);
//          FDataSets[i].FreeBookmark(SavePlace);
//        end;
//      end;
//    end;
//
//    Result := True;
//  except
//    CancelModified;
//  end;
//  ApplyModifiedExit;
  Result := TRUE; // Keep compiler happy for now. Change this later.
end;

//-------------------------------------------------------------------
function TfrmDBForm.IsModified: Boolean;
begin
  Result := FIsModified;
end;

//-------------------------------------------------------------------
procedure TfrmDBForm.CancelModified;
//var
//  i: Integer;
begin
//  try
//    CancelModifiedEnter;
//    for i:=1 to FDataSetCount do
//      if FDataSets[i].Active then FDataSets[i].CancelUpdates;
//  finally
//    CancelModifiedExit;
//  end;
end;


//-------------------------------------------------------------------
procedure TfrmDBForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  wRet: Word;
begin

  if IsModified then begin

    wRet := MessageDlg('Spara ändringar?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);

    case wRet of

      mrYes    :  if not ApplyModified then
                    Action := caNone;

      mrNo     :   CancelModified;

      mrCancel :   Action := caNone;

      end;

    end;

end;

//-------------------------------------------------------------------
procedure TfrmDBForm.atExitExecute(Sender: TObject);
begin
  Close;
end;

constructor TfrmDBForm.Create(AOwner: TComponent);
begin
  inherited;
  FIsModified := FALSE;
end;

end.
