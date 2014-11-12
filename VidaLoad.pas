// =============================================================================
//
//  FILE           :  VidaLoad.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Defines a class, TVidaLoad, used to transport values between
//                    the Load Entry form and the data modules, when updating the
//                    database. This is a relatively complex form & data structure
//                    so using a form to help with transaction management and
//                    concurrency control.
//
//
//  NOTES          :
//
//
//
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//  2002.12.19  DMc       001     Initial development
//
// -----------------------------------------------------------------------------
//
//
//
//
unit VidaLoad;

interface

uses
  Classes,
  VidaType;

Type

  TRemovePkgProc = procedure(
          Sender       : TObject;
    const PkgNo        : Integer;
    const SupplierCode : string;
    const UserID       : Integer ) of object;

  TPackageListItem = class
    private

      FOnSticks      : Boolean;
      FPackageOK     : Boolean;
      FPackageNo     : Integer;
      FPackageLog    : string50;
      FNoOfPackages  : Integer;
      FPackageTypeNo : Integer;
      FSupplierCode  : String3;
      FLoadDetailNo  : Integer;
      FModifiedUser  : Integer;
      FCreatedUser   : Integer;
      FDateCreated   : TDateTime;
      FLONo          : Integer;
      FLOLine        : Integer;
//      FProdLenNo: Integer;

    protected

    public

      property LoadDetailNo : Integer read FLoadDetailNo write FLoadDetailNo;

      // Changable data from Packages grid on Load Entry form
      property OnSticks      : Boolean  read FOnSticks      write FOnSticks;
      property NoOfPackages  : Integer  read FNoOfPackages  write FNoOfPackages;
      property PackageNo     : Integer  read FPackageNo     write FPackageNo;
      property PackageLog    : string50 read FPackageLog    write FPackageLog;
      property PackageOK     : Boolean  read FPackageOK     write FPackageOK;
      property PackageTypeNo : Integer  read FPackageTypeNo write FPackageTypeNo;
      property SupplierCode  : String3  read FSupplierCode  write FSupplierCode;

      // The LO Line this is being delivered against is set in validation routine
      property LONo            : Integer  read FLONo          write FLONo;
      property LOLine          : Integer  read FLOLine        write FLOLine;

      // General admin stuff
      property CreatedUser  : Integer   read FCreatedUser   write FCreatedUser;
      property ModifiedUser : Integer   read FModifiedUser  write FModifiedUser;
      property DateCreated  : TDateTime read FDateCreated   write FDateCreated;

    end;



  TLOListItem = class
    private
      FMiniTies     : Boolean;
      FShrinkWrap   : Boolean;
      FSizeH        : Integer;
      FStamp        : Integer;
      FSizeB        : Integer;
      FBarCode      : Integer;
      FLONo         : Integer;
      FPaperWrap    : Integer;
      FDestination  : string;
      FETD          : string;
      FShipper      : string;
      FReadyDate    : string;
      FVessel       : String;
      FModifiedUser : Integer;
      FCreatedUser  : Integer;
      FDateCreated  : TDateTime;

    protected

    public

      // Key to line in "Load Orders to ship against" grid on Load Entry form
      property LONo  : Integer     read FLONo  write FLONo;

      // Other data to appear in grdLOTSA line
      property Destination : string read FDestination write FDestination;
      property ETD         : string read FETD         write FETD;
      property ReadyDate   : string read FReadyDate   write FReadyDate;
      property Shipper     : string read FShipper     write FShipper;
      property Vessel      : String read FVessel      write FVessel;

      // Product instruction data appearing on panel below "packages" header
      property BarCode    : Integer  read FBarCode    write FBarCode;
      property MiniTies    : Boolean read FMiniTies   write FMiniTies;
      property PaperWrap   : Integer read FPaperWrap  write FPaperWrap;
      property ShrinkWrap  : Boolean read FShrinkWrap write FShrinkWrap;
      property SizeB       : Integer read FSizeB      write FSizeB;
      property SizeH       : Integer read FSizeH      write FSizeH;
      property Stamp       : Integer read FStamp      write FStamp;

      // General admin stuff
      property CreatedUser  : Integer   read FCreatedUser  write FCreatedUser;
      property ModifiedUser : Integer   read FModifiedUser write FModifiedUser;
      property DateCreated  : TDateTime read FDateCreated  write FDateCreated;

    end;




  TVidaLoad = class

    private

      FConfirmed        : Boolean;
      FCreatedUser      : Integer;
      FCustomerNo       : Integer;
      FDateCreated      : TDateTime;
      FFS               : string;
      FInvoiced         : Boolean;
      FLoadDate         : TDateTime;
      FLoadID           : string50;
      FLoadNo           : Integer;
      FLOs              : TList;
      FModifiedUser     : Integer;
      FOnPkgNotRetained : TRemovePkgProc;
      FPackages         : TList;
      FPkgEntry         : SmallInt;
      FShipFrom         : Integer;
      FShipper          : Integer;
      FShipTo           : Integer;
      FStatus           : Integer;
      FTransfer         : Integer;
      FNotering         : Variant ;

    protected

    public

      constructor Create;
      destructor destroy; override;

      procedure Clear;

      property Confirmed : Boolean   read FConfirmed write FConfirmed;
      property Invoiced  : Boolean   read FInvoiced  write FInvoiced;

      procedure SetStatusOfNonRetainedPkgs( Retained : TList; UserID : Integer );

      property Customer : Integer read FCustomerNo write FCustomerNo;

      property CreatedUser  : Integer   read FCreatedUser  write FCreatedUser;
      property DateCreated  : TDateTime read FDateCreated  write FDateCreated;
      property ModifiedUser : Integer   read FModifiedUser write FModifiedUser;

      // The Single-field entries in main panel on Load Entry form
      property FS                 : string    read FFS       write FFS; // Folje Seded
      property LoadDate           : TDateTime read FLoadDate write FLoadDate;
      property LoadID             : string50  read FLoadID   write FLoadID;
      property Notering           : Variant   read FNotering write FNotering;
      property LoadNo             : Integer   read FLoadNo   write FLoadNo;
      property TransferInventory  : Integer   read FTransfer write FTransfer;
      property PackageEntryOption : SmallInt  read FPkgEntry write FPkgEntry;
      property ShipFrom           : Integer   read FShipFrom write FShipFrom;
      property Shipper            : Integer   read FShipper  write FShipper;
      property ShipTo             : Integer   read FShipTo   write FShipTo;
      property Status             : Integer   read FStatus   write FStatus;


      // Entries in the "Load Orders to ship against" grid on Load Entry form.
      property LOs      : TList       read FLOs      write FLOs;

      // Entries in the Packages grid on Load Entry form.
      property Packages : TList       read FPackages write FPackages;

      // Function to compare database values at time of save with database values
      // originally retrieved, so we can spot concurrency problems.
      function Equals( Other : TVidaLoad) : Boolean;

      property OnPkgNotRetained : TRemovePkgProc read FOnPkgNotRetained write FOnPkgNotRetained;

    end;


  TLoadEntryFormData = class
    private

      FOriginal: TVidaLoad;
      FModified: TVidaLoad;

      FHaveSaved : Boolean;  // Flag to say whether we have saved this load data at least once
                             // in this session. This is used to determine messages to give to
                             // user in case of concurrency problems. IE Whether they are told
                             // the data has changed since they loaded the data, or since they
                             // last saved it.

      FLoadNo: Integer;
      FSupplier: Integer;
    procedure SetLoadNo(const Value: Integer);

    protected

    public

      constructor Create;
      destructor destroy; override;

      { TODO : Add method to copy Modified to original after saving }

      property LoadNo    : Integer   read FLoadNo    write SetLoadNo;

      property Original  : TVidaLoad read FOriginal  write FOriginal;
      property Modified  : TVidaLoad read FModified  write FModified;

      property Supplier  : Integer   read FSupplier  write FSupplier;

    end;

