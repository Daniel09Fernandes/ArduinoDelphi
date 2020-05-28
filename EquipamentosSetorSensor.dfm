﻿object CadEquip: TCadEquip
  Left = 0
  Top = 0
  ActiveControl = DBGrid1
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de equipamentos por setor'
  ClientHeight = 397
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 63
    Width = 437
    Height = 326
    Align = alCustom
    DataSource = dtsEquip
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DescricaoEquip'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoEquipamento_idTipoEquipamento'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Especificacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sensor_SensorID'
        Width = 64
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 443
    Top = 0
    Width = 314
    Height = 397
    Align = alRight
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 391
    ExplicitHeight = 351
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 6
      Top = 60
      Width = 126
      Height = 13
      Caption = 'Descri'#231#227'o do equipamento'
    end
    object Label3: TLabel
      Left = 6
      Top = 101
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label4: TLabel
      Left = 160
      Top = 60
      Width = 100
      Height = 13
      Caption = 'Tipo do equipamento'
    end
    object Label5: TLabel
      Left = 160
      Top = 101
      Width = 26
      Height = 13
      Caption = 'Setor'
    end
    object Label6: TLabel
      Left = 6
      Top = 152
      Width = 126
      Height = 13
      Caption = 'Descri'#231#227'o do equipamento'
    end
    object Navegação: TLabel
      Left = 128
      Top = 253
      Width = 54
      Height = 13
      Caption = 'Navega'#231#227'o'
    end
    object edtEspec: TDBMemo
      Left = 6
      Top = 171
      Width = 281
      Height = 62
      DataField = 'Especificacao'
      DataSource = dtsEquip
      TabOrder = 0
    end
    object EdtDesc: TDBEdit
      Left = 6
      Top = 74
      Width = 137
      Height = 21
      DataField = 'DescricaoEquip'
      DataSource = dtsEquip
      TabOrder = 1
    end
    object edtQTDE: TDBEdit
      Left = 6
      Top = 117
      Width = 139
      Height = 21
      DataField = 'QTDE'
      DataSource = dtsEquip
      TabOrder = 2
    end
    object EdtCodigo: TDBEdit
      Left = 6
      Top = 21
      Width = 121
      Height = 21
      DataField = 'idEquipamentosSetor'
      DataSource = dtsEquip
      TabOrder = 3
    end
    object DBLCBTipoEquip: TDBLookupComboBox
      Left = 157
      Top = 74
      Width = 145
      Height = 21
      DataField = 'TipoEquipamento_idTipoEquipamento'
      DataSource = dtsEquip
      KeyField = 'idTipoEquipamento'
      ListField = 'idTipoEquipamento'
      ListSource = dstTipoEquip
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 6
      Top = 272
      Width = 291
      Height = 41
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 5
      object DBNavigator1: TDBNavigator
        Left = 25
        Top = 8
        Width = 224
        Height = 25
        DataSource = dtsEquip
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
    end
    object DBLCBSetor: TDBLookupComboBox
      Left = 160
      Top = 120
      Width = 145
      Height = 21
      Color = clBtnFace
      DataField = 'Sensor_SensorID'
      DataSource = dtsEquip
      KeyField = 'SensorID'
      ListField = 'SetorSensor'
      ListSource = dtsSensor
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = -1
    Width = 437
    Height = 58
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    object btnPesquisa: TBitBtn
      Left = 0
      Top = 13
      Width = 33
      Height = 25
      Caption = '.'
      TabOrder = 0
      OnClick = btnPesquisaClick
    end
    object edtPesquisa: TEdit
      Left = 39
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Pesquisar'
    end
    object RBTipo: TRadioButton
      Left = 176
      Top = 1
      Width = 113
      Height = 17
      Caption = 'Tipo'
      TabOrder = 2
    end
    object RBSetor: TRadioButton
      Left = 176
      Top = 18
      Width = 113
      Height = 17
      Caption = 'Setor'
      TabOrder = 3
    end
    object RBDesc: TRadioButton
      Left = 176
      Top = 35
      Width = 113
      Height = 17
      Caption = 'Descri'#231#227'o'
      TabOrder = 4
    end
  end
  object dtsSensor: TDataSource
    DataSet = DT_connection.qrySensor2
    Left = 352
    Top = 96
  end
  object dtsEquip: TDataSource
    DataSet = DT_connection.qryEquip
    Left = 288
    Top = 80
  end
  object dstTipoEquip: TDataSource
    DataSet = DT_connection.qryTipoEquip
    Left = 232
    Top = 152
  end
end
