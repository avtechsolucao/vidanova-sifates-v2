object FrmFaseProducaoLancaEstoque: TFrmFaseProducaoLancaEstoque
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Finaliza'#231#227'o de fase de produ'#231#227'o | LAN'#199'AR NO ESTOQUE'
  ClientHeight = 513
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 674
    Height = 41
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object BtnOk: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnCancelar: TBitBtn
      Left = 89
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
    Width = 674
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 674
    ExplicitHeight = 36
    inherited Image3: TImage
      Width = 674
      Height = 36
      ExplicitWidth = 674
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 674
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 674
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 549
        Height = 28
        Caption = 'LAN'#199'AR NO ESTOQUE | Finaliza'#231#227'o de fase de produ'#231#227'o'
        ExplicitWidth = 580
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 618
        Height = 34
        ExplicitLeft = 618
        ExplicitHeight = 34
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 53
    Width = 674
    Height = 92
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object EditQualidade: TIDBEditDialog
      Left = 11
      Top = 35
      Width = 90
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
      TabOrder = 0
      Text = '0'
      Visible = True
      LabelCaption = 'Controle de Qualidade:'
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
      SQLdbFocusControl = Edit2
      SQLdbCampoRetorno = 'DESCRICAO'
      SQLdbRetornoVazio = '***'
      SQLdbCampoParametro = 'CODIGO'
      SQLdbSQL.Strings = (
        'SELECT * FROM CAD_QUALIDADES'
        'WHERE'
        'CODIGO=:CODIGO'
        '')
      SQLdbMaxLenght = 10
      SearchQuery.Strings = (
        'SELECT * FROM CAD_QUALIDADES'
        'WHERE'
        '%WHERE%')
      SearchDialogFieldList = <
        item
          FieldName = 'CODIGO'
          WhereSyntax = 'CODIGO'
          DisplayLabel = 'C'#211'DIGO:'
          DisplayWidth = 12
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
    object Edit2: TEdit
      Left = 106
      Top = 35
      Width = 513
      Height = 23
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '***'
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 36
    Width = 674
    Height = 17
    Align = alTop
    TabOrder = 4
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 145
    Width = 674
    Height = 327
    Align = alClient
    Caption = 'Itens'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 284
      Width = 670
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 0
      object EditQuantidade: TLabeledEdit
        Left = 544
        Top = 9
        Width = 95
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
        Font.Color = clBlack
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
      Top = 17
      Width = 670
      Height = 267
      Align = alClient
      TabOrder = 1
      object cxGridProduzidos: TcxGridDBTableView
        OnKeyDown = cxGridProduzidosKeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_OrdemProducaoProduzido
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGridProduzidosColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'REFERENCIA'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGridProduzidosColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTIFICADOR'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 150
        end
        object cxGridProduzidosColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'COR'
          Options.Editing = False
          Width = 111
        end
        object cxGridProduzidosColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'TAMANHO'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 100
        end
        object cxGridProduzidosColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'QUANTIDADE'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '###,##0.00'
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Options.Grouping = False
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridProduzidos
      end
    end
  end
  object SP_OrdemPRODUCAO_FINALIZAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPCP_FINALIZAR'
    Left = 264
    Top = 80
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
  object SP_ReferenciaLancaGrade: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPSPPRODUTOS_LANCAGRADE'
    Left = 448
    Top = 80
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
  object db_OrdemProducaoProduzido: TFDQuery
    BeforePost = db_OrdemProducaoProduzidoBeforePost
    AfterPost = db_OrdemProducaoProduzidoAfterPost
    BeforeDelete = db_OrdemProducaoProduzidoBeforeDelete
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_PRODUZIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'BAIXADO='#39'N'#39)
    Left = 216
    Top = 224
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
      OnChange = db_OrdemProducaoProduzidoQUANTIDADEChange
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
  object ds_OrdemProducaoProduzido: TDataSource
    DataSet = db_OrdemProducaoProduzido
    Left = 400
    Top = 224
  end
  object db_ProduzidosDeletarPendencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'DELETE FROM PCP_ORDEMPRODUCAO_PRODUZIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'BAIXADO='#39'N'#39)
    Left = 216
    Top = 304
    ParamData = <
      item
        Name = 'EMPRESA'
      end
      item
        Name = 'CODIGO'
      end>
  end
end
