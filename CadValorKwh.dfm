object ValorKWH: TValorKWH
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'ValorKWH'
  ClientHeight = 454
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 19
    Height = 13
    Caption = 'Obs'
  end
  object SpeedButton1: TSpeedButton
    Left = 328
    Top = 360
    Width = 23
    Height = 22
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 47
    Height = 13
    Caption = 'ValorKWH'
  end
  object DBNavigator2: TDBNavigator
    Left = 199
    Top = 8
    Width = 72
    Height = 32
    DataSource = DataSource1
    VisibleButtons = [nbDelete]
    TabOrder = 9
  end
  object DBGridValorKWH: TDBGrid
    Left = 5
    Top = 216
    Width = 585
    Height = 220
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorKWH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Obs'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 376
    Top = 8
    Width = 204
    Height = 93
    Lines.Strings = (
      'Use as setas para navegar pelas '
      'cidades, '
      'e selecione a caixa para definila como'
      'padr'#227'o, isso definir'#225' qual valor a '
      'aplica'#231#227'o usar'#225' como base de calculo')
    ReadOnly = True
    TabOrder = 1
  end
  object EditCidade: TEdit
    Left = 24
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditVKwh: TEdit
    Left = 24
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = EditVKwhKeyPress
  end
  object EditOBS: TEdit
    Left = 24
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object CBVP: TCheckBox
    Left = 176
    Top = 157
    Width = 129
    Height = 17
    Caption = 'Definir como padr'#227'o'
    TabOrder = 5
    OnClick = CBVPClick
  end
  object btnSalvar: TBitBtn
    Left = 277
    Top = 8
    Width = 75
    Height = 32
    Cursor = crSQLWait
    Caption = 'Salvar'
    TabOrder = 6
    Visible = False
    OnClick = btnSalvarClick
  end
  object DBNavigator1: TDBNavigator
    Left = 478
    Top = 185
    Width = 112
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 7
    OnClick = DBNavigator1Click
  end
  object btnNew: TBitBtn
    Left = 8
    Top = 8
    Width = 91
    Height = 32
    Caption = 'Novo Cadastro'
    TabOrder = 8
    OnClick = btnNewClick
  end
  object BtnEditar: TBitBtn
    Left = 105
    Top = 8
    Width = 88
    Height = 32
    Caption = 'Editar'
    TabOrder = 10
    OnClick = BtnEditarClick
  end
  object DataSource1: TDataSource
    DataSet = DT_connection.qryvalorKWHcity
    Left = 512
    Top = 128
  end
end
