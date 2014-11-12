unit uAnalyzeVerkDeliveries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, rsRadarCube, rsGrid, rsOLAPCube, FMTBcd, DB, DBClient,
  Provider, SqlExpr;

type
  TfAnalyzeVerkDeliveries = class(TForm)
    OLAPCube1: TOLAPCube;
    OLAPGrid1: TOLAPGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    sq_LoadData: TSQLQuery;
    dsp_LoadData: TDataSetProvider;
    cds_LoadData: TClientDataSet;
    cds_LoadDataProductDisplayName: TStringField;
    cds_LoadDataActualLengthMM: TFloatField;
    cds_LoadDataPrice: TFloatField;
    cds_LoadDataSubsum: TFloatField;
    cds_LoadDataNM3: TFloatField;
    cds_LoadDataLoadedDate: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fAnalyzeVerkDeliveries: TfAnalyzeVerkDeliveries;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TfAnalyzeVerkDeliveries.FormCreate(Sender: TObject);
begin
 cds_LoadData.Active  := True ;
 OLAPCube1.Active     := True ;
end;

procedure TfAnalyzeVerkDeliveries.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 OLAPCube1.Active     := False ;
 cds_LoadData.Active  := False ;
end;

end.
