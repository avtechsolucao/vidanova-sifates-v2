object FrmTabelaPrecoServicos: TFrmTabelaPrecoServicos
  Left = 0
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tabela de Pre'#231'os | Servi'#231'os Terceirizados'
  ClientHeight = 497
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 432
    Width = 860
    Height = 65
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 432
    ExplicitWidth = 860
    ExplicitHeight = 65
    inherited PanelBotoesBottom: TPanel
      Width = 850
      Height = 59
      ExplicitWidth = 850
      ExplicitHeight = 59
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        Height = 55
        ExplicitLeft = -44
        ExplicitHeight = 55
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        Height = 55
        ExplicitLeft = 156
        ExplicitHeight = 55
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        Height = 55
        ExplicitLeft = 256
        ExplicitHeight = 55
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        Height = 55
        ExplicitLeft = 56
        ExplicitHeight = 55
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        Height = 55
        ExplicitLeft = 356
        ExplicitHeight = 55
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        Height = 55
        ExplicitLeft = 556
        ExplicitHeight = 55
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        Height = 55
        ExplicitLeft = 746
        ExplicitHeight = 55
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        Height = 55
        ExplicitLeft = 656
        ExplicitHeight = 55
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        Height = 55
        ExplicitLeft = 456
        ExplicitHeight = 55
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 860
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 860
      Height = 45
      ExplicitWidth = 546
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 860
      Height = 45
      ExplicitWidth = 860
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 717
        Height = 37
        Caption = 'Tabela de Pre'#231'os | Servi'#231'os Terceirizados'
        ExplicitWidth = 417
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 801
        Height = 37
        ExplicitLeft = 490
        ExplicitHeight = 37
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 45
    Width = 860
    Height = 387
    Align = alClient
    Caption = 'Grade de Valores'
    TabOrder = 2
    object dbGrid_Tabela: TDBGrid
      Left = 2
      Top = 15
      Width = 856
      Height = 370
      Hint = 'clique aqui com o bot'#227'o direito do mouse'
      HelpType = htKeyword
      TabStop = False
      Align = alClient
      Ctl3D = True
      DataSource = ds_TabelaPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = dbGrid_TabelaKeyPress
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'DATA_ATUALIZADA'
          ReadOnly = True
          Title.Caption = 'Data:'
          Width = 102
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Servi'#231'o:'
          Width = 608
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT'
          Title.Caption = 'Valor:'
          Width = 100
          Visible = True
        end>
    end
  end
  object db_TabelaPreco: TFDQuery
    BeforePost = db_TabelaPrecoBeforePost
    OnNewRecord = db_TabelaPrecoNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM TPRECOSERVICO')
    Left = 108
    Top = 206
    object db_TabelaPrecoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_TabelaPrecoDATA_ATUALIZADA: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZADA'
      Required = True
      EditMask = '99/99/9999'
    end
    object db_TabelaPrecoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object db_TabelaPrecoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      Required = True
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
  end
  object ds_TabelaPreco: TDataSource
    DataSet = db_TabelaPreco
    Left = 108
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 200
    object mnuPreenchergradea: TMenuItem
      Caption = 'Preencher grade automaticamente'
      OnClick = mnuPreenchergradeaClick
    end
  end
  object db_TabelaInserts: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'INSERT INTO TPRECOSERVICO (DATA_ATUALIZADA, NOME, VLR_UNIT) VALU' +
        'ES (GETDATE(), :SNOME, 0)')
    Left = 276
    Top = 262
    ParamData = <
      item
        Name = 'SNOME'
      end>
  end
end
