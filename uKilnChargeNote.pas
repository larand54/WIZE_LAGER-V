unit uKilnChargeNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, StdCtrls, Buttons, ExtCtrls;

type
  TfKilnChargeNote = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    reNote: TcxDBRichEdit;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fKilnChargeNote: TfKilnChargeNote;

implementation

uses dmc_DryKiln;

{$R *.dfm}

end.
