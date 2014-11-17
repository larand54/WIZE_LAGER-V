unit uMemoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, siComp, siLngLnk;

type
  TfMemoForm = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    siLangLinked_fMemoForm: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fMemoForm: TfMemoForm;

implementation

{$R *.dfm}

end.