implementation

uses
  VidaConst;

{ TLoadEntryFormData }

constructor TLoadEntryFormData.Create;
begin
  inherited;
  FLoadNo := NEW_ENTRY;
  FOriginal := TVidaLoad.create;
  FModified := TVidaLoad.create;
  FHaveSaved := FALSE;
end;

destructor TLoadEntryFormData.destroy;
begin
  FOriginal.Free;
  FModified.Free;
end;

procedure TLoadEntryFormData.SetLoadNo(const Value: Integer);
begin
  FLoadNo := Value;
  if self.FOriginal <> nil then
    self.FOriginal.LoadNo := Value;
  if self.FModified <> nil then
    self.FModified.LoadNo := Value;
end;

{ TVidaLoad }

procedure TVidaLoad.Clear;
begin

  Shipper  := NO_SELECTION;
  ShipFrom := NO_SELECTION;
  ShipTo   := NO_SELECTION;
  LoadDate := NO_SELECTION;
  LoadID   := '';
  Status   := NO_SELECTION;
  Notering := '' ;

  while LOs.Count > 0 do begin
    TLOListItem(LOs[0]).free;
    LOs.Delete(0);
    end;

  while Packages.Count > 0 do begin
    TPackageListItem(Packages[0]).free;
    Packages.Delete(0);
    end;


end;

constructor TVidaLoad.Create;
begin
  inherited;
  FConfirmed := FALSE;
  FLOs       := TList.Create;
  FPackages  := TList.Create;
  FLoadNo    := NEW_ENTRY;
end;

destructor TVidaLoad.destroy;
begin
  Clear;
  inherited;
end;

function TVidaLoad.Equals(Other: TVidaLoad): Boolean;
begin
  Result := TRUE;  { TODO : TVidaLoad Equals method implementation }
end;

procedure TVidaLoad.SetStatusOfNonRetainedPkgs(Retained: TList; UserID : Integer);
var
  iPkgOriginal : Integer;
  iPkgRetained : Integer;
  OriginalPkgNo : Integer;
  RetainedPkgNo : Integer;
  OriginalIsRetained : Boolean;
begin
  if assigned(FOnPkgNotRetained) then
    for iPkgOriginal := 0 to packages.Count - 1 do begin
      OriginalPkgNo := TPackageListItem(Packages[iPkgOriginal]).PackageNo;
      OriginalIsRetained := FALSE;
      for iPkgRetained := 0 to Retained.Count - 1 do begin
        RetainedPkgNo := TPackageListItem(Retained[iPkgRetained]).PackageNo;
        if OriginalPkgNo = RetainedPkgNo then begin
          OriginalIsRetained := TRUE;
          Break;
          end;
        end;
      if not OriginalIsRetained then
        FOnPkgNotRetained(
          Self,
          OriginalPkgNo,
          TPackageListItem(Packages[iPkgOriginal]).SupplierCode,
          UserID
          );
      end;
end;

end.
