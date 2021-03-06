object FrmEntregadorDefinir: TFrmEntregadorDefinir
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Entregador para o pedido:'
  ClientHeight = 292
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 89
    Width = 88
    Height = 21
    Caption = 'Pedido atual:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 468
    Height = 41
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7368816
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    ExplicitWidth = 468
    ExplicitHeight = 41
    inherited Image3: TImage
      Width = 468
      Height = 41
      ExplicitWidth = 468
    end
    inherited pnTitulo: TPanel
      Width = 468
      Height = 41
      Constraints.MinHeight = 33
      ExplicitWidth = 468
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 325
        Height = 33
        Caption = 'Definir Entregador do Pedido'
        ExplicitWidth = 254
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 39
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 409
        Height = 33
        ExplicitLeft = 412
        ExplicitHeight = 31
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 468
    Height = 32
    Align = alTop
    BorderWidth = 3
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ExplicitTop = 33
  end
  object BtnSair: TButton
    Left = 227
    Top = 219
    Width = 105
    Height = 49
    Caption = 'ESC - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnSairClick
  end
  object BtnDigitar: TButton
    Left = 338
    Top = 219
    Width = 106
    Height = 49
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnDigitarClick
    OnKeyDown = ed_pedidoentregadorKeyDown
  end
  object ed_codentregador: TIDBEditDialog
    Left = 24
    Top = 170
    Width = 140
    Height = 25
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = ''
    Visible = True
    OnKeyDown = ed_pedidoentregadorKeyDown
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Pesquisar Entregador:'
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clBlack
    LabelFont.Height = -15
    LabelFont.Name = 'Segoe UI'
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
    SQLdbFocusControl = ed_pedidoentregador
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = ' *** '
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      ''
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39)
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO='#39'TRANSPORTADORA'#39
      'AND'
      '%WHERE%')
    CountQuery.Strings = (
      '')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'CODIGO'
        DisplayWidth = 40
        DisplayColumnWidth = 40
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME'
        DisplayWidth = 300
        DisplayColumnWidth = 300
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
  object ed_entregador: TEdit
    Left = 170
    Top = 170
    Width = 274
    Height = 25
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object ed_pedidoentregador: TEdit
    Left = 24
    Top = 116
    Width = 140
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = ed_pedidoentregadorKeyDown
  end
  object db_Pedidos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES'
      'WHERE'
      'TIPO = '#39'TRANSPORTADORA'#39)
    Left = 408
    Top = 64
  end
  object sp_definirentregador: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SP_DEFINIR_ENTREGADOR'
    Left = 312
    Top = 64
    ParamData = <
      item
        Name = 'ID_ENTREGADOR'
      end
      item
        Name = 'ID_PEDIDO'
      end>
  end
end
