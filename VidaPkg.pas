// =============================================================================
//
//  FILE           :  VidaPkg.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Defines non-visual data types (classes) for use in managing packages.
//
//
//
//
//  NOTES          :  Design by Lars Makiaho.
//
//
//
//
//  TO DO          :
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//  2002.12.13  DMc       001     Initial development
// -----------------------------------------------------------------------------
unit VidaPkg;

interface


uses
  Classes;


type
  String5    = string[5];
  String50   = string[50];
  String100  = string[100];



  TLoadPackageLength = class
  private

    FActualLengthMM  : Real;
    FFingerJoint     : Boolean;
    FPET             : Boolean;
    FProductLengthNo : integer;
    FNoOfPieces      : Integer;

    function getLengthTitle : String;

  protected


  public

    procedure OrderByActualLengthMM;
    function AddLength : integer; // Params ???

    property ActualLengthMM  : Real    read FActualLengthMM  write FActualLengthMM;
    property FingerJoint     : Boolean read FFingerJoint     write FFingerJoint;
    property LengthTitle     : String  read getLengthTitle;
    property NoOfPieces      : Integer read FNoOfPieces      write FNoOfPieces;
    property PET             : Boolean read FPET             write FPET;
    property ProductLengthNo : integer read FProductLengthNo write FProductLengthNo;

  end;



  TLoadPackage = class
  private
    FActualM3Net        : Double;
    FBarCodeID          : integer;
    FFJ                 : Boolean;
    FLengths            : TList;
    FLogicalInventory   : integer;
    FMiniBundle         : SmallInt;
    FOnSticks           : Boolean;
    FPackageHeight      : integer;
    FPackageNo          : integer;
    FPackageTypeNo      : integer;
    FPackageWidth       : integer;
    FPET                : Boolean;
    FProblemPackageLog  : String50;
    FProductDescription : String100; // SupplierShippingPlan.ProductDescription
    FProductNo          : integer;
    FShrinkWrap         : SmallInt;
    FStamp              : integer;
    FSupplierCode       : String5;
    FSupplierNo         : integer;
    FTotalm3Actual      : Real;
    FTotalNoOfPieces    : integer;
    FWrapType           : integer;
    FShipPlanObjNo      : Integer;
    FPackageLengthOK    : Boolean;
    FTotlinMActLen      : Real;
    FTotalM3Nominal     : Real;
    FMatch              : Boolean;

    function getNoOfPackages       : integer;
    function getTotalNoOfPieces    : integer;
    function getstrPackageNo       : String;
    function getstrTotalNoOfPieces : String;
    function getstrTotalm3Actual   : String;
    function getstrSupplierNo      : String;

    procedure setNoOfPackages(const Value: integer);
    function getLengthCount: Integer;
    function getLength(i: integer): TLoadPackageLength;
    function getstrTotalLinealMeterActualLength: string;
    function getstrTotalm3Nominal: string;

  protected
  public
    constructor Create;
    constructor CreateEx(
      AProductDisplayName : String;
      APackageNo          : integer;
      ATotalNoOfPieces    : integer;
      ATotalm3Actual      : Real;
      ASupplierCode       : String;
      AOnStids            : integer );
    destructor Destroy; override;

    procedure AddPackage; // Params ???

    procedure AddLength(LPL : TLoadPackageLength);

    function GetNextLoadDetailNo : integer;
    // check LoadPackageLength.SupplierShipPlanObjectNo is not -1
    function ValidatePackage : Boolean;

    property ActualM3Net         : Double    read FActualM3Net           write FActualM3Net;
    property BarCodeID           : integer   read FBarCodeID             write FBarCodeID;
    property FJ                  : Boolean   read FFJ                    write FFJ;
    property LengthCount         : Integer   read getLengthCount;
    property Lengths[i:integer]  : TLoadPackageLength read getLength;
    property LogicalInventory    : integer   read FLogicalInventory      write FLogicalInventory;
    property Match               : Boolean   read FMatch                 write FMatch;
    property MiniBundle          : SmallInt  read FMiniBundle            write FMiniBundle;
    property NoOfPackages        : integer   read getNoOfPackages        write setNoOfPackages;
    property OnSticks            : Boolean   read FOnSticks              write FOnSticks;
    property PackageHeight       : integer   read FPackageHeight         write FPackageHeight;
    property PackageLengthOK     : Boolean   read FPackageLengthOK       write FPackageLengthOK;
    property PackageNo           : integer   read FPackageNo             write FPackageNo;
    property PackageTypeNo       : integer   read FPackageTypeNo         write FPackageTypeNo;
    property PackageWidth        : integer   read FPackageWidth          write FPackageWidth;
    property PET                 : Boolean   read FPET                   write FPET;
    property ProblemPackageLog   : String50  read FProblemPackageLog     write FProblemPackageLog;
    property ProductDescription  : String100 read FProductDescription    write FProductDescription;
    property ProductNo           : integer   read FProductNo             write FProductNo;
    property ShipPlanObjNo       : Integer   read FShipPlanObjNo         write FShipPlanObjNo;
    property ShrinkWrap          : SmallInt  read FShrinkWrap            write FShrinkWrap;
    property Stamp               : integer   read FStamp                 write FStamp;
    property strTotalLinealMeterActualLength : string read getstrTotalLinealMeterActualLength;
    property strTotalm3Nominal   : string    read getstrTotalm3Nominal;
    property strTotalNoOfPieces  : String    read getstrTotalNoOfPieces;
    property strPackageNo        : String    read getstrPackageNo;
    property strSupplierNo       : String    read getstrSupplierNo;
    property strTotalm3Actual    : String    read getstrTotalm3Actual;
    property SupplierNo          : integer   read FSupplierNo            write FSupplierNo;
    property SupplierCode        : String5   read FSupplierCode          write FSupplierCode;
    property TotalNoOfPieces     : integer   read getTotalNoOfPieces     write FTotalNoOfPieces;
    property WrapType            : integer   read FWrapType              write FWrapType;
    property TotalLinMeterActlen : Real      read FTotlinMActLen         write FTotlinMActLen;
    property Totalm3Actual       : Real      read FTotalm3Actual         write FTotalm3Actual;
    property TotalM3Nominal      : Real      read FTotalM3Nominal        write FTotalM3Nominal;
  end;





  TPackageGrid_LengthColumn = class
  private
    FActualLengthMM   : Real;
    FActualM3Net      : Real;
    FLoadDetailNo     : integer;
    FLoadNo           : integer;
    FNoOfPieces       : integer;
    FProblemLengthLog : String50;
    FProductLengthNo  : integer;
    FSSPObjectNo      : integer;
  protected
  public

    procedure AddLength;
    function ValidateLength           : Boolean;
    property ActualLengthMM           : Real     read FActualLengthMM   write FActualLengthMM;
    property ActualM3Net              : Real     read FActualM3Net      write FActualM3Net;
    property LoadDetailNo             : integer  read FLoadDetailNo     write FLoadDetailNo;
    property LoadNo                   : integer  read FLoadNo           write FLoadNo;
    property NoOfPieces               : integer  read FNoOfPieces       write FNoOfPieces;
    property ProblemLengthLog         : String50 read FProblemLengthLog write FProblemLengthLog;
    property ProductLengthNo          : integer  read FProductLengthNo  write FProductLengthNo;
    property SupplierShipPlanObjectNo : integer  read FSSPObjectNo      write FSSPObjectNo;

  end;






