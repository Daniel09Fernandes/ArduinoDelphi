unit CadSensor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Connection, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons,
  EquipamentosSetorSensor, CadTipoEquip;

type
  TCSensor = class(TForm)
    DBGrid1: TDBGrid;
    DataSourceSensor: TDataSource;
    CBRede: TComboBox;
    EdSetor: TEdit;
    EdSensor: TEdit;
    Setor: TLabel;
    Tensão: TLabel;
    Sensor: TLabel;
    Gravar: TBitBtn;
    btnCadEquip: TBitBtn;
    btnCadTipoEquip: TBitBtn;
    Cadastros: TLabel;
    Pan: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GravarClick(Sender: TObject);
    procedure btnCadEquipClick(Sender: TObject);
    procedure btnCadTipoEquipClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSensor: TCSensor;

implementation

{$R *.dfm}

procedure TCSensor.btnCadEquipClick(Sender: TObject);
begin
  CadEquip := TCadEquip.Create(Application);
  CadEquip.ShowModal;
end;

procedure TCSensor.btnCadTipoEquipClick(Sender: TObject);
begin
  TipoEquip := TTipoEquip.Create(Application);
  TipoEquip.ShowModal;
end;

procedure TCSensor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Fecha a conexão ao fechar o form
  DT_connection.FDcon.Connected := false;
  DT_connection.qrySensor.active := false;
  CSensor.Free;
  DT_connection.qrySensor2.active := false;
  DT_connection.qryEquip.active := false;
  DT_connection.qryTipoEquip.active := false;
  CadEquip.Free;
  DT_connection.qryTipoEquip.Active := true;
  TipoEquip.Free;
end;

procedure TCSensor.FormCreate(Sender: TObject);
begin
  // Abre a conexão ao fechar o form
  DT_connection.FDcon.Connected := true;
  DT_connection.qrySensor.active := true;
end;

procedure TCSensor.GravarClick(Sender: TObject);
begin
  DT_connection.qrySensor.Close;
  DT_connection.qrySensor.SQL.Clear;
  DT_connection.qrySensor.SQL.Add
    ('Insert into Sensor (NomeSensor,SetorSensor,Rede)' + 'Values(' +
    QuotedStr(EdSetor.Text) + ',' + QuotedStr(EdSensor.Text) + ',' +
    QuotedStr(CBRede.Text) + ')');
  DT_connection.qrySensor.ExecSQL;
  DT_connection.qrySensor.Close;
  DT_connection.qrySensor.SQL.Clear;
  DT_connection.qrySensor.SQL.Add
    ('Select SetorSensor, NomeSensor,Rede from Sensor');
  DT_connection.qrySensor.Open;

end;

end.
