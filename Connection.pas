unit Connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDT_connection = class(TDataModule)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDcon: TFDConnection;
    qryColeta: TFDQuery;
    FDPhysSQLiteDriverLink2: TFDPhysSQLiteDriverLink;
    qrySensor: TFDQuery;
    qryvalorKWHcity: TFDQuery;
    qryvalorKWHcityCidade: TWideStringField;
    qryvalorKWHcityValorKWH: TBCDField;
    qryvalorKWHcityObs: TWideStringField;
    qryVaxrede: TFDQuery;
    qryEquip: TFDQuery;
    qrySensorSetorSensor: TStringField;
    qrySensorNomeSensor: TStringField;
    qrySensorRede: TBCDField;
    qrySensor2: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BCDField1: TBCDField;
    qrySensor2SensorID: TIntegerField;
    qryTipoEquip: TFDQuery;
    qryEquipDescricaoEquip: TStringField;
    qryEquipTipoEquipamento_idTipoEquipamento: TStringField;
    qryEquipQTDE: TIntegerField;
    qryEquipEspecificacao: TStringField;
    qryEquipSensor_SensorID: TIntegerField;
    qryEquipidEquipamentosSetor: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DT_connection: TDT_connection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
