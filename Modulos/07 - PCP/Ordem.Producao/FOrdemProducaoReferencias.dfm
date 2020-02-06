object FrmOrdemProducaoReferencias: TFrmOrdemProducaoReferencias
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ordem de Produ'#231#227'o | Refer'#234'ncias'
  ClientHeight = 337
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 761
    Height = 41
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = 'Ok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Sair'
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 36
    Width = 761
    Height = 260
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 759
      Height = 18
      Align = alTop
      Alignment = taCenter
      Caption = 'F8-Procurar Produto / F2-Abrir Grade de Tamanhos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 336
    end
    object dbGrid_Referencias: TDBGrid
      Left = 1
      Top = 19
      Width = 759
      Height = 240
      HelpType = htKeyword
      TabStop = False
      Align = alClient
      Ctl3D = True
      DataSource = BaseDados_PCP.ds_OrdemProducaoItens
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      OnKeyDown = dbGrid_ReferenciasKeyDown
      OnKeyPress = dbGrid_ReferenciasKeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o:'
          Width = 317
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'QUANTIDADE'
          ReadOnly = True
          Title.Caption = 'Qtde:'
          Width = 105
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'QTDE_PRODUZIDA'
          ReadOnly = True
          Title.Caption = 'Produzido:'
          Width = 77
          Visible = True
        end>
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 761
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 761
    ExplicitHeight = 36
    inherited Image3: TImage
      Width = 761
      Height = 36
      ExplicitWidth = 751
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 761
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 761
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 636
        Height = 28
        Caption = 'Ordem de Produ'#231#227'o | Refer'#234'ncias'
        ExplicitWidth = 209
        ExplicitHeight = 36
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 705
        Height = 34
        ExplicitLeft = 695
        ExplicitHeight = 34
      end
    end
  end
  object dbProcurarProdutos: TIDBEditDialog
    Left = 654
    Top = 8
    Width = 89
    Height = 21
    HelpKeyWord = ''
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
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = '.'
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
    ButtonKeyClickBtn = 119
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      'CODIGO=:CODIGO'
      ''
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT *  FROM VIEW_REFERENCIAS'
      'WHERE'
      'TIPO_PRODUTO IN ('#39'ACA'#39','#39'ACABADO'#39')'
      'AND'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'REFER'#202'NCIA:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 45
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'GRIFE_NOME'
        WhereSyntax = 'GRIFE_NOME'
        DisplayLabel = 'GRIFE:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'GRADE_NOME'
        WhereSyntax = 'GRADE_NOME'
        DisplayLabel = 'GRADE:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'GRUPO_NOME'
        WhereSyntax = 'GRUPO_NOME'
        DisplayLabel = 'GRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 900
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
