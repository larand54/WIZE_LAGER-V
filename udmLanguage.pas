unit udmLanguage;

interface

uses
  System.SysUtils, System.Classes, siComp;

type
  TdmLanguage = class(TDataModule)
    siLang1: TsiLang;
    siLangDispatcher1: TsiLangDispatcher;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLanguage: TdmLanguage;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses dmsVidaSystem;

procedure TdmLanguage.DataModuleCreate(Sender: TObject);
var
  Path : String;
begin
  path := ExtractFilePath(ParamStr(0));
  path := dmsSystem.GetLangPath();
  assert(path <> '',siLang1.GetTextOrDefault('IDS_0' (* 'Path to languagefiles not defined in database' *) ));
  if path[path.Length] <> '\' then
    siLangDispatcher1.FileName := Path + '\' + siLangDispatcher1.FileName
  else
    siLangDispatcher1.FileName := Path + siLangDispatcher1.FileName;
end;

end.
