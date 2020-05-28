unit ChartMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Connection, VclTee.TeeGDIPlus,
  VclTee.Series, VclTee.TeEngine, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.DBChart;

type
  TChart = class(TForm)
    DBChart1: TDBChart;
    Panel1: TPanel;
    Series2: THorizBarSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Chart: TChart;

implementation

{$R *.dfm}

procedure TChart.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Chart.Free;
end;

procedure TChart.FormCreate(Sender: TObject);
begin
  DT_connection.qryVaxrede.Close;
   DT_connection.qryVaxrede.SQL.Clear;
   DT_connection.qryVaxrede.SQL.Add
    ('select DISTINCT  s.SensorID, s.SetorSensor,sum (c.cvalor * s.Rede) as Potencia_W, '+
    'sum (c.cvalor * s.Rede) /1000 as KWh, '+
    's.rede from Sensor s, coleta c where s.SensorID = c.Sensor_SensorID and '+
    'c.data = c.data '+
    'group by s.SetorSensor');
     DT_connection.qryVaxrede.Open;


  end;

  end.
