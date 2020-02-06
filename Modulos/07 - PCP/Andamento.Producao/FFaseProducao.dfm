object FrmFaseProducao: TFrmFaseProducao
  Left = 0
  Top = 0
  Caption = 'Andamento de Fase de Produ'#231#227'o'
  ClientHeight = 604
  ClientWidth = 1136
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1136
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 1136
    ExplicitHeight = 36
    inherited Image3: TImage
      Top = 36
      Width = 1136
      ExplicitTop = 36
      ExplicitWidth = 1136
      ExplicitHeight = 0
    end
    inherited pnTitulo: TPanel
      Width = 1136
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 1136
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 999
        Height = 28
        Caption = 'Andamento de Fase de Produ'#231#227'o'
        ExplicitWidth = 337
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        Left = 1080
        Height = 34
        ExplicitLeft = 1080
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Height = 34
        ExplicitLeft = 952
        ExplicitHeight = 34
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 564
    Width = 1136
    Height = 40
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 625
    DesignSize = (
      1136
      40)
    object btnDefeitos: TBitBtn
      Left = 702
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Informar Defeito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 27865
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnDefeitosClick
    end
    object BitBtn2: TBitBtn
      Left = 10
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object btnPerdas: TBitBtn
      Left = 925
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Informar Perda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnPerdasClick
    end
    object btnRetoronServicos: TButton
      Left = 583
      Top = 6
      Width = 110
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Retorno de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnRetoronServicosClick
    end
    object btnEstornarDefeitos: TBitBtn
      Left = 807
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Estornar Defeito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 27865
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnEstornarDefeitosClick
    end
    object btnEstornarPerdas: TBitBtn
      Left = 1030
      Top = 6
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Estornar Perda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnEstornarPerdasClick
    end
    object BtnRemessas: TBitBtn
      Left = 498
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Remessas...'
      TabOrder = 6
      OnClick = BtnRemessasClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 1136
    Height = 528
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 589
    object AdvGroupBox1: TGroupBox
      Left = 1
      Top = 191
      Width = 1134
      Height = 336
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 397
      object GroupBox5: TGroupBox
        Left = 2
        Top = 15
        Width = 386
        Height = 380
        Align = alClient
        Caption = '[ PRODUTOS DA FASE ATUAL ]'
        TabOrder = 0
        object cxGrid: TcxGrid
          Left = 2
          Top = 15
          Width = 382
          Height = 363
          Align = alClient
          TabOrder = 0
          object cxGridProdFase: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_OrdemProducaoFases
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridProdFaseReferencia: TcxGridDBColumn
              Caption = 'Refer'#234'ncia'
              DataBinding.FieldName = 'REFERENCIA'
              MinWidth = 120
              Options.AutoWidthSizable = False
              Width = 120
            end
            object cxGridProdFaseDescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Moving = False
              Width = 267
            end
          end
          object cxGridNivel: TcxGridLevel
            GridView = cxGridProdFase
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 768
        Top = 15
        Width = 287
        Height = 380
        Align = alRight
        Caption = '[ PR'#211'XIMA FASE ]'
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 2
          Top = 15
          Width = 283
          Height = 363
          Align = alClient
          TabOrder = 0
          object cxGridFase: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_FasesDestino
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridFaseOrdem: TcxGridDBColumn
              Caption = 'Ordem'
              DataBinding.FieldName = 'ORDEM'
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 84
            end
            object cxGridFaseNomeFase: TcxGridDBColumn
              Caption = 'Fase'
              DataBinding.FieldName = 'NOME'
              MinWidth = 195
              Options.Moving = False
              Width = 195
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridFase
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 388
        Top = 15
        Width = 380
        Height = 380
        Align = alRight
        Caption = 'Grade Cores/Tamanhos'
        TabOrder = 2
        object Panel4: TPanel
          Left = 2
          Top = 337
          Width = 376
          Height = 41
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 0
          object EditQuantidade: TLabeledEdit
            Left = 184
            Top = 9
            Width = 78
            Height = 23
            Alignment = taCenter
            Color = clBtnFace
            EditLabel.Width = 71
            EditLabel.Height = 15
            EditLabel.Caption = 'Quantidade: '
            EditLabel.Font.Charset = ANSI_CHARSET
            EditLabel.Font.Color = clBlack
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Calibri'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            LabelPosition = lpLeft
            ParentFont = False
            TabOrder = 0
          end
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 15
          Width = 376
          Height = 322
          Align = alClient
          TabOrder = 1
          object cxGridCorTam: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridCorTamCustomDrawCell
            DataController.DataSource = ds_ReferenciasFaseGrade
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridCorTamCor: TcxGridDBColumn
              Caption = 'Cor:'
              DataBinding.FieldName = 'COR'
              MinWidth = 120
              Options.Moving = False
              Width = 120
            end
            object cxGridCorTamTamanho: TcxGridDBColumn
              Caption = 'Tamanho:'
              DataBinding.FieldName = 'TAMANHO'
              MinWidth = 70
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 70
            end
            object cxGridCorTamProduzir: TcxGridDBColumn
              Caption = 'Produzir:'
              DataBinding.FieldName = 'QTDE_PRODUZIR'
              MinWidth = 60
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 60
            end
            object cxGridCorTamDefeito: TcxGridDBColumn
              Caption = 'Defeito:'
              DataBinding.FieldName = 'QTDE_DEFEITO'
              MinWidth = 60
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 60
            end
            object cxGridCorTamPerda: TcxGridDBColumn
              Caption = 'Perda:'
              DataBinding.FieldName = 'QTDE_PERDA'
              MinWidth = 60
              Options.AutoWidthSizable = False
              Options.Moving = False
              Width = 60
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridCorTam
          end
        end
      end
      object Panel3: TPanel
        Left = 1055
        Top = 15
        Width = 77
        Height = 380
        Align = alRight
        TabOrder = 3
        object btnTransferir: TBitBtn
          Left = 6
          Top = 91
          Width = 65
          Height = 50
          Caption = 'Transferir'
          Kind = bkOK
          Layout = blGlyphBottom
          NumGlyphs = 2
          TabOrder = 0
          OnClick = btnTransferirClick
        end
      end
    end
    object BoxFornecedor: TGroupBox
      Left = 1
      Top = 1
      Width = 1134
      Height = 74
      Align = alTop
      Caption = 'Dados Principais'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        1134
        74)
      object EditDescricao: TEdit
        Left = 254
        Top = 34
        Width = 594
        Height = 23
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '***'
      end
      object dbProcurarReferencia: TIDBEditDialog
        Left = 119
        Top = 34
        Width = 131
        Height = 23
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
        Visible = True
        OnChange = dbProcurarReferenciaChange
        OnEnter = dbProcurarReferenciaEnter
        EditType = etAlphaNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Refer'#234'ncia'
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
        SQLdbFocusControl = EditDescricao
        SQLdbCampoRetorno = 'DESCRICAO'
        SQLdbRetornoVazio = '***'
        SQLdbCampoParametro = 'REFERENCIA'
        SQLdbSQL.Strings = (
          'SELECT *  FROM VIEW_REFERENCIAS'
          'WHERE'
          'TIPO_PRODUTO IN ('#39'ACA'#39','#39'ACABADO'#39')'
          'AND'
          'REFERENCIA=:REFERENCIA')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT '
          'DISTINCT REFERENCIA, DESCRICAO  '
          'FROM PCP_ORDEMPRODUCAO_ITENS'
          
            'INNER JOIN PCP_ORDEMPRODUCAO ON PCP_ORDEMPRODUCAO.EMPRESA=PCP_OR' +
            'DEMPRODUCAO_ITENS.EMPRESA '
          'AND '
          'PCP_ORDEMPRODUCAO.CODIGO=PCP_ORDEMPRODUCAO_ITENS.CODIGO '
          'AND '
          'PCP_ORDEMPRODUCAO.ENCERRADO IN ('#39'N'#39','#39'NAO'#39')'
          'WHERE'
          '%WHERE%'
          'ORDER BY REFERENCIA'
          '')
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
            DisplayWidth = 84
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
      object LocalizaOrdemProducao: TIDBEditDialog
        Left = 9
        Top = 34
        Width = 104
        Height = 23
        HelpKeyWord = ''
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 0
        Text = ''
        Visible = True
        OnChange = LocalizaOrdemProducaoChange
        LabelCaption = 'Ordem de Produ'#231#227'o'
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
        SQLdbCampoRetorno = 'CODIGO'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT *  FROM VIEW_ORDEMPRODUCAO'
          'WHERE'
          'ENCERRADO IN ('#39'N'#39','#39'NAO'#39')'
          'AND'
          '%WHERE%'
          '')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#211'DIGO:'
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
            FieldName = 'DATAFECHAMENTO'
            WhereSyntax = 'DATAFECHAMENTO'
            DisplayLabel = 'FECHAMENTO:'
            DisplayWidth = 13
            DisplayColumnWidth = 0
            FieldType = ftDateTime
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'NATUREZA'
            WhereSyntax = 'NATUREZA'
            DisplayLabel = 'NATUREZA:'
            DisplayWidth = 10
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
            DisplayLabel = 'PRODUZIR:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_PRODUZIDA'
            WhereSyntax = 'QTDE_PRODUZIDA'
            DisplayLabel = 'PRODUZIDA:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'QTDE_RESTANTE'
            WhereSyntax = 'QTDE_RESTANTE'
            DisplayLabel = 'RESTANTE:'
            DisplayWidth = 10
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'PERCENTUAL'
            WhereSyntax = 'PERCENTUAL'
            DisplayLabel = 'CONCLUIDO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftFloat
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'AUTORIZADO'
            WhereSyntax = 'AUTORIZADO'
            DisplayLabel = 'AUTORIZADO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'STATUS'
            WhereSyntax = 'STATUS'
            DisplayLabel = 'STATUS:'
            DisplayWidth = 8
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'ENCERRADO'
            WhereSyntax = 'ENCERRADO'
            DisplayLabel = 'ENCERRADO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = False
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end
          item
            FieldName = 'REFERENCIA'
            WhereSyntax = 'REFERENCIA'
            DisplayLabel = 'REFERENCIA'
            DisplayWidth = 20
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        ShowPresets = False
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
      object btnEncerrar: TBitBtn
        Left = 995
        Top = 11
        Width = 120
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Encerrar Andamento...'
        TabOrder = 3
        OnClick = btnEncerrarClick
      end
      object BitBtn4: TBitBtn
        Left = 995
        Top = 42
        Width = 120
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Estornos'
        Enabled = False
        TabOrder = 4
        Visible = False
      end
    end
    object gbxFaseAtual: TGroupBox
      Left = 1
      Top = 75
      Width = 1134
      Height = 116
      Align = alTop
      Caption = 
        'Fases da Produ'#231#227'o (para navegar, clique com o mouse ou use as se' +
        'tas)'
      TabOrder = 0
      object ctrlgridFases: TDBCtrlGrid
        Left = 2
        Top = 15
        Width = 1130
        Height = 99
        Align = alClient
        AllowDelete = False
        AllowInsert = False
        ColCount = 10
        Color = clBtnFace
        DataSource = ds_FasesGradeLista
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Orientation = goHorizontal
        PanelHeight = 82
        PanelWidth = 113
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        RowCount = 1
        SelectedColor = 55293
        object pnGridDetalhes: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 103
          Height = 72
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BevelKind = bkFlat
          BevelWidth = 2
          ParentBackground = False
          ParentColor = True
          TabOrder = 0
          object DBText2: TDBText
            AlignWithMargins = True
            Left = 7
            Top = 34
            Width = 85
            Height = 27
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            Alignment = taCenter
            DataField = 'NOME'
            DataSource = ds_FasesGradeLista
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
            ExplicitLeft = 0
            ExplicitTop = 23
            ExplicitWidth = 100
            ExplicitHeight = 41
          end
          object DBText1: TDBText
            AlignWithMargins = True
            Left = 7
            Top = 7
            Width = 85
            Height = 17
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alTop
            Alignment = taCenter
            DataField = 'ORDEM'
            DataSource = ds_FasesGradeLista
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 2
            ExplicitWidth = 120
          end
        end
      end
    end
  end
  object db_FasesGradeLista: TFDQuery
    AfterClose = db_FasesGradeListaAfterClose
    AfterScroll = db_FasesGradeListaAfterScroll
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT '
      'CODIGO,'
      'FASE,'
      'ORDEM,'
      'NOME'
      'FROM  CAD_FASESGRADE_LISTA'
      'WHERE'
      'CODIGO=:CODIGO'
      '--AND'
      '--FASE=:FASE'
      'ORDER BY CODIGO, ORDEM')
    Left = 144
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_FasesGradeLista: TDataSource
    DataSet = db_FasesGradeLista
    Left = 280
    Top = 136
  end
  object db_OrdemProducaoFases: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      
        '--DISTINCT CODIGO, FASE, REFERENCIA, DESCRICAO, SOBRA, FASETRANS' +
        'FERENCIA, TERCEIRIZADO'
      'DISTINCT '
      'CODIGO, FASE, REFERENCIA, DESCRICAO '
      'FROM PCP_ORDEMPRODUCAO_ANDAMENTO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'FASE=:FASE'
      'AND'
      'REFERENCIA=:REFERENCIA'
      ''
      ''
      ''
      'ORDER BY REFERENCIA')
    Left = 200
    Top = 392
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
        Name = 'FASE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_OrdemProducaoFasesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_OrdemProducaoFasesFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_OrdemProducaoFasesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_OrdemProducaoFasesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object ds_OrdemProducaoFases: TDataSource
    DataSet = db_OrdemProducaoFases
    Left = 200
    Top = 448
  end
  object db_FasesDestino: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT '
      'FASE,'
      'ORDEM,'
      'NOME'
      'FROM  CAD_FASESGRADE_LISTA'
      'WHERE'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY ORDEM')
    Left = 776
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_FasesDestino: TDataSource
    DataSet = db_FasesDestino
    Left = 776
    Top = 360
  end
  object db_ReferenciasFaseGrade: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT '
      'DISTINCT REFERENCIA,'
      'COR_ID,'
      'COR,'
      'TAMANHO_ID,'
      'TAMANHO,'
      'ORDEM_GRADE,'
      'TAMANHO,'
      'QTDE_PRODUZIR,'
      'QTDE_TRANSFERIDA,'
      'QTDE_PENDENTE,'
      'QTDE_DEFEITO,'
      'QTDE_PERDA,'
      'TERCEIRIZADO,'
      'FASETRANSFERENCIA'
      'FROM PCP_ORDEMPRODUCAO_ANDAMENTO'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'FASE=:FASE'
      'AND'
      'REFERENCIA=:REFERENCIA'
      'AND ((QTDE_PRODUZIR>0) OR (QTDE_DEFEITO>0) OR (QTDE_PERDA>0)  )'
      ''
      'ORDER BY '
      'PCP_ORDEMPRODUCAO_ANDAMENTO.COR, '
      'PCP_ORDEMPRODUCAO_ANDAMENTO.TAMANHO, '
      'PCP_ORDEMPRODUCAO_ANDAMENTO.ORDEM_GRADE')
    Left = 384
    Top = 304
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
      end
      item
        Name = 'FASE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
    object db_ReferenciasFaseGradeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_ReferenciasFaseGradeCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_ReferenciasFaseGradeCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_ReferenciasFaseGradeTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_ReferenciasFaseGradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_ReferenciasFaseGradeORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_ReferenciasFaseGradeTAMANHO_1: TStringField
      FieldName = 'TAMANHO_1'
      Size = 30
    end
    object db_ReferenciasFaseGradeQTDE_PRODUZIR: TIntegerField
      FieldName = 'QTDE_PRODUZIR'
    end
    object db_ReferenciasFaseGradeQTDE_TRANSFERIDA: TIntegerField
      FieldName = 'QTDE_TRANSFERIDA'
    end
    object db_ReferenciasFaseGradeQTDE_PENDENTE: TIntegerField
      FieldName = 'QTDE_PENDENTE'
    end
    object db_ReferenciasFaseGradeQTDE_DEFEITO: TIntegerField
      FieldName = 'QTDE_DEFEITO'
    end
    object db_ReferenciasFaseGradeQTDE_PERDA: TIntegerField
      FieldName = 'QTDE_PERDA'
    end
    object db_ReferenciasFaseGradeTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_ReferenciasFaseGradeFASETRANSFERENCIA: TIntegerField
      FieldName = 'FASETRANSFERENCIA'
    end
  end
  object ds_ReferenciasFaseGrade: TDataSource
    DataSet = db_ReferenciasFaseGrade
    Left = 384
    Top = 360
  end
  object SP_OrdemPRODUCAO_FINALIZAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPCP_FINALIZAR'
    Left = 400
    Top = 48
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'SREFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 5
        Name = 'SFASE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'SVIA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object db_AndamentoReferencias: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_FASETRANSFERENCIA_ITENS'
      'WHERE'
      'EMPRESA=:NEMPRESA'
      'AND'
      'ORDEMPRODUCAO=:NORDEMPRODUCAO'
      'AND'
      'QTDE_ENVIADA>0'
      ''
      'ORDER BY REFERENCIA, COR, ORDEM_GRADE')
    Left = 632
    Top = 72
    ParamData = <
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object db_AndamentoReferenciasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_AndamentoReferenciasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_AndamentoReferenciasORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_AndamentoReferenciasDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_AndamentoReferenciasDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
    end
    object db_AndamentoReferenciasTERCEIRIZADO: TIntegerField
      FieldName = 'TERCEIRIZADO'
    end
    object db_AndamentoReferenciasFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_AndamentoReferenciasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_AndamentoReferenciasCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_AndamentoReferenciasCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_AndamentoReferenciasTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_AndamentoReferenciasTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_AndamentoReferenciasORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_AndamentoReferenciasQTDE_ENVIADA: TIntegerField
      FieldName = 'QTDE_ENVIADA'
    end
    object db_AndamentoReferenciasQTDE_RETORNADA: TIntegerField
      FieldName = 'QTDE_RETORNADA'
    end
    object db_AndamentoReferenciasQTDE_PERDAS: TIntegerField
      FieldName = 'QTDE_PERDAS'
    end
    object db_AndamentoReferenciasQTDE_DEFEITOS: TIntegerField
      FieldName = 'QTDE_DEFEITOS'
    end
    object db_AndamentoReferenciasVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object db_AndamentoReferenciasFASECONCLUIDA: TStringField
      FieldName = 'FASECONCLUIDA'
      Size = 10
    end
    object db_AndamentoReferenciasIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Origin = 'IDENTIFICADOR'
      Size = 30
    end
    object db_AndamentoReferenciasGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      Origin = 'GEROUPAGAMENTO'
      Size = 10
    end
    object db_AndamentoReferenciasENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Origin = 'ENCERRADO'
      Size = 10
    end
  end
  object db_OrdemProducaoProduzido: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_PRODUZIDOS'
      'WHERE'
      'EMPRESA=:NEMPRESA'
      'AND'
      'CODIGO=:NORDEMPRODUCAO'
      '-- AND BAIXADO='#39'N'#39)
    Left = 832
    Top = 120
    ParamData = <
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_OrdemProducaoProduzidoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_OrdemProducaoProduzidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_OrdemProducaoProduzidoAPROVADO: TStringField
      FieldName = 'APROVADO'
      Required = True
      Size = 10
    end
    object db_OrdemProducaoProduzidoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
    end
    object db_OrdemProducaoProduzidoDATAATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATAATUALIZACAO'
    end
    object db_OrdemProducaoProduzidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_OrdemProducaoProduzidoIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 30
    end
    object db_OrdemProducaoProduzidoCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object db_OrdemProducaoProduzidoCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_OrdemProducaoProduzidoTAMANHO_ID: TIntegerField
      FieldName = 'TAMANHO_ID'
    end
    object db_OrdemProducaoProduzidoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_OrdemProducaoProduzidoORDEM_GRADE: TStringField
      FieldName = 'ORDEM_GRADE'
      Size = 30
    end
    object db_OrdemProducaoProduzidoCELULA_COL: TIntegerField
      FieldName = 'CELULA_COL'
    end
    object db_OrdemProducaoProduzidoCOLUNA_ROW: TIntegerField
      FieldName = 'COLUNA_ROW'
    end
    object db_OrdemProducaoProduzidoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object db_OrdemProducaoProduzidoQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
    end
    object db_OrdemProducaoProduzidoBAIXADO: TStringField
      FieldName = 'BAIXADO'
      Size = 10
    end
    object db_OrdemProducaoProduzidoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 200
    end
  end
  object SP_ReferenciaLancaGrade: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPSPPRODUTOS_LANCAGRADE'
    Left = 736
    Top = 56
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SIDENTIFICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = 'NQUANTIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 6
        Name = 'NQUALIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QryMovimentacaoProdutos: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM MOVIMENTOS_PRODUTOS'
      'WHERE'
      'EMPRESA=:NEMPRESA'
      '')
    Left = 832
    Top = 168
    ParamData = <
      item
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
