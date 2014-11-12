unit PrintUnit;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHYModuleManager, Vcl.StdCtrls,
  Vcl.ExtCtrls, uHYIntf, Vcl.ActnList;


{set_Print(report_Name: string;
rpt_FilePath: string;
report_Option: string; 0:preview, 1:print direct, must select print_type, 2: pdf
print_Type: string; 0: default printer, 1:selected printer
store_Path: string; pdf path
pdf_Name: string;
safeArray: PVarArray; parameter
server_Name: string;
database_Name: string;
userID: string; //for example sa
password: string); }

procedure set_Print(report_Name: string; rpt_FilePath: string; report_Option: string; print_Type: string;
          store_Path: string; pdf_Name: string; safeArray: PVarArray; server_Name: string; database_Name: string; userID: string; password: string);

implementation

uses CR_Plugin_Import;

procedure set_Print;
  var
//  mainObject: TForm1;
  fVisualizer : IHYVisualPlugin;
  HYModuleManager2 : THYModuleManager;

  begin
     HYModuleManager2 := THYModuleManager.Create(HYModuleManager2);
     HYModuleManager2.ResolveInterfacesToOwner := False;

      if HYModuleManager2.ModuleCount = 0 then
         begin
             HYModuleManager2.LoadModule(ExtractFilePath(Application.ExeName)+'CR_Plugin.dll');
             HYModuleManager2.CreateVisualPlugin('CrystalReport_Plugin.CR_Plugin', fVisualizer);
         end;
              with (fVisualizer as PluginInterface) do begin
                set_Print(report_Name, rpt_FilePath, report_Option, print_Type, store_Path, pdf_Name, safeArray, server_Name, database_Name, userID, password);
              end;

    fVisualizer := nil;
  end;


end.
