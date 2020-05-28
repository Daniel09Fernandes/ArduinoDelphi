unit EquipamentosSetorSensor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Connection, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TCadEquip = class(TForm)
    dtsSensor: TDataSource;
    DBLCBSetor: TDBLookupComboBox;
    dtsEquip: TDataSource;
    DBGrid1: TDBGrid;
    EdtDesc: TDBEdit;
    edtEspec: TDBMemo;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    edtQTDE: TDBEdit;
    EdtCodigo: TDBEdit;
    dstTipoEquip: TDataSource;
    DBLCBTipoEquip: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Navega��o: TLabel;
    Panel3: TPanel;
    edtPesquisa: TEdit;
    RBTipo: TRadioButton;
    RBSetor: TRadioButton;
    RBDesc: TRadioButton;
    btnPesquisa: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadEquip: TCadEquip;

implementation

{$R *.dfm}

procedure TCadEquip.btnPesquisaClick(Sender: TObject);

begin
  if RBTipo.Checked then
  begin
    DT_connection.qryEquip.Close;
    DT_connection.qryEquip.SQL.Clear;
    DT_connection.qryEquip.SQL.Add
      ('Select * from '+
       ' EquipamentosSetor where TipoEquipamento_idTipoEquipamento like '+QuotedStr('%'+edtPesquisa.Text+'%'));
    DT_connection.qryEquip.Open;

  end;
  if RBSetor.Checked then
  begin
      DT_connection.qryEquip.Close;
    DT_connection.qryEquip.SQL.Clear;
    DT_connection.qryEquip.SQL.Add
      ('Select * from '+
       ' EquipamentosSetor where Sensor_SensorID like '+QuotedStr('%'+edtPesquisa.Text+'%'));
    DT_connection.qryEquip.Open;
  end;
  if RBDesc.Checked then
  begin
      DT_connection.qryEquip.Close;
    DT_connection.qryEquip.SQL.Clear;
    DT_connection.qryEquip.SQL.Add
      ('Select * from '+
       ' EquipamentosSetor where DescricaoEquip like '+QuotedStr('%'+edtPesquisa.Text+'%'));
    DT_connection.qryEquip.Open;
  end;

end;

procedure TCadEquip.FormCreate(Sender: TObject);
begin
  DT_connection.FDcon.Connected := true;
  DT_connection.qrySensor2.active := true;
  DT_connection.qryEquip.active := true;
  DT_connection.qryTipoEquip.active := true;
end;

end.
