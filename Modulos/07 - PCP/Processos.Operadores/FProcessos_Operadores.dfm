object FrmProcessos_Operadores: TFrmProcessos_Operadores
  Left = 266
  Top = 128
  Caption = 'Processos por Operador(a)'
  ClientHeight = 408
  ClientWidth = 930
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 69
    Width = 930
    Height = 279
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 14
      Top = 41
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 12
      Width = 33
      Height = 13
      Caption = '&C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 27
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_VincHumano
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 96
      Width = 926
      Height = 181
      Align = alBottom
      Caption = 'M'#225'quinas que est'#225' apto a operar'
      TabOrder = 3
      OnEnter = GroupBox2Enter
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 922
        Height = 164
        Align = alClient
        DataSource = BaseDados_PCP.ds_VincHumanoDetalhes
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MAQUINA'
            Title.Caption = 'Maquina:'
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'NOME'
            Width = 567
            Visible = True
          end>
      end
    end
    object Edit1: TEdit
      Left = 137
      Top = 27
      Width = 513
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
      Text = '***'
    end
    object EditCliente: TIDBEditDialog
      Left = 79
      Top = 27
      Width = 52
      Height = 21
      HelpKeyWord = ''
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
      Visible = True
      EditType = etNumeric
      FocusColor = clBtnFace
      LabelCaption = 'Operador(a)/Costureira(o)'
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
      ButtonHint = 'Procurar...'
      Etched = False
      ButtonCaption = '...'
      DataField = 'FUNCIONARIO'
      DataSource = BaseDados_PCP.ds_VincHumano
      ButtonKeyClickBtn = 119
      SQLdbFazBusca = True
      SQLdbFocusControl = Edit1
      SQLdbCampoRetorno = 'NOME'
      SQLdbRetornoVazio = ' *** '
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'CODIGO=:CODIGO')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'EMPRESA'#39
        'AND'
        '%WHERE%')
      CountQuery.Strings = (
        'SELECT count(*) FROM CAD_CLIENTES'
        'WHERE'
        'TIPO='#39'EMPRESA'#39
        'AND'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#243'digo:'
          DisplayWidth = 10
          DisplayColumnWidth = 0
          FieldType = ftInteger
          Search = False
          EmptyOperation = eoNull
          DefaultComparison = scEqual
          SearchCase = scUpper
        end
        item
          FieldName = 'NOME'
          WhereSyntax = 'NOME'
          DisplayLabel = 'Nome:'
          DisplayWidth = 90
          DisplayColumnWidth = 0
          FieldType = ftString
          Search = True
          EmptyOperation = eoNull
          DefaultComparison = scContains
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
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 348
    Width = 930
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 930
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 348
    ExplicitWidth = 930
    inherited PanelBotoesBottom: TPanel
      Width = 920
      ExplicitWidth = 920
      inherited SpbAdicionar: TSpeedButton
        Left = 26
        ExplicitLeft = 26
      end
      inherited SpbEditar: TSpeedButton
        Left = 226
        ExplicitLeft = 226
      end
      inherited SpbCancelar: TSpeedButton
        Left = 326
        ExplicitLeft = 326
      end
      inherited SpbSalvar: TSpeedButton
        Left = 126
        ExplicitLeft = 126
      end
      inherited SpbExcluir: TSpeedButton
        Left = 426
        ExplicitLeft = 426
      end
      inherited SpbImprimir: TSpeedButton
        Left = 626
        ExplicitLeft = 626
      end
      inherited SpbSair: TSpeedButton
        Left = 816
        ExplicitLeft = 816
      end
      inherited SpbExtra: TSpeedButton
        Left = 726
        ExplicitLeft = 726
      end
      inherited SpbProcurar: TSpeedButton
        Left = 526
        ExplicitLeft = 526
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 930
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 930
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 930
      Height = 45
      ExplicitWidth = 930
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 930
      Height = 45
      ExplicitWidth = 930
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 787
        Height = 37
        Caption = 'Processos por Operador(a)'
        ExplicitWidth = 164
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 871
        Height = 37
        ExplicitLeft = 874
        ExplicitHeight = 37
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 45
    Width = 930
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_VincHumano
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
end
