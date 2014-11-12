program StringInput;

uses
  EMemLeaks,
  EResLeaks,
  ESendMailSMAPI,
  EDialogWinAPIMSClassic,
  EDebugExports,
  EDebugJCL,
  EAppVCL,
  ExceptionLog7,
  Vcl.Forms,
  StrInput in 'StrInput.pas' {StrInputForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStrInputForm, StrInputForm);
  Application.Run;
end.
