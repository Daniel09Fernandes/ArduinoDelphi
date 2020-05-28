object Chart: TChart
  Left = 0
  Top = 0
  Caption = 'Chart'
  ClientHeight = 423
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 41
    Width = 679
    Height = 382
    Title.Color = 4711962
    Title.Text.Strings = (
      'Consumo em Watts')
    Title.VertMargin = 8
    Panning.MouseWheel = pmwNone
    View3DOptions.Zoom = 105
    ZoomWheel = pmwNormal
    Align = alClient
    TabOrder = 0
    AutoSize = True
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      22
      15
      22)
    ColorPaletteIndex = 0
    object Series2: THorizBarSeries
      BarBrush.Color = clMaroon
      BarBrush.BackColor = clDefault
      BarPen.Color = 390140
      ColorEachPoint = True
      Marks.Visible = False
      Marks.Callout.Length = 8
      DataSource = DT_connection.qryVaxrede
      Title = 'Grafico,Consumo'
      XLabelsSource = 'SetorSensor'
      Dark3D = False
      XValues.Name = 'Bar'
      XValues.Order = loNone
      XValues.ValueSource = 'KWh'
      YValues.DateTime = True
      YValues.Name = 'Y'
      YValues.Order = loAscending
      YValues.ValueSource = 'KWh'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 41
    Align = alTop
    Caption = 'Grafico de consumo medio por setor'
    TabOrder = 1
  end
end
