unit CadValorKwh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Connection, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TValorKWH = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    DBGridValorKWH: TDBGrid;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    EditCidade: TEdit;
    EditVKwh: TEdit;
    EditOBS: TEdit;
    Label2: TLabel;
    CBVP: TCheckBox;
    btnSalvar: TBitBtn;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    btnNew: TBitBtn;
    DBNavigator2: TDBNavigator;
    BtnEditar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure CBVPClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnNewClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure EditVKwhKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ValorKWH: TValorKWH;

implementation

{$R *.dfm}

procedure TValorKWH.btnSalvarClick(Sender: TObject);
begin
if EditCidade.Text <> DT_connection.qryvalorKWHcity.FieldByName('Cidade').AsString then
Begin
DT_connection.qryvalorKWHcity.Close;
DT_connection.qryvalorKWHcity.SQL.Clear;
DT_connection.qryvalorKWHcity.SQL.Add('Insert into valorKWHcity (Cidade ,ValorKWH ,Obs )'
+'Values('+QuotedStr(EditCidade.Text)+','+ QuotedStr(EditVKwh.Text)+','+ QuotedStr(EditOBS.Text)+')');
DT_connection.qryvalorKWHcity.ExecSQL;
DT_connection.qryvalorKWHcity.Close;
DT_connection.qryvalorKWHcity.SQL.Clear;
DT_connection.qryvalorKWHcity.SQL.Add('Select * from  valorKWHcity');
DT_connection.qryvalorKWHcity.Open;

btnSalvar.Visible := false;
End ELSE
BEGIN
   DT_connection.qryvalorKWHcity.Close;
DT_connection.qryvalorKWHcity.SQL.Clear;
DT_connection.qryvalorKWHcity.SQL.Add('update valorKWHcity set ValorKWH=' + QuotedStr(EditVKwh.Text)+','+'Obs='+QuotedStr(EditOBS.Text)+'Where Cidade='+QuotedStr(EditCidade.Text));
DT_connection.qryvalorKWHcity.ExecSQL;
DT_connection.qryvalorKWHcity.Close;
DT_connection.qryvalorKWHcity.SQL.Clear;
DT_connection.qryvalorKWHcity.SQL.Add('Select * from  valorKWHcity');
DT_connection.qryvalorKWHcity.Open;

btnSalvar.Visible := false;
END;
end;

procedure TValorKWH.BtnEditarClick(Sender: TObject);
begin
btnSalvar.Visible := true;
end;

procedure TValorKWH.btnNewClick(Sender: TObject);
begin
EditCidade.Text := '';
EditVKwh.Text := '';
EditOBS.Text := '';

btnSalvar.Visible := true;
end;

procedure TValorKWH.CBVPClick(Sender: TObject);
var
  temp: string;
begin
  temp := EditVKwh.Text;

  if CBVP.Checked then
  begin
    DT_connection.qryvalorKWHcity.Close;
    DT_connection.qryvalorKWHcity.SQL.Clear;
    DT_connection.qryvalorKWHcity.SQL.Add('update BaseCalcReal_temp set Valor='
      + QuotedStr(temp) + '');
    DT_connection.qryvalorKWHcity.ExecSQL;
    DT_connection.qryvalorKWHcity.Close;
    DT_connection.qryvalorKWHcity.SQL.Clear;
    DT_connection.qryvalorKWHcity.SQL.Add('select * from valorKWHcity ');
    DT_connection.qryvalorKWHcity.Open;

    ShowMessage('O Valor de:'+temp+' KWh foi definido como base de calculo!');
  end;
end;

procedure TValorKWH.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
EditCidade.Text := DT_connection.qryvalorKWHcity.FieldByName('Cidade').AsString;
EditVKwh.Text := DT_connection.qryvalorKWHcity.FieldByName('ValorKWH').AsString;
EditOBS.Text := DT_connection.qryvalorKWHcity.FieldByName('Obs').AsString;
btnSalvar.Visible := false;
end;

procedure TValorKWH.EditVKwhKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9','.',#08] ) then
  key:=#0;
end;

procedure TValorKWH.FormActivate(Sender: TObject);
begin
EditCidade.Text := DT_connection.qryvalorKWHcity.FieldByName('Cidade').AsString;
EditVKwh.Text := DT_connection.qryvalorKWHcity.FieldByName('ValorKWH').AsString;
EditOBS.Text := DT_connection.qryvalorKWHcity.FieldByName('Obs').AsString;
btnSalvar.Visible := false;
end;

procedure TValorKWH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Fecha a conex�o ao fechar o form
  DT_connection.FDcon.Connected := false;
  DT_connection.qryvalorKWHcity.active := false;

end;

procedure TValorKWH.FormCreate(Sender: TObject);
begin
  DT_connection.FDcon.Connected := true;
  DT_connection.qryvalorKWHcity.active := true;
  ValorKWH.Free;
end;

end.
