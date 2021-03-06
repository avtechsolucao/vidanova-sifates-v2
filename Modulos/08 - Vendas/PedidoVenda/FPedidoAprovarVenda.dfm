object FrmPedidoAprovarVenda: TFrmPedidoAprovarVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Aprova'#231#227'o de Pedido de Venda'
  ClientHeight = 715
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TGroupBox
    Left = 0
    Top = 123
    Width = 1028
    Height = 544
    Align = alTop
    Caption = 'Edi'#231#227'o de Pedidos'
    TabOrder = 1
    object AdvGroupBox3: TGroupBox
      Left = 2
      Top = 489
      Width = 1024
      Height = 53
      Align = alBottom
      Caption = 'TOTAIS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object AdvGroupBox2: TGroupBox
      Left = 2
      Top = 201
      Width = 1024
      Height = 288
      Align = alClient
      Caption = '[ ITENS DO PEDIDO DE VENDA ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cxGrid2: TcxGrid
        Left = 2
        Top = 15
        Width = 1020
        Height = 271
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        RootLevelOptions.DetailFrameColor = clSkyBlue
        object cxGridPedidosItens: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGridPedidosItensCustomDrawCell
          DataController.DataSource = ds_PedidoItens
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxGridPedidosItensColumn1: TcxGridDBColumn
            Caption = 'REFER'#202'NCIA'
            DataBinding.FieldName = 'REFERENCIA'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Options.Moving = False
            Width = 116
          end
          object cxGridPedidosItensColumn2: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O'
            DataBinding.FieldName = 'DESCRICAO'
            MinWidth = 80
            Options.Moving = False
            Width = 526
          end
          object cxGridPedidosItensColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'QTDE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '###,##0'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Options.Moving = False
            Width = 80
          end
          object cxGridPedidosItensColumn4: TcxGridDBColumn
            Caption = 'VALOR UNIT'#193'RIO'
            DataBinding.FieldName = 'VLR_UNIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Options.Moving = False
            Width = 110
          end
          object cxGridPedidosItensColumn5: TcxGridDBColumn
            Caption = 'VALOR TOTAL'
            DataBinding.FieldName = 'VLR_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 80
            Options.AutoWidthSizable = False
            Options.Moving = False
            Width = 110
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridPedidosItens
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 1024
      Height = 186
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      RootLevelOptions.DetailFrameColor = clSkyBlue
      object cxGridPedidos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGridPedidosCustomDrawCell
        DataController.DataSource = ds_Pedido
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGridPedidosColumn8: TcxGridDBColumn
          Caption = 'Pedido'
          DataBinding.FieldName = 'CODIGO'
          MinWidth = 75
          Options.AutoWidthSizable = False
        end
        object cxGridPedidosColumn10: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          MinWidth = 85
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGridPedidosColumn1: TcxGridDBColumn
          Caption = 'Entrega'
          DataBinding.FieldName = 'DATA_ENTREGA'
          MinWidth = 0
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGridPedidosColumn2: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTE_NOME'
          MinWidth = 80
          Width = 160
        end
        object cxGridPedidosColumn3: TcxGridDBColumn
          Caption = 'Vendedor'
          DataBinding.FieldName = 'VENDEDOR_NOME'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 139
        end
        object cxGridPedidosColumn11: TcxGridDBColumn
          Caption = 'Entregador'
          DataBinding.FieldName = 'TRANSPORTADORA_NOME'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 139
        end
        object cxGridPedidosColumn4: TcxGridDBColumn
          Caption = 'Qtde Total'
          DataBinding.FieldName = 'QTDE_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,##0'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Options.Moving = False
          Width = 80
        end
        object cxGridPedidosColumn5: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'VLR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          MinWidth = 95
          Options.AutoWidthSizable = False
          Options.Moving = False
          Width = 95
        end
        object cxGridPedidosColumn6: TcxGridDBColumn
          Caption = 'Aprovado'
          DataBinding.FieldName = 'APROVADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'SIM'
          Properties.ValueGrayed = 'NAO'
          MinWidth = 80
          Options.AutoWidthSizable = False
        end
        object cxGridPedidosColumn7: TcxGridDBColumn
          Caption = 'Faturado'
          DataBinding.FieldName = 'STATUS'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'SIM'
          Properties.ValueGrayed = 'NAO'
          Properties.ValueUnchecked = 'NAO'
          MinWidth = 80
          Options.AutoWidthSizable = False
        end
        object cxGridPedidosColumn9: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'FORMA_PAGTO_NOME'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 200
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridPedidos
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 667
    Width = 1028
    Height = 48
    Align = alBottom
    TabOrder = 2
    object Btnaprovar: TBitBtn
      Left = 5
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Aprovar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnaprovarClick
    end
    object Btndesaprovar: TBitBtn
      Left = 86
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Reabrir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtndesaprovarClick
    end
    object Btnsair: TBitBtn
      Left = 248
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnsairClick
    end
    object BtnProcurar: TBitBtn
      Left = 167
      Top = 5
      Width = 75
      Height = 40
      Caption = 'Procurar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnProcurarClick
    end
  end
  object dbeditPedidoProcurar: TIDBEditDialog
    Left = 352
    Top = 149
    Width = 65
    Height = 22
    HelpKeyWord = ''
    Color = clWindow
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = ''
    Visible = False
    EditType = etAlphaNumeric
    EmptyText = 'Tecle F8'
    FocusColor = clBtnFace
    LabelCaption = 'Transportadora:'
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
    ButtonHint = 'Transportadora:'
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
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      '%WHERE%'
      'ORDER BY CODIGO DESC')
    SearchDialogFieldList = <
      item
        FieldName = 'CODIGO'
        WhereSyntax = 'CODIGO'
        DisplayLabel = 'PEDIDO:'
        DisplayWidth = 10
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
        DisplayLabel = 'DATA:'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'DATA_ENTREGA'
        WhereSyntax = 'DATA_ENTREGA'
        DisplayLabel = 'DATA ENTREGA:'
        DisplayWidth = 16
        DisplayColumnWidth = 0
        FieldType = ftDateTime
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'CLIENTE_NOME'
        WhereSyntax = 'CLIENTE_NOME'
        DisplayLabel = 'CLIENTE:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'VENDEDOR_NOME'
        WhereSyntax = 'VENDEDOR_NOME'
        DisplayLabel = 'VENDEDOR:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'QTDE_TOTAL'
        WhereSyntax = 'QTDE_TOTAL'
        DisplayLabel = 'QTDE TOTAL:'
        DisplayFormat = '###,##0'
        DisplayWidth = 12
        DisplayColumnWidth = 0
        FieldType = ftInteger
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'VLR_TOTAL'
        WhereSyntax = 'VLR_TOTAL'
        DisplayLabel = 'VALOR TOTAL:'
        DisplayFormat = '###,##0.00'
        DisplayWidth = 14
        DisplayColumnWidth = 0
        FieldType = ftFloat
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scEqual
        SearchCase = scMixed
      end
      item
        FieldName = 'APROVADO'
        WhereSyntax = 'APROVADO'
        DisplayLabel = 'APROVADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'STATUS'
        WhereSyntax = 'STATUS'
        DisplayLabel = 'FATURADO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end
      item
        FieldName = 'PRODUZINDO'
        WhereSyntax = 'PRODUZINDO'
        DisplayLabel = 'PRODUZINDO:'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = False
        EmptyOperation = eoNull
        DefaultComparison = scBeginsWith
        SearchCase = scMixed
      end>
    SearchPresetList = <>
    DialogCaption = 'Pesquisa'
    DialogWidth = 965
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
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1028
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Color = 7500402
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    ExplicitWidth = 1028
    ExplicitHeight = 36
    inherited Image3: TImage
      Width = 1028
      Height = 36
      ExplicitTop = 36
      ExplicitWidth = 1028
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 1028
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 1028
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 885
        Height = 28
        Caption = 'Aprova'#231#227'o de Pedido de Venda'
        ExplicitWidth = 320
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        Height = 34
        ExplicitLeft = 972
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 969
        Height = 28
        ExplicitLeft = 972
        ExplicitHeight = 34
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 53
    Width = 1028
    Height = 70
    Align = alTop
    Caption = 'Par'#226'metros de Pedidos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object EditPedido: TLabeledEdit
      Left = 14
      Top = 37
      Width = 121
      Height = 23
      EditLabel.Width = 113
      EditLabel.Height = 15
      EditLabel.Caption = 'C'#211'DIGO DO PEDIDO:'
      NumbersOnly = True
      TabOrder = 0
      OnChange = EditPedidoChange
      OnKeyDown = EditPedidoKeyDown
    end
    object rdgFiltroPedidos: TRadioGroup
      Left = 560
      Top = 17
      Width = 466
      Height = 51
      Align = alRight
      Caption = 'Pedidos'
      Columns = 4
      ItemIndex = 3
      Items.Strings = (
        'Pendentes'
        'Aprovados'
        'Faturados'
        'Todos')
      TabOrder = 1
      OnClick = rdgFiltroPedidosClick
    end
    object GroupBox2: TGroupBox
      Left = 320
      Top = 17
      Width = 240
      Height = 51
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 25
        Top = 32
        Width = 13
        Height = 13
        Caption = 'De'
      end
      object Label4: TLabel
        Left = 127
        Top = 32
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object MskDataIni: TMaskEdit
        Left = 40
        Top = 28
        Width = 68
        Height = 21
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '01/01/2012'
      end
      object MskDataFim: TMaskEdit
        Left = 146
        Top = 28
        Width = 69
        Height = 21
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '31/12/2012'
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 1028
    Height = 17
    Align = alTop
    PopupMenu = PopupMenu1
    TabOrder = 5
  end
  object db_Pedido: TFDQuery
    AfterScroll = db_PedidoAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM VIEW_PEDIDOSVENDAS'
      'WHERE'
      'STATUS IN ('#39'N'#39','#39'NAO'#39')')
    Left = 216
    Top = 64
  end
  object db_PedidoItens: TFDQuery
    MasterSource = ds_Pedido
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 280
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 5
      end>
  end
  object ds_Pedido: TDataSource
    AutoEdit = False
    DataSet = db_Pedido
    Left = 64
    Top = 192
  end
  object ds_PedidoItens: TDataSource
    DataSet = db_PedidoItens
    Left = 152
    Top = 200
  end
  object POP_Produto: TPopupMenu
    Left = 264
    Top = 112
    object ProcurarProduto1: TMenuItem
      Caption = 'Procurar Produto'
      ShortCut = 119
    end
  end
  object SP_Aprovar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPVENDA_PEDIDOAPROVAR'
    Left = 184
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NPEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object SP_MovimentoAtualizar: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPMVTO_PRODUTOSATUALIZA'
    Left = 184
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 24
    object AprovarTudo1: TMenuItem
      Caption = 'Aprovar Tudo'
      OnClick = AprovarTudo1Click
    end
    object Desaprovartudo1: TMenuItem
      Caption = 'Desaprovar tudo'
      OnClick = Desaprovartudo1Click
    end
  end
  object db_ChecarAtrasos: TFDQuery
    BeforeOpen = db_ChecarAtrasosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  * FROM VIEW_ATRASOS'
      'where'
      'EMPRESA=:EMPRESA'
      'AND'
      'CLIENTE=:CLIENTE')
    Left = 328
    Top = 240
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
