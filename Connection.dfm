object DT_connection: TDT_connection
  OldCreateOrder = False
  Height = 427
  Width = 613
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 8
  end
  object FDcon: TFDConnection
    Params.Strings = (
      'Database=c:\bd\ArduinoDB.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 8
  end
  object qryColeta: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      'select * from coleta')
    Left = 360
    Top = 16
  end
  object FDPhysSQLiteDriverLink2: TFDPhysSQLiteDriverLink
    Left = 56
    Top = 72
  end
  object qrySensor: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      'select SetorSensor, NomeSensor,Rede from Sensor')
    Left = 352
    Top = 80
    object qrySensorSetorSensor: TStringField
      FieldName = 'SetorSensor'
      Origin = 'SetorSensor'
      Size = 10
    end
    object qrySensorNomeSensor: TStringField
      FieldName = 'NomeSensor'
      Origin = 'NomeSensor'
      Size = 12
    end
    object qrySensorRede: TBCDField
      FieldName = 'Rede'
      Origin = 'Rede'
      Precision = 3
      Size = 2
    end
  end
  object qryvalorKWHcity: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      'select * from valorKWHcity')
    Left = 288
    Top = 16
    object qryvalorKWHcityCidade: TWideStringField
      FieldName = 'Cidade'
      Origin = 'Cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object qryvalorKWHcityValorKWH: TBCDField
      FieldName = 'ValorKWH'
      Origin = 'ValorKWH'
      DisplayFormat = '0.000000'
      currency = True
      Precision = 3
      Size = 2
    end
    object qryvalorKWHcityObs: TWideStringField
      FieldName = 'Obs'
      Origin = 'Obs'
      Size = 100
    end
  end
  object qryVaxrede: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      
        'select DISTINCT  s.SensorID, s.SetorSensor,sum (c.cvalor * s.Red' +
        'e) as Potencia_W, sum (c.cvalor * s.Rede) /1000 as KWh,'
      ''
      ''
      ''
      ' s.rede from Sensor s, coleta c '
      'where s.SensorID = c.Sensor_SensorID and c.data =c.data'
      ''
      ''
      ''
      'group by s.SetorSensor')
    Left = 424
    Top = 16
  end
  object qryEquip: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      
        'Select idEquipamentosSetor ,DescricaoEquip, TipoEquipamento_idTi' +
        'poEquipamento,QTDE, Especificacao, Sensor_SensorID  from Equipam' +
        'entosSetor')
    Left = 288
    Top = 80
    object qryEquipDescricaoEquip: TStringField
      FieldName = 'DescricaoEquip'
      Origin = 'DescricaoEquip'
      Size = 50
    end
    object qryEquipTipoEquipamento_idTipoEquipamento: TStringField
      FieldName = 'TipoEquipamento_idTipoEquipamento'
      Origin = 'TipoEquipamento_idTipoEquipamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object qryEquipQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object qryEquipEspecificacao: TStringField
      FieldName = 'Especificacao'
      Origin = 'Especificacao'
      Size = 100
    end
    object qryEquipSensor_SensorID: TIntegerField
      FieldName = 'Sensor_SensorID'
      Origin = 'Sensor_SensorID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEquipidEquipamentosSetor: TIntegerField
      FieldName = 'idEquipamentosSetor'
      Origin = 'idEquipamentosSetor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qrySensor2: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      'select * from Sensor')
    Left = 416
    Top = 80
    object StringField1: TStringField
      FieldName = 'SetorSensor'
      Origin = 'SetorSensor'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'NomeSensor'
      Origin = 'NomeSensor'
      Size = 12
    end
    object BCDField1: TBCDField
      FieldName = 'Rede'
      Origin = 'Rede'
      Precision = 3
      Size = 2
    end
    object qrySensor2SensorID: TIntegerField
      FieldName = 'SensorID'
      Origin = 'SensorID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryTipoEquip: TFDQuery
    Connection = FDcon
    SQL.Strings = (
      'select * from TipoEquipamento')
    Left = 504
    Top = 16
  end
end
