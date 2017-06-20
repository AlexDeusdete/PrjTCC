object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 399
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    768
    399)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 399
    Align = alLeft
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 318
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Cria btn'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 191
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object BitBtn2: TBitBtn
    Left = 319
    Top = 37
    Width = 75
    Height = 25
    Caption = 'criasubbtn'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Edit2: TEdit
    Left = 192
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object DBGrid1: TDBGrid
    Left = 400
    Top = 37
    Width = 320
    Height = 120
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = '1'
        Title.Alignment = taCenter
        Title.Color = clRed
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = '2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = '3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold, fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = '4'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clAqua
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsItalic]
        Visible = True
      end>
  end
  object Edit3: TEdit
    Left = 400
    Top = 10
    Width = 73
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 488
    Top = 10
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object BitBtn3: TBitBtn
    Left = 576
    Top = 6
    Width = 75
    Height = 25
    Caption = 'BitBtn3'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 657
    Top = 6
    Width = 75
    Height = 25
    Caption = 'BitBtn3'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object Panel2: TPanel
    Left = 191
    Top = 68
    Width = 417
    Height = 30
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel2'
    TabOrder = 10
  end
  object BitBtn5: TBitBtn
    Left = 645
    Top = 91
    Width = 75
    Height = 25
    Caption = 'BitBtn5'
    TabOrder = 11
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 645
    Top = 68
    Width = 75
    Height = 25
    Caption = 'BitBtn6'
    TabOrder = 12
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 645
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BitBtn7'
    TabOrder = 13
    OnClick = BitBtn7Click
  end
  object DBGrid2: TDBGrid
    Left = 191
    Top = 163
    Width = 529
    Height = 214
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CodigoCor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoFornecedor'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=\\server\Sistema\Delphi XE10 Berlin\Fitelo\Sistema\Win' +
      '32\Release\Base.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 217
    Top = 121
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    BeforePost = ADOQuery1BeforePost
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Fornecedor, CodigoCor, CodigoFornecedor, Descricao, Ativo' +
        ', FlagSelecao'
      'FROM dbo.Fornecedor_Cor'
      'WHERE Fornecedor = 1')
    Left = 328
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 392
    Top = 120
  end
end
