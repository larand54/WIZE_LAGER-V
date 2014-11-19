unit uInvLogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, siComp, siLngLnk;

type
  TfInvLogs = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    siLangLinked_fInvLogs: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fInvLogs: TfInvLogs;

implementation

{$R *.dfm}

end.
