object FrmTerceirizadoLancaFinanceiro: TFrmTerceirizadoLancaFinanceiro
  Left = 1
  Top = 1
  HelpContext = 29
  Caption = 'Terceirizados - Lan'#231'ar Pagamentos'
  ClientHeight = 534
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 952
    Height = 474
    Align = alClient
    BorderWidth = 3
    TabOrder = 0
    object PainelDicas: TPanel
      Left = 4
      Top = 38
      Width = 944
      Height = 29
      Align = alTop
      BevelInner = bvLowered
      BorderWidth = 3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ProgressBar1: TProgressBar
        Left = 7
        Top = 7
        Width = 150
        Height = 16
        TabOrder = 0
        Visible = False
      end
    end
    object GRPTop: TGroupBox
      Left = 4
      Top = 67
      Width = 944
      Height = 68
      Align = alTop
      TabOrder = 1
      OnExit = GRPTopExit
      object Label7: TLabel
        Left = 86
        Top = 18
        Width = 53
        Height = 13
        Caption = 'Data Envio'
        FocusControl = EditData
      end
      object Label5: TLabel
        Left = 10
        Top = 18
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = EditCodigo
      end
      object Label1: TLabel
        Left = 162
        Top = 18
        Width = 64
        Height = 13
        Caption = 'Data Retorno'
        FocusControl = DBEdit2
      end
      object EditData: TDBEdit
        Left = 86
        Top = 33
        Width = 70
        Height = 22
        Hint = 'Data que o servi'#231'o foi enviado'
        BevelKind = bkFlat
        DataField = 'DATA'
        DataSource = ds_Terceirizados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object EditCodigo: TDBEdit
        Left = 10
        Top = 33
        Width = 70
        Height = 23
        BevelKind = bkFlat
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = ds_Terceirizados
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditNomeCliente: TEdit
        Left = 318
        Top = 33
        Width = 427
        Height = 23
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '***'
      end
      object EditTerceirizado: TIDBEditDialog
        Left = 242
        Top = 33
        Width = 70
        Height = 23
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = ''
        Visible = True
        LabelCaption = 'Terceirizado:'
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
        DataField = 'TERCEIRIZADO'
        DataSource = ds_Terceirizados
        ButtonKeyClickBtn = 119
        SQLdbFazBusca = True
        SQLdbFocusControl = EditNomeCliente
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
          'TIPO IN ('#39'TERCEIRIZADO'#39')'
          'AND'
          '%WHERE%')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'CODIGO'
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
            DisplayWidth = 60
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'NOME_FANTASIA'
            WhereSyntax = 'NOME_FANTASIA'
            DisplayLabel = 'Nome Fantasia:'
            DisplayWidth = 30
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
      object DBEdit2: TDBEdit
        Left = 162
        Top = 33
        Width = 74
        Height = 22
        Hint = 'Data que o servi'#231'o (concluido) retornou para a empresa'
        BevelKind = bkFlat
        DataField = 'DATARETORNO'
        DataSource = ds_Terceirizados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object GRPItens: TGroupBox
      Left = 4
      Top = 135
      Width = 944
      Height = 234
      Align = alClient
      TabOrder = 2
      object DBGrid_Produtos: TDBGrid
        Left = 2
        Top = 15
        Width = 940
        Height = 217
        Align = alClient
        DataSource = ds_TerceirizadosReferencias
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid_ProdutosKeyDown
        OnKeyPress = DBGrid_ProdutosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 434
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtde:'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNIT'
            Title.Caption = 'Vlr Unit'#225'rio:'
            Width = 85
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'VLR_TOTAL'
            ReadOnly = True
            Title.Caption = 'Valor Total:'
            Width = 82
            Visible = True
          end>
      end
    end
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 4
      Top = 4
      Width = 944
      Height = 34
      Align = alTop
      Constraints.MinHeight = 34
      Color = 16024898
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 944
      ExplicitHeight = 34
      inherited Image3: TImage
        Width = 944
        Height = 34
        ExplicitWidth = 780
        ExplicitHeight = 34
      end
      inherited pnTitulo: TPanel
        Width = 944
        Height = 34
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Constraints.MinHeight = 34
        Font.Height = -9
        ExplicitWidth = 944
        ExplicitHeight = 34
        inherited LblBarraTitulo: TLabel
          Width = 801
          Height = 26
          Caption = 'Terceirizados - Lan'#231'ar Pagamentos'
          ExplicitWidth = 274
          ExplicitHeight = 26
        end
        inherited Image1: TImage
          Height = 32
          ExplicitHeight = 32
        end
        inherited Image2: TImage
          Left = 885
          Height = 26
          ExplicitLeft = 724
          ExplicitHeight = 32
        end
      end
    end
    object Panel2: TPanel
      Left = 4
      Top = 369
      Width = 944
      Height = 101
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 4
      object PainelBottom: TPanel
        Left = 1
        Top = 1
        Width = 796
        Height = 99
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Shape3: TShape
          Left = 440
          Top = 36
          Width = 217
          Height = 58
          Brush.Color = clBlack
          Pen.Color = clSilver
          Pen.Width = 3
          Shape = stRoundRect
        end
        object Label3: TLabel
          Left = 537
          Top = 10
          Width = 77
          Height = 23
          Alignment = taCenter
          Caption = 'TOTAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 8
          Top = 36
          Width = 163
          Height = 58
          Brush.Color = clBlack
          Pen.Color = clSilver
          Pen.Width = 3
          Shape = stRoundRect
        end
        object Label2: TLabel
          Left = 17
          Top = 10
          Width = 142
          Height = 23
          Alignment = taCenter
          Caption = 'QTDE TOTAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 448
          Top = 44
          Width = 200
          Height = 41
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'VLR_TOTAL'
          DataSource = ds_Terceirizados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 19
          Top = 44
          Width = 140
          Height = 41
          BevelKind = bkFlat
          Color = clBtnFace
          DataField = 'QTDE_TOTAL'
          DataSource = ds_Terceirizados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object btnPagar: TBitBtn
        Left = 797
        Top = 1
        Width = 146
        Height = 99
        Align = alRight
        Caption = 'Gerar Cta. Pagar'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606201919197B2828
          28C6323232F8282828C61919197B060606200000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001919197E00000000212121A5333333FF3333
          33FF333333FF333333FF333333FF212121A50606062000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF08080828333333FF1919197E333333FF282828C71313
          135F0303030F1313135F282828C7333333FF1919197B00000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF01010105333333FF333333FF333333FF1313135F0000
          000000000000000000001313135F333333FF282828C600000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF1B1B1B860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF1919
          197E000000001919197E333333FF333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B86333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D400000000000000000282828C6333333FF1313135F0000
          000000000000000000001313135F333333FF333333FF333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001919197B333333FF282828C71313
          135F0303030F1313135F282828C7333333FF1919197E333333FF000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D40000000000000000000000000212121A5333333FF3333
          33FF333333FF333333FF333333FF212121A5000000001919197E000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606201919197B2828
          28C6323232F8282828C61919197B060606200000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
          0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        OnClick = btnPagarClick
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 474
    Width = 952
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 474
    ExplicitWidth = 952
    inherited PanelBotoesBottom: TPanel
      Width = 942
      ExplicitWidth = 942
      inherited SpbAdicionar: TSpeedButton
        Left = 48
        ExplicitLeft = 48
      end
      inherited SpbEditar: TSpeedButton
        Left = 248
        ExplicitLeft = 248
      end
      inherited SpbCancelar: TSpeedButton
        Left = 348
        ExplicitLeft = 348
      end
      inherited SpbSalvar: TSpeedButton
        Left = 148
        ExplicitLeft = 148
      end
      inherited SpbExcluir: TSpeedButton
        Left = 448
        ExplicitLeft = 448
      end
      inherited SpbImprimir: TSpeedButton
        Left = 648
        Visible = True
        OnClick = FrmFrameBotoes1SpbImprimirClick
        ExplicitLeft = 648
      end
      inherited SpbSair: TSpeedButton
        Left = 838
        OnClick = FrmFrameBotoes1SpbSairClick
        ExplicitLeft = 838
      end
      inherited SpbExtra: TSpeedButton
        Left = 748
        ExplicitLeft = 748
      end
      inherited SpbProcurar: TSpeedButton
        Left = 548
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 548
      end
    end
    inherited DataSource: TDataSource
      Left = 923
      Top = 24
    end
  end
  object LocalizaDistribuicao: TIDBEditDialog
    Left = 582
    Top = 17
    Width = 70
    Height = 21
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
    Visible = False
    EditType = etUppercase
    EmptyText = 'F8 - Pesquisar'
    FocusColor = clWindow
    LabelCaption = 'Tabela de Valores:'
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
    SQLdbCampoRetorno = 'NOME'
    SQLdbRetornoVazio = '***'
    SQLdbCampoParametro = 'CODIGO'
    SQLdbSQL.Strings = (
      'SELECT * FROM  TPRECOSERVICO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM  VIEW_TERCEIRIZADOPAGAR'
      'WHERE'
      '%WHERE%')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'Remessa:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'ORDEMPRODUCAO'
        WhereSyntax = 'ORDEMPRODUCAO'
        DisplayLabel = 'Lote Produ'#231#227'o:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA'
        WhereSyntax = 'DATA'
        DisplayLabel = 'Data:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATARETORNO'
        WhereSyntax = 'DATARETORNO'
        DisplayLabel = 'Data Retorno:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'TERCEIRIZADO_NOME'
        WhereSyntax = 'TERCEIRIZADO_NOME'
        DisplayLabel = 'TERCEIRIZADO:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scUpper
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scUpper
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'Valor Total:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 1000
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
  object dbProcurarProduto: TIDBEditDialog
    Left = 165
    Top = 6
    Width = 65
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
        SearchCase = scMixed
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
        SearchCase = scMixed
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
        SearchCase = scMixed
      end
      item
        FieldName = 'SUBGRUPO_NOME'
        WhereSyntax = 'SUBGRUPO_NOME'
        DisplayLabel = 'SUBGRUPO:'
        DisplayWidth = 20
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'PRC_CUSTO'
        WhereSyntax = 'PRC_CUSTO'
        DisplayLabel = 'PRE'#199'O CUSTO:'
        DisplayFormat = '###,##0.0000'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VALOR_VENDA'
        WhereSyntax = 'VALOR_VENDA'
        DisplayLabel = 'PRE'#199'O VENDA:'
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
  object frx_DistribuirReferencias: TfrxDBDataset
    UserName = 'fxdbTerceirizadosReferencias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'COR_ID=COR_ID'
      'COR=COR'
      'TAMANHO_ID=TAMANHO_ID'
      'TAMANHO=TAMANHO'
      'ORDEM_GRADE=ORDEM_GRADE'
      'QUANTIDADE=QUANTIDADE'
      'VLR_UNIT=VLR_UNIT'
      'VLR_TOTAL=VLR_TOTAL')
    DataSet = db_TerceirizadosReferencias
    BCDToCurrency = False
    Left = 592
    Top = 280
  end
  object db_TerceirizadosReferencias: TFDQuery
    AfterOpen = db_TerceirizadosReferenciasAfterOpen
    BeforePost = db_TerceirizadosReferenciasBeforePost
    AfterPost = db_TerceirizadosReferenciasAfterPost
    MasterSource = ds_Terceirizados
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM PCP_TERCEIRIZADO_REFERENCIAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 280
    Top = 264
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_TerceirizadosReferenciasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_TerceirizadosReferenciasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
    end
    object db_TerceirizadosReferenciasORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_TerceirizadosReferenciasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_TerceirizadosReferenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_TerceirizadosReferenciasCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_TerceirizadosReferenciasCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_TerceirizadosReferenciasTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_TerceirizadosReferenciasTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_TerceirizadosReferenciasORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_TerceirizadosReferenciasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      OnChange = db_TerceirizadosReferenciasQUANTIDADEChange
      DisplayFormat = '###,##0'
    end
    object db_TerceirizadosReferenciasVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      OnChange = db_TerceirizadosReferenciasVLR_UNITChange
      DisplayFormat = '###,##0.00'
    end
    object db_TerceirizadosReferenciasVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
  end
  object ds_TerceirizadosReferencias: TDataSource
    DataSet = db_TerceirizadosReferencias
    Left = 283
    Top = 216
  end
  object frx_Terceirizados: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'fxdbTerceirizados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'DATA=DATA'
      'DATARETORNO=DATARETORNO'
      'TERCEIRIZADO=TERCEIRIZADO'
      'TERCEIRIZADO_NOME=TERCEIRIZADO_NOME'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'NOMECIDADE=NOMECIDADE'
      'UF=UF'
      'DDD=DDD'
      'FONE=FONE'
      'FAX=FAX'
      'CONTATO=CONTATO'
      'EMAIL=EMAIL'
      'FASE=FASE'
      'FASE_NOME=FASE_NOME'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'OBSERVACAO=OBSERVACAO'
      'ENCERRADO=ENCERRADO'
      'GEROUPAGAMENTO=GEROUPAGAMENTO'
      'EMPRESA_1=EMPRESA_1'
      'CODIGO_1=CODIGO_1'
      'ORDEMPRODUCAO_1=ORDEMPRODUCAO_1')
    DataSet = dbView_Terceirizados
    BCDToCurrency = False
    Left = 656
    Top = 272
  end
  object db_Terceirizados: TFDQuery
    BeforeOpen = db_TerceirizadosBeforeOpen
    BeforePost = db_TerceirizadosBeforePost
    OnNewRecord = db_TerceirizadosNewRecord
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_TERCEIRIZADO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 64
    Top = 256
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_TerceirizadosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_TerceirizadosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_TerceirizadosORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_TerceirizadosDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_TerceirizadosDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
      EditMask = '99/99/9999'
    end
    object db_TerceirizadosTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_TerceirizadosFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_TerceirizadosQTDE_TOTAL: TIntegerField
      FieldName = 'QTDE_TOTAL'
      DisplayFormat = '###,##0'
    end
    object db_TerceirizadosVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object db_TerceirizadosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_TerceirizadosENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 10
    end
    object db_TerceirizadosGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      Size = 10
    end
  end
  object ds_Terceirizados: TDataSource
    DataSet = db_Terceirizados
    Left = 67
    Top = 207
  end
  object frx_Servicos: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42648.039632453710000000
    ReportOptions.LastChange = 42648.039632453710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      '        '
      'end.')
    Left = 592
    Top = 216
    Datasets = <
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end
      item
        DataSet = frx_dbCtaPagar
        DataSetName = 'frxdbCtaPagar'
      end
      item
        DataSet = frx_Terceirizados
        DataSetName = 'fxdbTerceirizados'
      end
      item
        DataSet = frx_DistribuirReferencias
        DataSetName = 'fxdbTerceirizadosReferencias'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSetName = ''
      Frame.Typ = []
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 454.881880000000000000
          Top = 26.070810000000000000
          Width = 230.543290000000000000
          Height = 49.322820000000000000
          Frame.Typ = []
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 466.102350000000000000
          Top = 51.291316610000000000
          Width = 123.118120000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL:')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Width = 714.330708660000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 595.709030000000000000
          Top = 51.291316610000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'VLR_TOTAL'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxdbTerceirizados."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 21.559060000000000000
          Width = 393.071120000000000000
          Height = 64.921150000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA RECEBIMENTO:____/____/________     Hora: ______:______ '
            ''
            ''
            'RESPONSAVEL:_______________________________________________'
            '                          (assinar)')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 465.882190000000000000
          Top = 37.015770000000000000
          Width = 123.118120000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE TOTAL:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 595.488870000000000000
          Top = 37.015770000000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'QTDE_TOTAL'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxdbTerceirizados."QTDE_TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Description = 'Rodap'#233' do relat'#243'rio'
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 0.755905510000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'SRV_EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."SRV_EMPRESA"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 0.755905510000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataField = 'EMP_SITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_dsEmpresa."EMP_SITE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212740000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 3.779530000000000000
          Width = 718.102660000000000000
          Height = 68.031496060000000000
          Fill.BackColor = 15724527
          Frame.Color = clWhite
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 72.559060000000000000
          Width = 718.000000000000000000
          Height = 145.779530000000000000
          Frame.Typ = []
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 103.685041810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME/RAZ'#195'O SOCIAL:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 462.779530000000000000
          Top = 103.685041810000000000
          Width = 58.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 590.779530000000000000
          Top = 103.685041810000000000
          Width = 123.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'I.E/RG:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 115.559060000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'TERCEIRIZADO_NOME'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."TERCEIRIZADO_NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 462.779530000000000000
          Top = 115.559060000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CNPJ'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."CNPJ"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 590.779530000000000000
          Top = 115.559060000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'IE'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."IE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 130.141734720000000000
          Width = 59.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 441.622140000000000000
          Top = 130.141734720000000000
          Width = 43.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 652.519790000000000000
          Top = 130.141734720000000000
          Width = 26.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 142.559060000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 441.622140000000000000
          Top = 142.559060000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'BAIRRO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."BAIRRO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 652.519790000000000000
          Top = 142.559060000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CEP'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."CEP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 157.354333150000000000
          Width = 65.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MUNICIPIO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 169.559060000000000000
          Width = 148.370130000000000000
          Height = 11.338582680000000000
          DataField = 'NOMECIDADE'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."NOMECIDADE"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 181.307050000000000000
          Top = 169.559060000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          DataField = 'UF'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."UF"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 181.307050000000000000
          Top = 157.354333150000000000
          Width = 20.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 219.968503937008000000
          Top = 157.354333150000000000
          Width = 33.779530000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 395.511750000000000000
          Top = 169.448821340000000000
          Width = 128.149660000000000000
          Height = 11.338582680000000000
          DataField = 'CONTATO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."CONTATO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 395.511750000000000000
          Top = 157.354333150000000000
          Width = 54.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CONTATO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 536.385900000000000000
          Top = 157.354333150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMAIL:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 536.385900000000000000
          Top = 169.448821340000000000
          Width = 171.622140000000000000
          Height = 11.338582680000000000
          DataField = 'EMAIL'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."EMAIL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 496.748300000000000000
          Top = 73.559060000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 496.748300000000000000
          Top = 87.811026060000000000
          Width = 23.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATA'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."DATA"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 606.748300000000000000
          Top = 87.811026060000000000
          Width = 71.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'DATARETORNO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."DATARETORNO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 606.748300000000000000
          Top = 73.559060000000000000
          Width = 106.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DE RETORNO:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 73.448821340000000000
          Width = 62.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559057560000000000
          Top = 87.811026060000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'CODIGO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."CODIGO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 102.149660000000000000
          Width = 718.110236220471900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 131.165430000000000000
          Width = 718.110236220471900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 155.842610000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 184.078850000000000000
          Width = 718.110236220000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 73.472480000000000000
          Top = 72.692950000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 72.692950000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 102.929190000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 102.929190000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 436.968770000000000000
          Top = 131.385900000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 649.299630000000000000
          Top = 131.385900000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 392.071120000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 155.716535433071000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 72.692950000000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.000000000000000000
          Height = 66.519675280000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 5.456710000000000000
          Top = 13.118120000000000000
          Width = 204.606060000000000000
          Height = 22.322820000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'ORDEM DE SERVI'#199'O')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 5.991818430000000000
          Top = 37.685049130000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 5.991818430000000000
          Top = 52.425206610000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 71.251626770000000000
          Top = 52.425206610000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 70.354391730000000000
          Top = 37.685049130000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] | [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 219.968503940000000000
          Top = 169.700789840000000000
          Width = 91.252010000000000000
          Height = 11.338582680000000000
          DataField = 'FONE'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."FONE"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 375.047310000000000000
          Top = 130.504020000000000000
          Width = 47.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 375.047310000000000000
          Top = 141.976460950000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'NUMERO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."NUMERO"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 130.881972760000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 296.889920000000000000
          Top = 79.370130000000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Expression = '<frx_DistribuirViewer."CODIGO">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 80.267780000000000000
          Top = 72.811070000000000000
          Width = 119.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 80.267780000000000000
          Top = 87.173274720000000000
          Width = 39.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'ORDEMPRODUCAO'
          DataSet = frx_Terceirizados
          DataSetName = 'fxdbTerceirizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizados."ORDEMPRODUCAO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 205.181202440000000000
          Top = 73.055198660000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 200.314960630000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REFERENCIA:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 200.314960630000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 200.314960630000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 200.314960629921000000
          Width = 65.338590000000000000
          Height = 13.228346456692900000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 200.314960629921000000
          Width = 95.574830000000000000
          Height = 13.228346456692900000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL A PAGAR:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.251968500000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        DataSet = frx_DistribuirReferencias
        DataSetName = 'fxdbTerceirizadosReferencias'
        RowCount = 0
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 65.338590000000000000
          Height = 13.228346456692900000
          DataField = 'REFERENCIA'
          DataSet = frx_DistribuirReferencias
          DataSetName = 'fxdbTerceirizadosReferencias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizadosReferencias."REFERENCIA"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 280.771800000000000000
          Height = 13.228346456692900000
          DataField = 'DESCRICAO'
          DataSet = frx_DistribuirReferencias
          DataSetName = 'fxdbTerceirizadosReferencias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxdbTerceirizadosReferencias."DESCRICAO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 65.338590000000000000
          Height = 13.228346456692900000
          DataField = 'QUANTIDADE'
          DataSet = frx_DistribuirReferencias
          DataSetName = 'fxdbTerceirizadosReferencias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxdbTerceirizadosReferencias."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 65.338590000000000000
          Height = 13.228346456692900000
          DataField = 'VLR_UNIT'
          DataSet = frx_DistribuirReferencias
          DataSetName = 'fxdbTerceirizadosReferencias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxdbTerceirizadosReferencias."VLR_UNIT"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Width = 95.574830000000000000
          Height = 13.228346456692900000
          DataField = 'VLR_TOTAL'
          DataSet = frx_DistribuirReferencias
          DataSetName = 'fxdbTerceirizadosReferencias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fxdbTerceirizadosReferencias."VLR_TOTAL"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = frx_dbCtaPagar
        DataSetName = 'frxdbCtaPagar'
        RowCount = 0
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 28.559060000000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 28.559060000000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 28.559060000000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 99.354360000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FATURAS A PAGAR:')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 43.354360000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        DataSet = frx_dbCtaPagar
        DataSetName = 'frxdbCtaPagar'
        RowCount = 0
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          DataField = 'DOCUMENTO'
          DataSet = frx_dbCtaPagar
          DataSetName = 'frxdbCtaPagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbCtaPagar."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          DataField = 'VALOR'
          DataSet = frx_dbCtaPagar
          DataSetName = 'frxdbCtaPagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbCtaPagar."VALOR"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 65.338590000000000000
          Height = 13.228346460000000000
          DataField = 'VENCIMENTO'
          DataSet = frx_dbCtaPagar
          DataSetName = 'frxdbCtaPagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbCtaPagar."VENCIMENTO"]')
          ParentFont = False
        end
      end
    end
  end
  object dbView_Terceirizados: TFDQuery
    MasterSource = ds_Terceirizados
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_TERCEIRIZADOPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 656
    Top = 216
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_Somar: TFDQuery
    AfterOpen = db_TerceirizadosReferenciasAfterOpen
    BeforePost = db_TerceirizadosReferenciasBeforePost
    MasterSource = ds_Terceirizados
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'SUM(QUANTIDADE) AS QTDE_TOTAL,'
      'SUM(VLR_TOTAL) AS VLR_TOTAL'
      ''
      'FROM PCP_TERCEIRIZADO_REFERENCIAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 280
    Top = 328
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_CtaPagar: TFDQuery
    BeforeOpen = db_CtaPagarBeforeOpen
    BeforePost = db_CtaPagarBeforePost
    AfterPost = db_CtaPagarAfterPost
    MasterSource = ds_Terceirizados
    MasterFields = 'EMPRESA;CODIGO;TERCEIRIZADO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'NOTAFISCAL=:CODIGO'
      'AND'
      'FORNECEDOR=:TERCEIRIZADO')
    Left = 420
    Top = 218
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TERCEIRIZADO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaPagarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_CtaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_CtaPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object db_CtaPagarSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaPagarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
    end
    object db_CtaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaPagarCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaPagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaPagarVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_SALDO: TFloatField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_CtaPagarDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaPagarPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_CtaPagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaPagarPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
  end
  object DS_CtaPagar: TDataSource
    DataSet = db_CtaPagar
    Left = 420
    Top = 266
  end
  object frx_dbCtaPagar: TfrxDBDataset
    UserName = 'frxdbCtaPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'FORNECEDOR=FORNECEDOR'
      'NOTAFISCAL=NOTAFISCAL'
      'SERIENF=SERIENF'
      'DATA=DATA'
      'VENCIMENTO=VENCIMENTO'
      'DATA_PAGTO=DATA_PAGTO'
      'DOCUMENTO=DOCUMENTO'
      'PARCELA=PARCELA'
      'CFOP=CFOP'
      'ESPECIE=ESPECIE'
      'TIPO=TIPO'
      'VALOR=VALOR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_SALDO=VALOR_SALDO'
      'DEPARTAMENTO=DEPARTAMENTO'
      'PLANO_CONTAS=PLANO_CONTAS'
      'HISTORICO=HISTORICO'
      'OBSERVACAO=OBSERVACAO'
      'QUITADO=QUITADO'
      'PAGTOTERCEIRIZADO=PAGTOTERCEIRIZADO')
    DataSet = db_CtaPagar
    BCDToCurrency = False
    Left = 416
    Top = 328
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 588
    Top = 75
  end
end
