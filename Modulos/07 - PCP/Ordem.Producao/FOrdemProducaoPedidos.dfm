object FrmOrdemProducaoPedidos: TFrmOrdemProducaoPedidos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerar Lote de Produ'#231#227'o'
  ClientHeight = 169
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 128
    Width = 763
    Height = 41
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BtnGerar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnGerarClick
    end
    object BtnCancelar: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 763
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 763
    ExplicitHeight = 36
    inherited Image3: TImage
      Width = 763
      Height = 36
      ExplicitWidth = 763
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 763
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 763
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 638
        Height = 28
        Caption = 'Gerar Ordem de Produ'#231#227'o'
        ExplicitWidth = 161
        ExplicitHeight = 36
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 707
        Height = 34
        ExplicitLeft = 707
        ExplicitHeight = 34
      end
    end
  end
  object pnTitulo: TPanel
    Left = 0
    Top = 114
    Width = 763
    Height = 14
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 763
    Height = 78
    Align = alTop
    TabOrder = 0
    object rgpSelecionar: TRadioGroup
      Left = 1
      Top = 1
      Width = 320
      Height = 76
      Align = alLeft
      Caption = 'Gerar produ'#231#227'o:'
      ItemIndex = 0
      Items.Strings = (
        'Criar lote manualmente')
      TabOrder = 0
      OnClick = rgpSelecionarClick
    end
    object rgpPrevisao: TGroupBox
      Left = 321
      Top = 1
      Width = 441
      Height = 76
      Align = alClient
      Caption = 'Previs'#227'o de encerramento:'
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 26
        Width = 71
        Height = 13
        Caption = 'Data Previs'#227'o:'
      end
      object EditPrevisao: TMaskEdit
        Left = 10
        Top = 41
        Width = 85
        Height = 23
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object dbEditLote: TIDBEditDialog
        Left = 101
        Top = 41
        Width = 75
        Height = 23
        Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        TabOrder = 1
        Text = ''
        Visible = True
        LabelCaption = 'Lote Producao:'
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
        SQLdbFazBusca = True
        SQLdbFocusControl = EditLoteProducao
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_LOTEPRODUCAO'
          'WHERE'
          'CODIGO=:CODIGO'
          '')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_LOTEPRODUCAO'
          'WHERE'
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
            SearchCase = scMixed
          end
          item
            FieldName = 'NOME'
            WhereSyntax = 'NOME'
            DisplayLabel = 'Nome:'
            DisplayWidth = 80
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'STATUS'
            WhereSyntax = 'STATUS'
            DisplayLabel = 'Ativa'
            DisplayWidth = 10
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
      object EditLoteProducao: TEdit
        Left = 178
        Top = 40
        Width = 215
        Height = 23
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '***'
      end
    end
  end
end
