unit VidaPkg2;

interface

uses
  Classes,
  VidaType;

Type

  TPackageGridLengthColHeader = class
    private
    FFingerJoint: Boolean;
    FPET: Boolean;
    FProductLengthNo: integer;
    FActualLengthMM: Real;
    function getLengthTitle: String;

    protected

    public
      constructor Create;
      destructor destroy; override;

      property ActualLengthMM  : Real    read FActualLengthMM  write FActualLengthMM;
      property FingerJoint     : Boolean read FFingerJoint     write FFingerJoint;
      property LengthTitle     : String  read getLengthTitle;
      property PET             : Boolean read FPET             write FPET;
      property ProductLengthNo : integer read FProductLengthNo write FProductLengthNo;

    end;


  TPackageGridLengthCell = class
    private
      FNoOfPieces: Integer;
      FLengthData: TPackageGridLengthColHeader;

    protected

    public
      constructor Create;
      destructor destroy; override;

      property NoOfPieces : Integer                     read FNoOfPieces write FNoOfPieces;
      property LengthData : TPackageGridLengthColHeader read FLengthData write FLengthData;

    end;


  TPackageGridRowHeader = class
    private

      FActualM3         : Double;
      FBarCodeID        : Integer;
      FGradeStamp       : Integer;
      FLogInvPointNo    : Integer;
      FMinibundled      : Boolean;
      FOnSticks         : Boolean;
      FPackageNo        : Integer;
      FTotalNoOfPieces  : Integer;
      FProductNo        : Integer;
      FTotalActM3       : Real;
      FPackageHeight    : Integer;
      FPackageTypeNo    : Integer;
      FPackageWidth     : Integer;
      FProductDesc      : string;
      FShippingPlanNo   : Integer;
      FShipPlanObjectNo : Integer;
      FShrinkWrap       : Boolean;
      FSupplierCode     : String3;
      FSupplierNo       : Integer;
      FWrapType         : Integer;

    protected

    public
      constructor Create;
      destructor destroy; override;
      property ActualM3         : Double  read FActualM3         write FActualM3;
      property BarCodeID        : Integer read FBarCodeID        write FBarCodeID;
      property GradeStamp       : Integer read FGradeStamp       write FGradeStamp;
      property LogInvPointNo    : Integer read FLogInvPointNo    write FLogInvPointNo;
      property Minibundled      : Boolean read FMinibundled      write FMinibundled;
      property OnSticks         : Boolean read FOnSticks         write FOnSticks;
      property PackageHeight    : Integer read FPackageHeight    write FPackageHeight;
      property PackageWidth     : Integer read FPackageWidth     write FPackageWidth;
      property PackageNo        : Integer read FPackageNo        write FPackageNo;
      property PackageTypeNo    : Integer read FPackageTypeNo    write FPackageTypeNo;
      property ProductDesc      : string  read FProductDesc      write FProductDesc;
      property ProductNo        : Integer read FProductNo        write FProductNo;
      property ShippingPlanNo   : Integer read FShippingPlanNo   write FShippingPlanNo;
      property ShipPlanObjectNo : Integer read FShipPlanObjectNo write FShipPlanObjectNo;
      property ShrinkWrap       : Boolean read FShrinkWrap       write FShrinkWrap;
      property SupplierCode     : String3 read FSupplierCode     write FSupplierCode;
      property SupplierNo       : Integer read FSupplierNo       write FSupplierNo;
      property TotalNoOfPieces  : Integer read FTotalNoOfPieces  write FTotalNoOfPieces;
      property TotalActM3       : Real    read FTotalActM3       write FTotalActM3;
      property WrapType         : Integer read FWrapType         write FWrapType;
    end;


  TPackageDataToSave = class
    private
      FLengths: TList;
      FHeader: TPackageGridRowHeader;
    protected
    public
      Constructor Create;
      Destructor Destroy; override;
      property Header  : TPackageGridRowHeader read FHeader  write FHeader;
      property Lengths : TList                 read FLengths write FLengths;
    end;

implementation

uses
  VidaUtils;

{ TPackageGridLengthCell }

constructor TPackageGridLengthCell.Create;
begin
  inherited;

end;

destructor TPackageGridLengthCell.destroy;
begin

  inherited;
end;

{ TPackageGridLengthColHeader }

constructor TPackageGridLengthColHeader.Create;
begin
  inherited;

end;

destructor TPackageGridLengthColHeader.destroy;
begin

  inherited;
end;

function TPackageGridLengthColHeader.getLengthTitle: String;
begin
  Result := LengthColTitle(FActualLengthMM,FPET,FFingerJoint);
end;

{ TPackageGridRowHeader }

constructor TPackageGridRowHeader.Create;
begin
  inherited;

end;

destructor TPackageGridRowHeader.destroy;
begin

  inherited;
end;

{ TPackageDataToSave }

constructor TPackageDataToSave.Create;
begin
  inherited;
  Lengths := TList.Create;
end;

destructor TPackageDataToSave.Destroy;
begin
  Lengths.Free;
  inherited;
end;

end.
