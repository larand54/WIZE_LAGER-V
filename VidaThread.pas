unit VidaThread;

interface

uses
  Classes,
  DB,
  SysUtils;


Type

  //
  // Base class for LO Operation threads.
  // Do not create instances of this class.
  //
  TLO_OpThread = class(TThread)
    protected
      FLONo   : Integer;
      procedure DoTheBusiness; virtual; abstract;
      procedure HandleException(E : Exception); virtual;
    public
      constructor Create(LONo : Integer);
      procedure Execute; override;
    end;


  TLORemover = class(TLO_OpThread)
    protected
      procedure DoTheBusiness; override;
    end;

  TLOStatusSetter = class(TLO_OpThread)
    private
      FStatus : Integer;
    protected
    public
      constructor Create(LONo : Integer; Status : Integer);
      destructor Destroy; override;
      procedure  DoTheBusiness; override;
      property NewStatus : Integer read FStatus write FStatus;
    end;




  TcmdLoadThread = class(TThread)
    private
      FCodeFieldName    : string;
      FItems            : TStrings;
      FMeaningFieldname : string;
      FSQL              : TStrings;
    protected
    public
      Constructor Create(
        CodeFieldName    : string;
        MeaningFieldname : string;
        SQL              : TStrings
        );
      Destructor Destroy; override;
      procedure Execute;  override;
      property Items : TStrings read FItems write FItems;
    end;

implementation

uses
  dmcVidaOrder,
  dmcVidaSystem;


const
  SUSPENDED = TRUE;

{ TLOStatusSetter }

constructor TLOStatusSetter.Create(LONo: Integer; Status : Integer);
begin
  inherited Create(LONo);
  FLONo := LONo;
  FStatus := Status;
  Priority := tpIdle;
  FreeOnTerminate := FALSE;
end;

destructor TLOStatusSetter.Destroy;
begin
  FLONo := FLONo+1; // Just so there is something to put a breakpoint on
  inherited;
end;


procedure TLOStatusSetter.DoTheBusiness;
begin
  dmcOrder.SetLOStatus(FLONo, FStatus);
end;

{ TLO_OpThread }

constructor TLO_OpThread.Create(LONo : Integer);
begin
  inherited Create(SUSPENDED);
  FLONo := LONo;
  Priority := tpLowest;
  FreeOnTerminate := FALSE;
end;


procedure TLO_OpThread.Execute;
begin
  try
    FreeOnTerminate := TRUE;
    DoTheBusiness;
  except
    on E : Exception do
      HandleException(E);
    end;
end;

procedure TLO_OpThread.HandleException(E: Exception);
begin
  // Ignore the error.
  // Override this in descendents if action required.
end;

{ TLORemover }

procedure TLORemover.DoTheBusiness;
begin
  //grdLO.DataSource.DataSet.FieldByName('ShowInGrid').AsInteger := HIDE_FROM_LO_GRID;
  dmcOrder.RemoveFromView(FLONo);
end;

{ TcmdLoadThread }

constructor TcmdLoadThread.Create(CodeFieldName, MeaningFieldname: string; SQL: TStrings);
begin
  inherited Create(SUSPENDED);
  FCodeFieldName    := CodeFieldName;
  FItems            := TStringList.Create;
  FMeaningFieldname := MeaningFieldName;
  FSQL              := TStringList.Create;
  FSQL.AddStrings(SQL);
  Priority := tpLowest;
end;

destructor TcmdLoadThread.Destroy;
begin
  inherited;
  FItems.Clear;
  FItems.Free;

  FSQL.Clear;
  FSQL.Free;
end;

procedure TcmdLoadThread.Execute;
begin
  FreeOnTerminate := TRUE;
  dmcSystem.LoadCodedItems(
    FCodeFieldName,
    FMeaningFieldname,
    FSQL,
    FItems
    );
end;

end.