implementation

uses
  SysUtils,
  VidaUtils;


{ TLoadPackage }
procedure TLoadPackage.AddLength(LPL : TLoadPackageLength);
begin
  FLengths.Add(LPL);
end;

procedure TLoadPackage.AddPackage;
begin
end;


constructor TLoadPackage.Create;
begin
end;


constructor TLoadPackage.CreateEx(
  AProductDisplayName : String;
  APackageNo          : integer;
  ATotalNoOfPieces    : integer;
  ATotalm3Actual      : Real;
  ASupplierCode       : String;
  AOnStids            : integer);
begin
  inherited Create;

  FLengths := TList.Create;

  FMatch := TRUE;

  ProductDescription := AProductDisplayName;
  PackageNo          := APackageNo;
  TotalNoOfPieces    := ATotalNoOfPieces;
  Totalm3Actual      := ATotalm3Actual;
  SupplierCode       := Trim(ASupplierCode);
  OnSticks           := AOnStids > 0;

  PackageLengthOK    := FALSE;

end;




destructor TLoadPackage.Destroy;
begin
  while FLengths.Count > 0 do begin
    TLoadPackageLength(FLengths[0]).free;
    FLengths.Delete(0);
    end;
  inherited;
end;

function TLoadPackage.getLength(i: integer): TLoadPackageLength;
begin
  Result := TLoadPackageLength(FLengths[i])
end;

function TLoadPackage.getLengthCount: Integer;
begin
  Result := FLengths.Count;
end;

function TLoadPackage.GetNextLoadDetailNo : integer;
begin
  Result := 0 // Stop compiler complaining. Re-work later.
end;


function TLoadPackage.getNoOfPackages : integer;
begin
  Result := 0 // Stop compiler complaining. Re-work later.
end;


function TLoadPackage.getstrPackageNo : String;
begin
  Result := IntToStr(PackageNo)
end;


function TLoadPackage.getstrSupplierNo : String;
begin
  Result := IntToStr(SupplierNo)
end;


function TLoadPackage.getstrTotalLinealMeterActualLength: string;
begin
  Result := Format('%4.4f', [TotalLinMeterActlen])
end;

function TLoadPackage.getstrTotalm3Actual : String;
begin
  Result := Format('%4.4f', [Totalm3Actual])
end;


function TLoadPackage.getstrTotalm3Nominal: string;
begin
  Result := Format('%4.4f', [Totalm3Nominal])
end;

function TLoadPackage.getstrTotalNoOfPieces : String;
begin
  Result := IntToStr(TotalNoOfPieces)
end;


function TLoadPackage.getTotalNoOfPieces : integer;
begin
  Result := FTotalNoOfPieces;
end;




procedure TLoadPackage.setNoOfPackages(const Value: integer);
begin
end;


function TLoadPackage.ValidatePackage : Boolean;
begin
  Result := true // Stop compiler complaining. Re-work later.
end;


{ TPackageGrid_LengthColumn }
procedure TPackageGrid_LengthColumn.AddLength;
begin
end;


function TPackageGrid_LengthColumn.ValidateLength : Boolean;
begin
  Result := true // Stop compiler complaining. Re-work later.
end;


{ TLoadPackageLength }
function TLoadPackageLength.AddLength : integer;
begin
  Result := 0 // Stop compiler complaining. Re-work later.
end;


function TLoadPackageLength.getLengthTitle : String;
begin
  Result := LengthColTitle(ActualLengthMM,PET,FingerJoint);
//  Result := Format('%5.1f', [ActualLengthMM]);
//  if FingerJoint then
//  begin
//    Result := Result + ' F';
//    if PET then
//      Result := Result + 'P'
//  end
//  else
//    if PET then
//      Result := Result + ' P'
end;


procedure TLoadPackageLength.OrderByActualLengthMM;
begin
end;


end.
