unit uUserPreference;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxShellBrowserDialog, iniFiles  ;

type
  TfUserPreference = class(TForm)
    Label6: TLabel;
    eUserDir: TEdit;
    bSelectFolder: TBitBtn;
    eExcelDir: TEdit;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    eLODir: TEdit;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    BitBtn4: TBitBtn;
    Label2: TLabel;
    procedure bSelectFolderClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Class procedure Execute ;
  end;

//var fUserPreference: TfUserPreference;

implementation

uses dmsDataConn, VidaUser;

{$R *.dfm}

Class procedure TfUserPreference.Execute ;
var
  iniUserStore : TIniFile;
Begin
 With Self.Create(nil) do begin
  try
   iniUserStore := TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI' );
   Try
    Caption:= 'User Preference / '+ThisUser.UserName ;
    eUserDir.Text:= iniUserStore.ReadString ('Setup', 'UserDir', 'H:\VIS\MALL');
    eExcelDir.Text:= iniUserStore.ReadString ('Setup', 'ExcelDir', 'H:\VIS\TEMP');
    eLODir.Text:= iniUserStore.ReadString ('Setup', 'LODir', 'H:\VIS\MALL');
    if ShowModal = mrOK then
    Begin
     iniUserStore.WriteString('Setup','UserDir', eUserDir.Text);
     iniUserStore.WriteString('Setup','ExcelDir', eExcelDir.Text);
     iniUserStore.WriteString('Setup','LODir', eLODir.Text);
    End ;
   Finally
    iniUserStore.Free ;
   End ;
  Finally
   Free ;
  End
 End ;
End ;

procedure TfUserPreference.bSelectFolderClick(Sender: TObject);
begin
 if cxShellBrowserDialog1.Execute then
  eUserDir.Text:= cxShellBrowserDialog1.Path ;
end;

procedure TfUserPreference.BitBtn3Click(Sender: TObject);
begin
 if cxShellBrowserDialog1.Execute then
  eExcelDir.Text:= cxShellBrowserDialog1.Path ;
end;

procedure TfUserPreference.BitBtn4Click(Sender: TObject);
begin
 if cxShellBrowserDialog1.Execute then
  eLODir.Text:= cxShellBrowserDialog1.Path ;
end;

procedure TfUserPreference.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if Copy(eUserDir.Text,Length(eUserDir.Text),1) <> '\' then
  eUserDir.Text:= eUserDir.Text+'\' ;
 if Copy(eExcelDir.Text,Length(eExcelDir.Text),1) <> '\' then
  eExcelDir.Text:= eExcelDir.Text+'\' ;
 if Copy(eLODir.Text,Length(eLODir.Text),1) <> '\' then
  eLODir.Text:= eLODir.Text+'\' ;
 CanClose:= True ;
end;

end.
