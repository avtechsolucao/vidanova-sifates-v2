object FrmCFOP: TFrmCFOP
  Left = 202
  Top = 111
  BorderStyle = bsDialog
  Caption = 'CFOP - C'#243'digos Fiscais de Opera'#231#245'es'
  ClientHeight = 543
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 36
    Width = 860
    Height = 447
    Cursor = crHandPoint
    ActivePage = Tab_Principal
    Align = alClient
    TabOrder = 0
    object Tab_Principal: TTabSheet
      Caption = 'Registros'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 419
        Align = alClient
        DataSource = DS_CFOP
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'CFOP:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o:'
            Width = 402
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALCULA_ICMS'
            Title.Caption = 'ICMS:'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALCULA_IPI'
            Title.Caption = 'IPI:'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALCULA_ISS'
            Title.Caption = 'ISS:'
            Width = 40
            Visible = True
          end>
      end
    end
    object Tab_Editar: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 1
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object Label2: TLabel
        Left = 73
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = EditNome
      end
      object EditCodigo: TDBEdit
        Left = 1
        Top = 24
        Width = 64
        Height = 21
        DataField = 'CODIGO'
        DataSource = DS_CFOP
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 73
        Top = 24
        Width = 292
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = DS_CFOP
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 372
        Top = 79
        Width = 257
        Height = 57
        Caption = 'Calcula ICMS'
        Columns = 2
        DataField = 'CALCULA_ICMS'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 372
        Top = 272
        Width = 257
        Height = 57
        Caption = 'Baixa Estoque'
        Columns = 2
        DataField = 'BAIXA_ESTOQUE'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 9
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 372
        Top = 16
        Width = 257
        Height = 57
        Caption = 'Tipo de Opera'#231#227'o'
        Columns = 2
        DataField = 'OPERACAO'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sa'#237'da'
          'Entrada')
        TabOrder = 5
        Values.Strings = (
          'S'
          'E')
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 372
        Top = 336
        Width = 257
        Height = 57
        Caption = 'Dentro do Estado'
        Columns = 2
        DataField = 'DENTRO_ESTADO'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 10
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 372
        Top = 144
        Width = 257
        Height = 57
        Caption = 'Calcula IPI'
        Columns = 2
        DataField = 'CALCULA_IPI'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 7
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 372
        Top = 208
        Width = 257
        Height = 57
        Caption = 'Calcula ISS'
        Columns = 2
        DataField = 'CALCULA_ISS'
        DataSource = DS_CFOP
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 8
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 48
        Width = 365
        Height = 120
        Caption = 'Reservado ao Fisco'
        TabOrder = 2
        object DBMemo_Fisco: TDBMemo
          Left = 2
          Top = 15
          Width = 361
          Height = 103
          Align = alClient
          DataField = 'FISCO'
          DataSource = DS_CFOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 176
        Width = 365
        Height = 120
        Caption = 'Tributa'#231#245'es'
        TabOrder = 3
        object Label7: TLabel
          Left = 13
          Top = 16
          Width = 105
          Height = 13
          Caption = 'Redu'#231#227'o do ICMS - %'
          FocusControl = EditReduc
        end
        object EditReduc: TDBEdit
          Left = 13
          Top = 32
          Width = 108
          Height = 21
          DataField = 'REDUCAO_ICMS'
          DataSource = DS_CFOP
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 298
        Width = 365
        Height = 97
        Caption = 'DADOS ADICIONAIS'
        TabOrder = 4
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 361
          Height = 80
          Align = alClient
          DataField = 'DETALHE'
          DataSource = DS_CFOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 860
    ExplicitHeight = 36
    inherited Image3: TImage
      Width = 860
      Height = 36
      ExplicitWidth = 640
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 860
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 860
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 717
        Height = 28
        Caption = 'CFOP - C'#243'digos Fiscais de Opera'#231#245'es'
        ExplicitWidth = 515
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 801
        Height = 28
        ExplicitLeft = 584
        ExplicitHeight = 34
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 483
    Width = 860
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 483
    ExplicitWidth = 860
    inherited PanelBotoesBottom: TPanel
      Width = 850
      ExplicitWidth = 850
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        ExplicitLeft = -44
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        ExplicitLeft = 156
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        ExplicitLeft = 256
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        ExplicitLeft = 56
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        ExplicitLeft = 356
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        ExplicitLeft = 556
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        ExplicitLeft = 746
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        ExplicitLeft = 656
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 456
      end
    end
  end
  object dbEditPesquisarCFOP: TIDBEditDialog
    Left = 479
    Top = 8
    Width = 65
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = ''
    Visible = False
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'CFOP'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Version = '5.0.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    ButtonHint = 'Plano de Contas'
    Etched = False
    ButtonCaption = '...'
    ButtonKeyClickBtn = 119
    SQLdbFazBusca = True
    SQLdbCampoRetorno = 'DESCRICAO'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CFOP'
      'WHERE'
      'CODIGO=:CODIGO')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CFOP'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    CountQuery.Strings = (
      'SELECT COUNT(CODIGO) FROM CAD_CFOP'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'CFOP'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'NOME:'
        DisplayWidth = 70
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'OPERACAO'
        WhereSyntax = 'OPERACAO'
        DisplayLabel = 'Sa'#237'da/Entrada'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scUpper
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 0
    DialogHeight = 0
    Store = dsFields
    CompareFormatDate = 'DDMMYYYY'
    CompareFormatTime = 'HHMMSS'
    CompareFormatDateTime = 'DDMMYYYY'
    TrueExpression = '1=1'
    DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
    ConnectionDialog = FrmPrincipal.DBConexao
    Connection = FrmPrincipal.DBConexao
  end
  object DS_CFOP: TDataSource
    DataSet = db_CFOP
    Left = 317
    Top = 39
  end
  object db_CFOP: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CFOP'
      'order by CODIGO')
    Left = 317
    Top = 15
    object db_CFOPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_CFOPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_CFOPNFE: TStringField
      FieldName = 'NFE'
      Size = 10
    end
    object db_CFOPDENTRO_ESTADO: TStringField
      FieldName = 'DENTRO_ESTADO'
      Size = 10
    end
    object db_CFOPDETALHE: TStringField
      FieldName = 'DETALHE'
      Size = 5000
    end
    object db_CFOPFISCO: TStringField
      FieldName = 'FISCO'
      Size = 5000
    end
    object db_CFOPOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 30
    end
    object db_CFOPCALCULA_ICMS: TStringField
      FieldName = 'CALCULA_ICMS'
      Size = 10
    end
    object db_CFOPCALCULA_IPI: TStringField
      FieldName = 'CALCULA_IPI'
      Size = 10
    end
    object db_CFOPCALCULA_ISS: TStringField
      FieldName = 'CALCULA_ISS'
      Size = 10
    end
    object db_CFOPCALCULA_SEFAZ: TStringField
      FieldName = 'CALCULA_SEFAZ'
      Size = 10
    end
    object db_CFOPCALCULA_COFINS: TStringField
      FieldName = 'CALCULA_COFINS'
      Size = 10
    end
    object db_CFOPREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object db_CFOPREDUCAO_IPI: TFloatField
      FieldName = 'REDUCAO_IPI'
    end
    object db_CFOPDESCONTO_SEFAZ: TFloatField
      FieldName = 'DESCONTO_SEFAZ'
    end
    object db_CFOPDESCONTO_COFINS: TFloatField
      FieldName = 'DESCONTO_COFINS'
    end
    object db_CFOPDESCONTO_PIS: TFloatField
      FieldName = 'DESCONTO_PIS'
    end
    object db_CFOPRECUPERA_ICMS: TStringField
      FieldName = 'RECUPERA_ICMS'
      Size = 30
    end
    object db_CFOPRECUPERA_IPI: TStringField
      FieldName = 'RECUPERA_IPI'
      Size = 10
    end
    object db_CFOPDESCONTO_SUFRAMA: TFloatField
      FieldName = 'DESCONTO_SUFRAMA'
    end
    object db_CFOPBAIXA_ESTOQUE: TStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 10
    end
    object db_CFOPSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 30
    end
  end
end
