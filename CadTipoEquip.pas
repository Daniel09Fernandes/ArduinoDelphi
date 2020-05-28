unit CadTipoEquip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Connection, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TTipoEquip = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    dstTipoEquip: TDataSource;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TipoEquip: TTipoEquip;

implementation

{$R *.dfm}

procedure TTipoEquip.FormCreate(Sender: TObject);
begin
   DT_connection.FDcon.Connected := true;
   DT_connection.qryTipoEquip.Active := true;
end;

end.
