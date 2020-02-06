object FrmProdutosDetalhados: TFrmProdutosDetalhados
  Left = 1
  Top = 1
  Caption = 'Cadastro de Produtos'
  ClientHeight = 602
  ClientWidth = 1264
  Color = clWhite
  Constraints.MinWidth = 1000
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 1264
    Height = 23
    Align = alTop
    TabOrder = 0
    object CB_Copiar: TCheckBox
      Left = 8
      Top = 2
      Width = 241
      Height = 17
      Cursor = crHandPoint
      Hint = 
        'Aumenta sua produtividade na digita'#231#227'o. Preenche automaticamente' +
        ' a maioria dos campos.'
      Caption = 'Copiar os campos para os novos registros'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 542
    Width = 1264
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 542
    ExplicitWidth = 1264
    inherited PanelBotoesBottom: TPanel
      Width = 1254
      ExplicitWidth = 1254
      inherited SpbAdicionar: TSpeedButton
        Left = 360
        OnClick = FrmFrameBotoes1SpbAdicionarClick
        ExplicitLeft = 360
      end
      inherited SpbEditar: TSpeedButton
        Left = 560
        ExplicitLeft = 560
      end
      inherited SpbCancelar: TSpeedButton
        Left = 660
        ExplicitLeft = 660
      end
      inherited SpbSalvar: TSpeedButton
        Left = 460
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 460
      end
      inherited SpbExcluir: TSpeedButton
        Left = 760
        ExplicitLeft = 760
      end
      inherited SpbImprimir: TSpeedButton
        Left = 960
        ExplicitLeft = 960
      end
      inherited SpbSair: TSpeedButton
        Left = 1150
        ExplicitLeft = 1150
      end
      inherited SpbExtra: TSpeedButton
        Left = 1060
        ExplicitLeft = 1060
      end
      inherited SpbProcurar: TSpeedButton
        Left = 860
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 860
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1264
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7500402
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 1264
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 1264
      Height = 33
      ExplicitTop = 33
      ExplicitWidth = 1264
    end
    inherited pnTitulo: TPanel
      Width = 1264
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 1264
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 1121
        Height = 25
        Caption = 'Cadastro de Produtos'
        ExplicitWidth = 220
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 1208
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1205
        Height = 25
        ExplicitLeft = 1208
        ExplicitHeight = 31
      end
    end
  end
  object dbProcurarFichaTecnica: TIDBEditDialog
    Left = 808
    Top = 8
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
    SQLdbRetornoVazio = '***'
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM VIEW_REFERENCIAS'
      '%WHERE%'
      'ORDER BY DESCRICAO')
    SearchDialogFieldList = <
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'DESCRI'#199#195'O:'
        DisplayWidth = 30
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'TIPO_PRODUTO'
        WhereSyntax = 'TIPO_PRODUTO'
        DisplayLabel = 'TIPO'
        DisplayWidth = 10
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'CODIGO_BARRA'
        WhereSyntax = 'CODIGO_BARRA'
        DisplayLabel = 'C'#211'DIGO BARRAS:'
        DisplayWidth = 15
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scMixed
      end
      item
        FieldName = 'REFERENCIA'
        WhereSyntax = 'REFERENCIA'
        DisplayLabel = 'PRODUTO:'
        DisplayWidth = 15
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
        DisplayWidth = 15
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
        DisplayWidth = 15
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
        Search = False
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
      end
      item
        FieldName = 'ESTOQUESALDO'
        WhereSyntax = 'ESTOQUESALDO'
        DisplayLabel = 'ESTOQUE ATUAL:'
        DisplayFormat = '###,##0'
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
  object dbEditPesquisarCores: TIDBEditDialog
    Left = 609
    Top = 3
    Width = 75
    Height = 21
    Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
    HelpKeyWord = ''
    CharCase = ecUpperCase
    Color = clWindow
    Enabled = True
    ShowHint = True
    TabOrder = 4
    Text = ''
    Visible = False
    LabelCaption = 'Cole'#231#227'o:'
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
      'SELECT NOME FROM CAD_COLECAO'
      'WHERE'
      'CODIGO=:CODIGO'
      '')
    SQLdbMaxLenght = 10
    SearchQuery.Strings = (
      'SELECT * FROM CAD_CORES'
      'WHERE'
      '%WHERE%')
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
        FieldName = 'NOME'
        WhereSyntax = 'NOME'
        DisplayLabel = 'NOME:'
        DisplayWidth = 60
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'COR'
        WhereSyntax = 'COR'
        DisplayLabel = 'COR:'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 56
    Width = 1264
    Height = 486
    ActivePage = Tab0
    Align = alClient
    TabOrder = 5
    object Tab0: TTabSheet
      Caption = 'Principal'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1256
        Height = 51
        Align = alTop
        BorderWidth = 1
        TabOrder = 0
        object Label12: TLabel
          Left = 79
          Top = 6
          Width = 76
          Height = 13
          Caption = 'Tipo de Produto'
        end
        object Label2: TLabel
          Left = 236
          Top = 6
          Width = 69
          Height = 13
          Caption = 'C'#243'digo Pr'#243'prio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label9: TLabel
          Left = 5
          Top = 6
          Width = 23
          Height = 13
          Hint = 'data do ultimo lan'#231'amento'
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton1: TSpeedButton
          Left = 348
          Top = 20
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'Como liberar campo "C'#243'digo do Produto"'
          Caption = '?'
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label3: TLabel
          Left = 377
          Top = 6
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label11: TLabel
          Left = 739
          Top = 6
          Width = 43
          Height = 13
          Hint = 'Unidade de medida'
          Caption = 'Unidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label6: TLabel
          Left = 808
          Top = 6
          Width = 111
          Height = 13
          Caption = 'GTIN (C'#243'digo de Barra)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object EditTipProduto: TDBLookupComboBox
          Left = 79
          Top = 20
          Width = 154
          Height = 21
          DataField = 'TIPO_PRODUTO'
          DataSource = DS_Referencia
          DropDownRows = 12
          DropDownWidth = 450
          KeyField = 'CODIGO'
          ListField = 'NOME;CODIGO'
          ListSource = DS_TipoProduto
          NullValueKey = 46
          TabOrder = 1
        end
        object EditCodigo: TDBEdit
          Left = 236
          Top = 20
          Width = 110
          Height = 21
          Hint = 
            'C'#243'digo do produto (em parametros do  sistema '#233' possivel modifica' +
            'r o tipo de codifica'#231#227'o)'
          CharCase = ecUpperCase
          DataField = 'REFERENCIA'
          DataSource = DS_Referencia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = EditCodigoExit
        end
        object EditData: TDBEdit
          Left = 5
          Top = 20
          Width = 68
          Height = 21
          Hint = 'Data de cadastro'
          CharCase = ecUpperCase
          DataField = 'DATA'
          DataSource = DS_Referencia
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object DBEditDescricao: TDBEdit
          Left = 377
          Top = 20
          Width = 354
          Height = 21
          Hint = 'Nome do produto'
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = DS_Referencia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object EditUnidade: TDBEdit
          Left = 737
          Top = 20
          Width = 67
          Height = 21
          Hint = 
            'Unidade de medida (pc=pe'#231'a,  cj=conjunto, m2=metro quadrado, etc' +
            '..)'
          CharCase = ecUpperCase
          DataField = 'UNIDADE'
          DataSource = DS_Referencia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit_CodigoBarra: TDBEdit
          Left = 808
          Top = 20
          Width = 199
          Height = 21
          Hint = 
            'Se nao tiver c'#243'digo de barras, deixe em branco ou escreva: SEM G' +
            'TIN'
          CharCase = ecUpperCase
          DataField = 'CODIGO_BARRA'
          DataSource = DS_Referencia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 1128
          Top = 2
          Width = 126
          Height = 47
          Align = alRight
          Caption = '&Status'
          Columns = 2
          DataField = 'ATIVO'
          DataSource = DS_Referencia
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 7
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 1026
          Top = 2
          Width = 102
          Height = 47
          Align = alRight
          Caption = 'Balan'#231'a'
          Columns = 2
          DataField = 'BALANCA'
          DataSource = DS_Referencia
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
        end
      end
      object GroupBox3: TGroupBox
        Left = 1015
        Top = 51
        Width = 241
        Height = 407
        Align = alRight
        Caption = 'Foto do Produto'
        TabOrder = 2
        object FotoReferencia: TImage
          Left = 2
          Top = 43
          Width = 237
          Height = 362
          Hint = 'clique para expandir'
          Align = alClient
          AutoSize = True
          Center = True
          Proportional = True
          Stretch = True
          Transparent = True
          ExplicitWidth = 245
          ExplicitHeight = 198
        end
        object Panel4: TPanel
          Left = 2
          Top = 15
          Width = 237
          Height = 28
          Align = alTop
          BevelWidth = 2
          TabOrder = 0
          object SpeedButton6: TSpeedButton
            Left = 6
            Top = 3
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Hint = 'colocar foto'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C7C7C7C7C7C6
              C7C8C8C8C7C5999192AD9B95D0C6C1D1D3D3C9CCCEC5C6C7C5C6C6C7C7C7C8C8
              C8C8C8C8C7C7C7C8C8C8C8C8C8C5C6C7CECAC79BAFBC28A4D93F95B86F86959E
              999AC0B8B4CDCAC8CBCDCDC7C9C9C6C6C7C7C7C7C7C7C7C7C7C7C7C6C7C6C8C9
              CCC4C045A8D60EBEFE1CCEFF1EBBEF30A4CF518CA67F8993ABA3A2C5BFBDCDCD
              CCCACCCCC7C8C8C7C7C7C5C6C7CDC9C8A6B3BD12B6F222C0F63DD4FB38D8FF36
              DDFF33D5FF35BEE543A1C362899C8C8F95B5ACABCAC5C3CACAC9C2C6C8D1C8C5
              74B2CE0AC3FE29C1F450DFFD50E2FF51DFFB51E0FC50E6FF4CE7FF47D9F946BD
              DC519BB66D8592AFAFB0C6C9CACAC2C04CB9E216CDFF30C5F662E0F459E2F55C
              EEFF62F1FF65ECFF65E9FC67EDFF66F3FF64F3FF4CCBE98097A2CFCDCAB3B9BF
              3BC1EA2AD3FD31CCFAA6D2CBC9B8A198C1B97BD0D171EBF37AF7FF76F2FD75F1
              FC78F3FD74EEFB799EABD4CBC69BB3C03DCFF63CDCFF40D1F7B6E1DCFFD8BCFE
              C3A4F0BB9B93C4C179F0FB89F5FC8BF9FF8CF8FE8DEBEF7AA1ACD3C7C28CB7C7
              49DCFE41D2E756D3FAC4DED7EAC7B6F7D2C1FFD7C0B1C9C27CE0F47DD9F182E1
              F588E1F29EE5E980A4AFD8C4C288BFE53BC5A73BCB6343C581AAE3D1E6D7C8F9
              EAE1FFE4D7B8D1CD88E1F588D9EF83D7F089D2E8A7DEE786A4B07C997539A464
              2DBE564AEC6E41D96061CCCF91E6FFA3DFEBC0DEE3C5EEF1C6FAFEBEF2FAB1ED
              F9A2D5E6AED8E48FA5B129AD3F19C02C27C94238D95D3FDA6440C7814ACBB554
              D2ED59DBFC6CDAF680D9F39AE0F6B4EAF9D0E9EFBAD7E493A7B343BF6025CC45
              1AC43329CB4638D95A46E5693CCD5A749A8D96B9CF64E0F069F6FF66EDFD52D0
              F083A5BBA2BBCBB3BBC1A7BCAA85B08B26A93418C1302CCB4843EB7032CB598E
              9F89CFC3C780C0D276DDED70E9F86AB9CFB6B3B5CBC9C8C8C8C7CACACAD9C6D5
              4CAE590AC22211B5264A9C5882AD8ABEC0BFC9CACAC3C0C0B7BDC5ABBECBBABE
              C3CBC9C8C7C7C8C7C7C7C3C6C3CBC8CA76B07F3FC75C38AA4AA4A7A1D2CAD1C8
              C8C8C6C7C7C8C9C9CBCAC8CEC9C7CBCAC9C7C7C8C8C8C8C8C8C8}
            OnClick = SpeedButton6Click
          end
          object SpeedButton7: TSpeedButton
            Left = 218
            Top = 3
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Hint = 'limpar foto'
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFDFDFEFBFBFFFFFFFFFFFFFFF2F2E2D3D3CDCFCFC9E6E6D8FFFFFBFFFF
              FFFFFFFFFBFBFCFEFEFEFFFFFFFEFEFE6E00FEFEFEFFFFFEFDFDFEFFFFFFFFFF
              FEC6C6D56C6CB03E3EAA3838AB3838A83939A25A5A9FAAAABDF9F9F2FFFFFFFC
              FCFDFEFEFEFFFFFF6500FFFFFFFDFDFDFFFFFFF5F5F26F6FB71B1BB32A2AD741
              41ED4B4BF84B4BF84343EE2F2FD61717A84A4A94D6D6D7FFFFFFFCFCFDFEFEFE
              3C00FCFCFDFDFDFFF1F1F44949B21111CF4242FF4747FF4848FF4343FF4343FF
              4747FF4848FF4545FF1A1ACC27278BCFCFD3FFFFFFFDFDFD6900FAFAFDFEFEFC
              6262BB0808D83030FF2929FE2E2EFD2323FD2E2EFE2D2DFE2525FE2A2AFC2D2D
              FD2E2EFF1313D732328DE9E9E6FEFEFF7400FFFFFFB6B6D50202C81B1BFF1414
              FDA1A1FDCACAFF1A1AFD1010FF1515FF0D0DFFB7B7FDBBBBFD1C1CFC1B1BFF00
              00BB7F7FA5FFFFFD2200FEFEF14D4DC00000EF0000FE4A4AFCFFFFFEFFFFFEC4
              C4FE1212FE0000FEACACFEFFFFFDFFFFFF6A6AFD0000FE0101F3252596E8E8E6
              7400CDCDD81F1FCA0000FD0101FC0101FC7676FEFFFFFEFFFFFEBABAFDA8A8FC
              FFFFFEFFFFFF9292FC0606F90101F80000FF0101ACBABAC96C00A8A8DB0E0ED3
              0707FF0D0DFE0C0CFE0000FE7777FFF3F3FEFFFFFEFFFFFEF8F8FE8F8FF90000
              F30000F30000F10101FC0000BFA0A0BC3C00A1A1DA0B0BD52424FE2E2EFD2E2E
              FD2626FF1E1EFFD4D4FDFCFCFDFBFBFEE3E3FD1313F10000F00303F20000EF01
              01F90000C39B9BBB6100AFAFDE1111D43838FD5252FE4646FE4747FFC1C1FFFF
              FFFEFFFFFEFFFFFEFFFFFEC3C3FB1717F20000F00000EF0000F90000BEA7A7C3
              6900DFDFE02121CE3333F97575FE6B6BFECCCCFEFFFFFEFFFFFDB9B9FFA9A9FF
              FFFFFEFFFFFECBCBFC4343F61010F20303F70808AECFCFD95000FFFFF96262CE
              0C0CE78B8BFFA8A8FDFFFFFEFFFFFFCBCBFE8080FE7B7BFFBEBEFFFEFEFDFFFF
              FEB8B8FD8F8FFE2929E93838A7FAFAF56900FEFEFFD7D7E80303CD5353F9B7B7
              FFC6C6FDD7D7FE9F9FFDA8A8FEAAAAFE9D9DFED0D0FDCCCCFDB2B2FE8787FF00
              00B8B3B3CDFFFFFF6900FAFAFDFFFFFE9797DC0000D67171FBD8D8FFCDCDFDC6
              C6FDC3C3FEC2C2FEC5C5FEC7C7FDDADAFFA3A3FF0303CA6767B7FFFFFDFCFCFE
              6400FDFDFDFCFCFEFFFFFE8888DB0000D14545F1BCBCFFEAEAFFF5F5FFF5F5FF
              F0F0FFD0D0FF6E6EF40303C56161BDFAFAF6FCFCFEFDFDFD3C00FFFFFEFEFEFE
              FCFCFEFFFFFFB4B4E22F2FCC0000D52828E34848E84B4BE73636E10A0ACF2222
              BC9E9ED0FFFFFCFFFFFFFDFDFEFFFFFF3C00FEFEFFFFFFFFFEFEFEFCFCFEFFFF
              FFFAFAF7B9B9E08080D86767D96565D67878D4ACACDAF1F1F0FFFFFFFDFDFFFE
              FEFEFFFFFFFEFEFE6900}
            OnClick = SpeedButton7Click
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 51
        Width = 1015
        Height = 407
        Align = alClient
        TabOrder = 1
        object pgDetalhes: TPageControl
          Left = 1
          Top = 181
          Width = 1013
          Height = 225
          ActivePage = TabFiscal
          Align = alClient
          TabOrder = 1
          object TabFiscal: TTabSheet
            Caption = 'Fiscal'
            ImageIndex = 2
            object gpbImpostos: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 999
              Height = 191
              Align = alClient
              Caption = '[ Informa'#231#245'es Fiscais ]'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object Label7: TLabel
                Left = 10
                Top = 114
                Width = 106
                Height = 15
                Caption = 'Situa'#231#227'o Tribut'#225'ria'
              end
              object Label1: TLabel
                Left = 305
                Top = 114
                Width = 43
                Height = 15
                Hint = 'Saldo atual do produto em estoque'
                Caption = 'ICMS %:'
                ParentShowHint = False
                ShowHint = True
              end
              object Label24: TLabel
                Left = 391
                Top = 114
                Width = 30
                Height = 15
                Caption = 'IPI %:'
              end
              object Label15: TLabel
                Left = 475
                Top = 114
                Width = 42
                Height = 15
                Hint = 'Saldo atual do produto em estoque'
                Caption = 'Frete %:'
                ParentShowHint = False
                ShowHint = True
              end
              object Label5: TLabel
                Left = 706
                Top = 24
                Width = 25
                Height = 15
                Caption = 'CEST'
              end
              object Label37: TLabel
                Left = 561
                Top = 114
                Width = 74
                Height = 15
                Hint = 'Saldo atual do produto em estoque'
                Caption = 'PIS/COFINS %'
                ParentShowHint = False
                ShowHint = True
              end
              object Label28: TLabel
                Left = 646
                Top = 114
                Width = 63
                Height = 15
                Hint = 'Saldo atual do produto em estoque'
                Caption = 'C'#243'digo ANP'
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit3: TDBEdit
                Left = 305
                Top = 129
                Width = 80
                Height = 23
                Hint = 'Aliquota do ICMS'
                CharCase = ecUpperCase
                DataField = 'ICMS'
                DataSource = DS_Referencia
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
              end
              object DBEdit22: TDBEdit
                Left = 391
                Top = 129
                Width = 80
                Height = 23
                Hint = 'Aliquota do IPI'
                CharCase = ecUpperCase
                DataField = 'IPI'
                DataSource = DS_Referencia
                MaxLength = 5
                TabOrder = 9
              end
              object DBEdit15: TDBEdit
                Left = 475
                Top = 129
                Width = 80
                Height = 23
                Hint = 'Percentual do frete'
                CharCase = ecUpperCase
                DataField = 'PERC_FRETE'
                DataSource = DS_Referencia
                ParentShowHint = False
                ShowHint = True
                TabOrder = 10
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 10
                Top = 129
                Width = 290
                Height = 23
                DataField = 'SITUACAO_TRIBUTARIA'
                DataSource = DS_Referencia
                DropDownWidth = 500
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = ds_SituacaoTributaria
                NullValueKey = 46
                TabOrder = 7
              end
              object dbEditPesquisar: TIDBEditDialog
                Left = 10
                Top = 41
                Width = 132
                Height = 23
                Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                ShowHint = True
                TabOrder = 0
                Text = ''
                Visible = True
                EmptyText = 'F8'
                LabelCaption = 'Tabela NCM:'
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
                DataField = 'NCM'
                DataSource = DS_Referencia
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = EditNomeNCM
                SQLdbCampoRetorno = 'DESCRICAO'
                SQLdbRetornoVazio = '***'
                SQLdbCampoParametro = 'CODIGO'
                SQLdbSQL.Strings = (
                  'SELECT DESCRICAO FROM CAD_NCM'
                  'WHERE'
                  'CODIGO=:CODIGO'
                  '')
                SQLdbMaxLenght = 10
                SearchQuery.Strings = (
                  'SELECT * FROM VIEW_CAD_NCM'
                  'WHERE'
                  '%WHERE%')
                SearchDialogFieldList = <
                  item
                    FieldName = 'CODIGO'
                    WhereSyntax = 'CODIGO'
                    DisplayLabel = 'NCM:'
                    DisplayWidth = 20
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scMixed
                  end
                  item
                    FieldName = 'CEST'
                    WhereSyntax = 'CEST'
                    DisplayLabel = 'CEST:'
                    DisplayWidth = 20
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scMixed
                  end
                  item
                    FieldName = 'ITEM'
                    WhereSyntax = 'ITEM'
                    DisplayLabel = 'ITEM'
                    DisplayWidth = 10
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scBeginsWith
                    SearchCase = scMixed
                  end
                  item
                    FieldName = 'DESCRICAO'
                    WhereSyntax = 'DESCRICAO'
                    DisplayLabel = 'DESCRICAO'
                    DisplayWidth = 50
                    DisplayColumnWidth = 0
                    FieldType = ftString
                    Search = True
                    EmptyOperation = eoNull
                    DefaultComparison = scContains
                    SearchCase = scUpper
                  end
                  item
                    FieldName = 'SEGMENTO'
                    WhereSyntax = 'SEGMENTO'
                    DisplayLabel = 'SEGMENTO'
                    DisplayWidth = 15
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
              object EditNomeNCM: TEdit
                Left = 145
                Top = 41
                Width = 558
                Height = 24
                AutoSize = False
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                TabOrder = 1
                Text = '***'
              end
              object EditCFOP: TIDBEditDialog
                Left = 9
                Top = 84
                Width = 64
                Height = 23
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                TabOrder = 3
                Text = ''
                Visible = True
                EditType = etUppercase
                EmptyText = 'F8'
                FocusColor = clWindow
                LabelCaption = 'CFOP (dentro do estado)'
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
                DataField = 'CFOPDENTROESTADO'
                DataSource = DS_Referencia
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = NomeCFOP
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
                    DisplayLabel = 'Nome:'
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
              object NomeCFOP: TEdit
                Left = 79
                Top = 85
                Width = 285
                Height = 21
                AutoSize = False
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                TabOrder = 4
                Text = '***'
              end
              object IDBEditDialog1: TIDBEditDialog
                Left = 367
                Top = 85
                Width = 64
                Height = 23
                HelpKeyWord = ''
                CharCase = ecUpperCase
                Color = clWindow
                Enabled = True
                TabOrder = 5
                Text = ''
                Visible = True
                EditType = etUppercase
                EmptyText = 'F8'
                FocusColor = clWindow
                LabelCaption = 'CFOP (fora do estado)'
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
                DataField = 'CFOPFORAESTADO'
                DataSource = DS_Referencia
                ButtonKeyClickBtn = 119
                SQLdbFazBusca = True
                SQLdbFocusControl = Edit3
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
                    DisplayLabel = 'Nome:'
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
              object Edit3: TEdit
                Left = 437
                Top = 85
                Width = 500
                Height = 21
                AutoSize = False
                CharCase = ecUpperCase
                Color = clBtnFace
                Enabled = False
                TabOrder = 6
                Text = '***'
              end
              object DBEdit17: TDBEdit
                Left = 706
                Top = 41
                Width = 231
                Height = 23
                Color = clBtnFace
                DataField = 'CEST'
                DataSource = DS_Referencia
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit18: TDBEdit
                Left = 561
                Top = 129
                Width = 80
                Height = 23
                Hint = 'Percentual do frete'
                CharCase = ecUpperCase
                DataField = 'COFINS'
                DataSource = DS_Referencia
                ParentShowHint = False
                ShowHint = True
                TabOrder = 11
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 647
                Top = 129
                Width = 290
                Height = 23
                DataField = 'ANP'
                DataSource = DS_Referencia
                DropDownWidth = 500
                KeyField = 'CODIGO'
                ListField = 'CODIGO;DESCRICAO'
                ListSource = dsANP
                NullValueKey = 46
                TabOrder = 12
              end
            end
          end
          object TabEstoque: TTabSheet
            Caption = 'Estoque'
            ImageIndex = 1
            OnShow = TabEstoqueShow
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox7: TGroupBox
              Left = 0
              Top = 0
              Width = 226
              Height = 197
              Align = alLeft
              TabOrder = 0
              object Label10: TLabel
                Left = 23
                Top = 24
                Width = 93
                Height = 13
                Hint = 'Estoque minimo de seguran'#231'a comercial'
                Caption = 'Quantidade M'#237'nima'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label13: TLabel
                Left = 23
                Top = 64
                Width = 94
                Height = 13
                Hint = 'Estoque minimo de seguran'#231'a para produ'#231'ao'
                Caption = 'Quantidade M'#225'xima'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label22: TLabel
                Left = 23
                Top = 104
                Width = 66
                Height = 13
                Hint = 'Saldo atual do produto em estoque'
                Caption = '&Estoque Atual'
                FocusControl = EditQtde
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit1: TDBEdit
                Left = 23
                Top = 39
                Width = 105
                Height = 21
                Hint = 'Estoque minimo de seguran'#231'a comercial'
                CharCase = ecUpperCase
                DataField = 'ESTOQUEMINIMO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 13
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object DBEdit8: TDBEdit
                Left = 23
                Top = 79
                Width = 105
                Height = 21
                Hint = 'Estoque maximo permitido'
                CharCase = ecUpperCase
                DataField = 'ESTOQUEMAXIMO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 13
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object EditQtde: TDBEdit
                Left = 23
                Top = 119
                Width = 105
                Height = 21
                Hint = 'Saldo atual em estoque'
                CharCase = ecUpperCase
                DataField = 'ESTOQUESALDO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
            end
            object gpGrades: TGroupBox
              AlignWithMargins = True
              Left = 229
              Top = 3
              Width = 773
              Height = 191
              Align = alClient
              Caption = 'Grade de Quantidades'
              TabOrder = 1
              object GradeProduto1: TGradeProduto
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 763
                Height = 168
                Produto.IDProduto = 0
                Connection = FrmPrincipal.DBConexao
                TabelaGrades = 'VIEW_GRADEREFERENCIA'
                TabelaUsar = tbProduto
                IDOP = 0
                IDConferencia = 0
                IDPedido = 0
                IDPedidoItens = 0
                IDEmpresa = 0
                ReadOnly = True
                AjustarLarguraForm = True
                AjustarAlturaForm = True
                TabOrder = 0
                Color = clWindow
                Align = alClient
                Enabled = False
                BorderStyle = bsSingle
              end
            end
          end
          object TabPrecos: TTabSheet
            Caption = 'Pre'#231'os'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object painelPrecos: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 999
              Height = 191
              Align = alClient
              Caption = '[ Pre'#231'os ]'
              Color = clBtnFace
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              object Label26: TLabel
                Left = 20
                Top = 21
                Width = 145
                Height = 13
                Caption = '&Pre'#231'o de Custo/Base Ind'#250'stria'
                FocusControl = DBEdit_PrcCusto
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 200
                Top = 18
                Width = 41
                Height = 13
                Caption = 'Lucro %:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 200
                Top = 59
                Width = 96
                Height = 13
                Caption = 'Pre'#231'o de Venda:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 20
                Top = 59
                Width = 50
                Height = 13
                Hint = 'Saldo atual do produto em estoque'
                Caption = 'Markup %:'
                FocusControl = EditMarkup
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit_PrcCusto: TDBEdit
                Left = 20
                Top = 37
                Width = 155
                Height = 21
                Hint = 'Pre'#231'o de custo (valor pago pelo produto)'
                CharCase = ecUpperCase
                DataField = 'PRC_CUSTO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 13
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit_MLucro: TDBEdit
                Left = 200
                Top = 34
                Width = 155
                Height = 21
                Hint = 
                  'Informe a margem  de lucro que deseja sobre o produto, considera' +
                  'r a exist'#234'ncia de outros custos sobre as vendas ( PIS/Cofins, CS' +
                  'LL e IR). Consulte seu contador. Para calcular margem de lucro s' +
                  'obre o pre'#231'o de venda marque a op'#231#227'o no topo desta tela.'
                CharCase = ecUpperCase
                DataField = 'MG_LUCRO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 5
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit_PrcVenda: TDBEdit
                Left = 200
                Top = 75
                Width = 155
                Height = 21
                Hint = 'Pre'#231'o de venda'
                CharCase = ecUpperCase
                DataField = 'PRC_VENDA'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object EditMarkup: TDBEdit
                Left = 20
                Top = 75
                Width = 155
                Height = 21
                Hint = 'Junte todos os custos extras e informe aqui'
                CharCase = ecUpperCase
                DataField = 'MARKUP'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
            end
          end
          object TabGrade: TTabSheet
            Caption = 'Grade'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox16: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 360
              Height = 191
              Align = alLeft
              Caption = 'Grade de Tamanhos'
              TabOrder = 0
              object DBGrid4: TDBGrid
                Left = 2
                Top = 15
                Width = 356
                Height = 174
                Cursor = crNo
                Align = alClient
                DataSource = ds_GradeLista
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Color = clBtnFace
                    Expanded = False
                    FieldName = 'TAMANHO'
                    Title.Caption = 'Tamanho:'
                    Visible = True
                  end
                  item
                    Color = clBtnFace
                    Expanded = False
                    FieldName = 'Nometamanho'
                    Title.Caption = 'Descri'#231#227'o:'
                    Width = 255
                    Visible = True
                  end>
              end
            end
            object GroupBox6: TGroupBox
              AlignWithMargins = True
              Left = 369
              Top = 3
              Width = 633
              Height = 191
              Align = alClient
              Caption = 'Grade de Cores:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object GridGradeCores: TDBGrid
                Left = 2
                Top = 15
                Width = 629
                Height = 174
                Align = alClient
                DataSource = ds_Cores_Modelos
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnEditButtonClick = GridGradeCoresEditButtonClick
                OnKeyDown = GridGradeCoresKeyDown
                OnKeyPress = GridGradeCoresKeyPress
                Columns = <
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'ID_COR'
                    Title.Caption = 'C'#243'digo:'
                    Visible = True
                  end
                  item
                    Color = clBtnFace
                    Expanded = False
                    FieldName = 'NOME'
                    ReadOnly = True
                    Title.Caption = 'Descri'#231#227'o:'
                    Width = 542
                    Visible = True
                  end>
              end
            end
          end
          object TabOutrosDados: TTabSheet
            Caption = 'Outros Dados'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox9: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 999
              Height = 191
              Align = alClient
              Color = clBtnFace
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              object Label14: TLabel
                Left = 186
                Top = 12
                Width = 61
                Height = 13
                Hint = 'Unidade de medida'
                Caption = 'Peso Liquido'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label18: TLabel
                Left = 9
                Top = 70
                Width = 68
                Height = 13
                Hint = 'data do ultimo lan'#231'amento'
                Caption = #218'ltima Compra'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label19: TLabel
                Left = 85
                Top = 70
                Width = 63
                Height = 13
                Hint = 'data do ultimo lan'#231'amento'
                Caption = 'Ultima Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label23: TLabel
                Left = 160
                Top = 70
                Width = 24
                Height = 13
                Hint = 'data do ultimo lan'#231'amento'
                Caption = 'Lote:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label25: TLabel
                Left = 274
                Top = 70
                Width = 44
                Height = 13
                Hint = 'data do ultimo lan'#231'amento'
                Caption = 'Validade:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label17: TLabel
                Left = 98
                Top = 12
                Width = 52
                Height = 13
                Hint = 'Unidade de medida'
                Caption = 'Peso Bruto'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label4: TLabel
                Left = 274
                Top = 12
                Width = 38
                Height = 13
                Hint = 'Unidade de medida'
                Caption = 'Peso m'#178
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label30: TLabel
                Left = 10
                Top = 13
                Width = 15
                Height = 13
                Hint = 'Unidade de medida'
                Caption = 'OZ'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBEdit12: TDBEdit
                Left = 9
                Top = 85
                Width = 70
                Height = 21
                Hint = 'data da ultimo compra'
                CharCase = ecUpperCase
                DataField = 'DT_ULTIMA_COMPRA'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object DBEdit14: TDBEdit
                Left = 85
                Top = 85
                Width = 70
                Height = 21
                Hint = 'data do ultima venda '
                CharCase = ecUpperCase
                DataField = 'DT_ULTIMA_VENDA'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object DBEdit10: TDBEdit
                Left = 160
                Top = 85
                Width = 106
                Height = 21
                Hint = 'data do ultimo lan'#231'amento'
                CharCase = ecUpperCase
                DataField = 'LOTE'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
              object DBEdit16: TDBEdit
                Left = 274
                Top = 85
                Width = 85
                Height = 21
                Hint = 'data do ultimo lan'#231'amento'
                CharCase = ecUpperCase
                DataField = 'DT_VALIDADE'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
              object DBEdit4: TDBEdit
                Left = 186
                Top = 27
                Width = 85
                Height = 21
                Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                CharCase = ecUpperCase
                DataField = 'PESO_LIQUIDO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
              end
              object DBEdit9: TDBEdit
                Left = 98
                Top = 27
                Width = 85
                Height = 21
                Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                CharCase = ecUpperCase
                DataField = 'PESO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
              end
              object DBEdit5: TDBEdit
                Left = 274
                Top = 27
                Width = 85
                Height = 21
                Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                CharCase = ecUpperCase
                DataField = 'PESO_M2'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
              end
              object EditOZ: TDBEdit
                Left = 10
                Top = 27
                Width = 85
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PESO'
                DataSource = DS_Referencia
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
              end
              object GroupBox1: TGroupBox
                Left = 384
                Top = 8
                Width = 217
                Height = 98
                Caption = 'Promo'#231#227'o'
                TabOrder = 8
                object Label34: TLabel
                  Left = 22
                  Top = 24
                  Width = 31
                  Height = 13
                  Hint = 'Unidade de medida'
                  Alignment = taRightJustify
                  Caption = 'Pre'#231'o:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object Label35: TLabel
                  Left = 25
                  Top = 48
                  Width = 28
                  Height = 13
                  Hint = 'Unidade de medida'
                  Alignment = taRightJustify
                  Caption = 'Inicio:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object Label36: TLabel
                  Left = 33
                  Top = 72
                  Width = 19
                  Height = 13
                  Hint = 'Unidade de medida'
                  Alignment = taRightJustify
                  Caption = 'Fim:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object DBEdit2: TDBEdit
                  Left = 58
                  Top = 20
                  Width = 85
                  Height = 21
                  Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                  CharCase = ecUpperCase
                  DataField = 'PESO_M2'
                  DataSource = DS_Referencia
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object DBEdit11: TDBEdit
                  Left = 58
                  Top = 44
                  Width = 85
                  Height = 21
                  Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                  CharCase = ecUpperCase
                  DataField = 'PESO_M2'
                  DataSource = DS_Referencia
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object DBEdit13: TDBEdit
                  Left = 58
                  Top = 68
                  Width = 85
                  Height = 21
                  Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                  CharCase = ecUpperCase
                  DataField = 'PESO_M2'
                  DataSource = DS_Referencia
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
              end
              object GroupBox4: TGroupBox
                Left = 607
                Top = 13
                Width = 217
                Height = 49
                Caption = #218'ltima Remarca'#231#227'o'
                TabOrder = 9
                object Label39: TLabel
                  Left = 26
                  Top = 24
                  Width = 26
                  Height = 13
                  Hint = 'Unidade de medida'
                  Alignment = taRightJustify
                  Caption = 'Data:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object DBEdit19: TDBEdit
                  Left = 58
                  Top = 20
                  Width = 85
                  Height = 21
                  Hint = 'tamanho do produto (p, m, g, gg, etc...)'
                  CharCase = ecUpperCase
                  DataField = 'PESO_M2'
                  DataSource = DS_Referencia
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
            end
          end
        end
        object grpCabecalho: TGroupBox
          Left = 1
          Top = 1
          Width = 1013
          Height = 180
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label27: TLabel
            Left = 85
            Top = 4
            Width = 86
            Height = 13
            Caption = 'C'#243'digo Fabricante'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label32: TLabel
            Left = 223
            Top = 4
            Width = 91
            Height = 13
            Caption = 'C'#243'digo do reduzido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label33: TLabel
            Left = 398
            Top = 4
            Width = 113
            Height = 14
            Caption = 'Descri'#231#227'o Reduzida: '
          end
          object IDBEditDialog2: TIDBEditDialog
            Left = 85
            Top = 70
            Width = 65
            Height = 22
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            TabOrder = 7
            Text = ''
            Visible = True
            LabelCaption = 'Fabricante:'
            LabelPosition = lpLeftCenter
            LabelTransparent = True
            LabelAlwaysEnabled = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clRed
            LabelFont.Height = -12
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Separator = ';'
            Version = '5.0.0.0'
            ButtonStyle = bsButton
            ButtonWidth = 16
            ButtonHint = 'Procurar...'
            Etched = False
            ButtonCaption = '...'
            DataField = 'FORNECEDOR'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeFornecedor
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '<INFORME O FORNECEDOR, SE HOUVER>'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO in ('#39'FORNECEDOR'#39','#39'FABRICANTE'#39')'
              'AND'
              'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
              'AND'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO in ('#39'FORNECEDOR'#39','#39'FABRICANTE'#39')'
              'AND'
              'COALESCE(ATIVO,'#39'S'#39')<>'#39'N'#39
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
                SearchCase = scMixed
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
          object EditNomeFornecedor: TEdit
            Left = 153
            Top = 71
            Width = 475
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            Text = '<INFORME O FORNECEDOR, SE HOUVER>'
          end
          object EditGrupo: TIDBEditDialog
            Left = 85
            Top = 43
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 3
            Text = ''
            Visible = True
            LabelCaption = 'Grupo:'
            LabelPosition = lpLeftCenter
            LabelTransparent = True
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
            DataField = 'GRUPO'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit1
            SQLdbCampoRetorno = 'DESCRICAO '
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT DESCRICAO FROM CAD_GRUPO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_GRUPO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_GRUPO'
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
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 80
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
          object Edit1: TEdit
            Left = 153
            Top = 43
            Width = 478
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 4
          end
          object EditSubGrupo: TIDBEditDialog
            Left = 708
            Top = 43
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 5
            Text = ''
            Visible = True
            LabelCaption = 'Subgrupo:'
            LabelPosition = lpLeftCenter
            LabelTransparent = True
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
            DataField = 'SUBGRUPO'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = Edit2
            SQLdbCampoRetorno = 'DESCRICAO '
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT DESCRICAO FROM CAD_SUBGRUPO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM  CAD_SUBGRUPO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_SUBGRUPO'
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
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
                DisplayLabel = 'Nome:'
                DisplayWidth = 80
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
            Left = 774
            Top = 43
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 6
          end
          object EditGrife: TIDBEditDialog
            Left = 708
            Top = 95
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 13
            Text = ''
            Visible = True
            LabelCaption = 'Grife:'
            LabelPosition = lpLeftCenter
            LabelTransparent = True
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
            DataField = 'GRIFE'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeGrife
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_GRIFES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT *  FROM CAD_GRIFES'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(CODIGO) FROM CAD_GRIFES'
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
          object EditNomeGrife: TEdit
            Left = 774
            Top = 95
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 14
            Text = '***'
          end
          object EditEtiquetas: TIDBEditDialog
            Left = 708
            Top = 70
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 9
            Text = ''
            Visible = True
            LabelCaption = 'Composi'#231#227'o:'
            LabelPosition = lpLeftCenter
            LabelTransparent = True
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
            DataField = 'ETIQUETA'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeEtiqueta
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '< NADA  >'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_ETIQUETAS'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_ETIQUETAS'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT count(*) FROM CAD_ETIQUETAS'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
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
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
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
          object EditNomeEtiqueta: TEdit
            Left = 774
            Top = 70
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 10
          end
          object EditNomeGenero: TEdit
            Left = 153
            Top = 96
            Width = 475
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 12
            Text = '***'
          end
          object EditGradeTamanhos: TIDBEditDialog
            Left = 261
            Top = 139
            Width = 63
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            Color = clWindow
            Enabled = False
            ShowHint = True
            TabOrder = 16
            Text = ''
            Visible = True
            OnChange = EditGradeTamanhosChange
            LabelCaption = 'Grade/Tamanhos:'
            LabelTransparent = True
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
            DataField = 'GRADE'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeGrade
            SQLdbCampoRetorno = 'DESCRICAO '
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT DESCRICAO FROM CAD_GRADE'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_GRADE'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_GRADE'
              'WHERE'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'DESCRICAO'
                WhereSyntax = 'DESCRICAO'
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
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
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
          object EditNomeGrade: TEdit
            Left = 328
            Top = 139
            Width = 206
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 17
            Text = '***'
          end
          object rdCiclo: TDBRadioGroup
            Left = 540
            Top = 121
            Width = 162
            Height = 40
            Caption = 'Ciclo'
            Columns = 2
            DataField = 'CICLO'
            DataSource = DS_Referencia
            Items.Strings = (
              'Continuo'
              'Cole'#231#227'o')
            TabOrder = 18
            Values.Strings = (
              'CONTINUO'
              'COLECAO')
            OnChange = rdCicloChange
            OnClick = rdCicloClick
          end
          object rdUtilizaGrade: TDBRadioGroup
            Left = 85
            Top = 123
            Width = 171
            Height = 40
            Caption = 'Utilizar Grade'
            Columns = 2
            DataField = 'GRADEUTILIZAR'
            DataSource = DS_Referencia
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 15
            Values.Strings = (
              'CONTINUO'
              'COLECAO')
            OnChange = rdUtilizaGradeChange
            OnClick = rdUtilizaGradeClick
          end
          object EditColecao: TIDBEditDialog
            Left = 703
            Top = 152
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = False
            ShowHint = True
            TabOrder = 19
            Text = ''
            Visible = True
            LabelCaption = 'Cole'#231#227'o:'
            LabelTransparent = True
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
            DataField = 'COLECAO'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeColecao
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_COLECAO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_COLECAO'
              'WHERE'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_COLECAO'
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
                DisplayWidth = 40
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'PERIODO_INI'
                WhereSyntax = 'PERIODO_INI'
                DisplayLabel = 'Periodo de:'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftDate
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'PERIODO_FIM'
                WhereSyntax = 'PERIODO_FIM'
                DisplayLabel = 'Periodo at'#233':'
                DisplayWidth = 12
                DisplayColumnWidth = 0
                FieldType = ftDate
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
              end
              item
                FieldName = 'PECAS_META'
                WhereSyntax = 'PECAS_META'
                DisplayLabel = 'Produ'#231#227'o Estimada:'
                DisplayFormat = '###,##0'
                DisplayWidth = 15
                DisplayColumnWidth = 0
                FieldType = ftFloat
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scMixed
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
          object EditNomeColecao: TEdit
            Left = 774
            Top = 139
            Width = 200
            Height = 22
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            TabOrder = 20
            Text = '***'
          end
          object EditCodigoFabricante: TDBEdit
            Left = 85
            Top = 18
            Width = 116
            Height = 21
            Hint = 'Refer'#234'ncia do Fabricante'
            CharCase = ecUpperCase
            DataField = 'CODIGO_FABRICANTE'
            DataSource = DS_Referencia
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 219
            Top = 18
            Width = 173
            Height = 21
            Hint = 'C'#243'digo reduzido do produto (ESTE CAMPO '#201' OPCIONAL)'
            CharCase = ecUpperCase
            DataField = 'REFERENCIAREDUZIDA'
            DataSource = DS_Referencia
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnExit = EditCodigoExit
          end
          object DBEdit7: TDBEdit
            Left = 398
            Top = 18
            Width = 576
            Height = 22
            CharCase = ecUpperCase
            DataField = 'DESCRICAOREDUZIDA'
            DataSource = DS_Referencia
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object EditGenero: TIDBEditDialog
            Left = 85
            Top = 96
            Width = 65
            Height = 22
            Hint = 'Procurar:   Tecle F8 ou clique no bot'#227'o'
            HelpKeyWord = ''
            CharCase = ecUpperCase
            Color = clWindow
            Enabled = True
            ShowHint = True
            TabOrder = 11
            Text = ''
            Visible = True
            LabelCaption = 'G'#234'nero:'
            LabelPosition = lpLeftCenter
            LabelTransparent = True
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
            DataField = 'COLECAO'
            DataSource = DS_Referencia
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeGenero
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = '***'
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT NOME FROM CAD_COLECAO'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_GENERO'
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
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Outras informa'#231#245'es'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1256
        Height = 458
        Align = alClient
        Caption = 'Detalhes'
        TabOrder = 0
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 1252
          Height = 441
          Align = alClient
          DataField = 'DETALHES'
          DataSource = DS_Referencia
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  object DS_Referencia: TDataSource
    AutoEdit = False
    DataSet = db_referencias
    Left = 276
  end
  object db_ChecarExistencia: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT COUNT(REFERENCIA)  REGISTROS  FROM CAD_PRODUTOS'
      'WHERE'
      'REFERENCIA=:REFERENCIA'
      'AND'
      'TIPO_PRODUTO<>'#39'ACA'#39)
    Left = 597
    Top = 11
    ParamData = <
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_referencias: TFDQuery
    BeforeOpen = db_referenciasBeforeOpen
    BeforePost = db_referenciasBeforePost
    AfterPost = db_referenciasAfterPost
    AfterScroll = db_referenciasAfterScroll
    OnDeleteError = db_referenciasDeleteError
    OnEditError = db_referenciasEditError
    OnNewRecord = db_referenciasNewRecord
    OnPostError = db_referenciasPostError
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 352
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object db_referenciasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_referenciasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_referenciasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 30
    end
    object db_referenciasDT_VALIDADE: TSQLTimeStampField
      FieldName = 'DT_VALIDADE'
      EditMask = '99/99/9999'
    end
    object db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_VENDA'
      EditMask = '99/99/9999'
    end
    object db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_COMPRA'
      EditMask = '99/99/9999'
    end
    object db_referenciasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_referenciasREFERENCIAREDUZIDA: TStringField
      FieldName = 'REFERENCIAREDUZIDA'
      Size = 30
    end
    object db_referenciasGRUPO: TIntegerField
      FieldName = 'GRUPO'
      OnChange = db_referenciasGRUPOChange
    end
    object db_referenciasSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      OnChange = db_referenciasSUBGRUPOChange
    end
    object db_referenciasTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      Size = 30
    end
    object db_referenciasGRIFE: TIntegerField
      FieldName = 'GRIFE'
    end
    object db_referenciasCOLECAO: TIntegerField
      FieldName = 'COLECAO'
    end
    object db_referenciasFAIXA_ETARIA: TIntegerField
      FieldName = 'FAIXA_ETARIA'
    end
    object db_referenciasESTILISTA: TIntegerField
      FieldName = 'ESTILISTA'
    end
    object db_referenciasETIQUETA: TIntegerField
      FieldName = 'ETIQUETA'
    end
    object db_referenciasGRADEUTILIZAR: TStringField
      FieldName = 'GRADEUTILIZAR'
      Size = 10
    end
    object db_referenciasGRADE: TIntegerField
      FieldName = 'GRADE'
    end
    object db_referenciasEMBALAGEM: TIntegerField
      FieldName = 'EMBALAGEM'
    end
    object db_referenciasCOMPOSICAO: TIntegerField
      FieldName = 'COMPOSICAO'
    end
    object db_referenciasGENERO: TIntegerField
      FieldName = 'GENERO'
    end
    object db_referenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      OnChange = db_referenciasDESCRICAOChange
      Size = 200
    end
    object db_referenciasDESCRICAOREDUZIDA: TStringField
      FieldName = 'DESCRICAOREDUZIDA'
      Size = 200
    end
    object db_referenciasNCM: TStringField
      FieldName = 'NCM'
      OnChange = db_referenciasNCMChange
      Size = 30
    end
    object db_referenciasCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 30
    end
    object db_referenciasSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 30
    end
    object db_referenciasGERAR_CODBARRA: TStringField
      FieldName = 'GERAR_CODBARRA'
      Size = 10
    end
    object db_referenciasCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      Size = 200
    end
    object db_referenciasCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 30
    end
    object db_referenciasCODIGO_FABRICANTE: TStringField
      FieldName = 'CODIGO_FABRICANTE'
      Size = 30
    end
    object db_referenciasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 30
    end
    object db_referenciasPESO: TFloatField
      FieldName = 'PESO'
      DisplayFormat = '###,##0'
    end
    object db_referenciasOZ: TFloatField
      FieldName = 'OZ'
      DisplayFormat = '###,##0'
    end
    object db_referenciasPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      OnChange = db_referenciasPESO_LIQUIDOChange
      DisplayFormat = '###,##0'
    end
    object db_referenciasPESO_M2: TFloatField
      FieldName = 'PESO_M2'
      OnChange = db_referenciasPESO_M2Change
      DisplayFormat = '####,####0'
    end
    object db_referenciasQTDE_TECIDOS: TFloatField
      FieldName = 'QTDE_TECIDOS'
      DisplayFormat = '####,####0'
    end
    object db_referenciasQTDE_OPCOES: TFloatField
      FieldName = 'QTDE_OPCOES'
      DisplayFormat = '####,####0'
    end
    object db_referenciasPRAZOENTREGA: TIntegerField
      FieldName = 'PRAZOENTREGA'
    end
    object db_referenciasLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object db_referenciasNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object db_referenciasCOMISSAO_VAREJO: TFloatField
      FieldName = 'COMISSAO_VAREJO'
    end
    object db_referenciasCOMISSAO_ATACADO: TFloatField
      FieldName = 'COMISSAO_ATACADO'
    end
    object db_referenciasCOMISSAO_REPRESENTANTE: TFloatField
      FieldName = 'COMISSAO_REPRESENTANTE'
    end
    object db_referenciasREGISTROINPI: TStringField
      FieldName = 'REGISTROINPI'
      Size = 30
    end
    object db_referenciasVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
    object db_referenciasPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 10
    end
    object db_referenciasMARCA: TStringField
      FieldName = 'MARCA'
      Size = 200
    end
    object db_referenciasLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 200
    end
    object db_referenciasATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 10
    end
    object db_referenciasINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 5000
    end
    object db_referenciasTOTAL_RESERVA: TFloatField
      FieldName = 'TOTAL_RESERVA'
    end
    object db_referenciasTOTAL_ORDEMPRODUCAO: TFloatField
      FieldName = 'TOTAL_ORDEMPRODUCAO'
    end
    object db_referenciasTOTAL_QTDEMATPRIMA: TFloatField
      FieldName = 'TOTAL_QTDEMATPRIMA'
    end
    object db_referenciasTOTAL_VLRMATPRIMA: TFloatField
      FieldName = 'TOTAL_VLRMATPRIMA'
    end
    object db_referenciasTOTAL_PROCESSO_TEMPO: TFloatField
      FieldName = 'TOTAL_PROCESSO_TEMPO'
    end
    object db_referenciasTOTAL_PROCESSO_CUSTOS: TFloatField
      FieldName = 'TOTAL_PROCESSO_CUSTOS'
    end
    object db_referenciasTOTAL_CUSTOS_PERCENTUAL: TFloatField
      FieldName = 'TOTAL_CUSTOS_PERCENTUAL'
    end
    object db_referenciasTOTAL_CUSTOS_VALOR: TFloatField
      FieldName = 'TOTAL_CUSTOS_VALOR'
    end
    object db_referenciasSALDO_IMPLANTACAO: TFloatField
      FieldName = 'SALDO_IMPLANTACAO'
    end
    object db_referenciasESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object db_referenciasESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object db_referenciasESTOQUESALDO: TFloatField
      FieldName = 'ESTOQUESALDO'
      OnChange = db_referenciasESTOQUESALDOChange
    end
    object db_referenciasMG_LUCRO: TFloatField
      FieldName = 'MG_LUCRO'
      OnChange = db_referenciasMG_LUCROChange
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIPI: TFloatField
      FieldName = 'IPI'
      OnChange = db_referenciasIPIChange
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasICMS: TFloatField
      FieldName = 'ICMS'
      OnChange = db_referenciasICMSChange
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPIS: TFloatField
      FieldName = 'PIS'
      OnChange = db_referenciasPISChange
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasCOFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPUBLICIDADE: TFloatField
      FieldName = 'PUBLICIDADE'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasINADIMPLENCIA: TFloatField
      FieldName = 'INADIMPLENCIA'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasADMINISTRATIVO: TFloatField
      FieldName = 'ADMINISTRATIVO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIMPORTACAO: TFloatField
      FieldName = 'IMPORTACAO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      OnChange = db_referenciasPERC_FRETEChange
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasFINANCEIRO: TFloatField
      FieldName = 'FINANCEIRO'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIMPOSTOS_OUTROS: TFloatField
      FieldName = 'IMPOSTOS_OUTROS'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasMARKUP: TFloatField
      FieldName = 'MARKUP'
      OnChange = db_referenciasMARKUPChange
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasIR: TFloatField
      FieldName = 'IR'
      DisplayFormat = '###,##0.00%'
    end
    object db_referenciasPRC_CUSTOBRUTO: TFloatField
      FieldName = 'PRC_CUSTOBRUTO'
      OnChange = db_referenciasPRC_CUSTOBRUTOChange
      DisplayFormat = '###,##0.000'
    end
    object db_referenciasPRC_CUSTO: TFloatField
      FieldName = 'PRC_CUSTO'
      OnChange = db_referenciasPRC_CUSTOChange
    end
    object db_referenciasPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      OnChange = db_referenciasPRC_VENDAChange
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasLUCRO_LIQUIDO: TFloatField
      FieldName = 'LUCRO_LIQUIDO'
      DisplayFormat = '###,##0.00'
    end
    object db_referenciasDETALHES: TStringField
      FieldName = 'DETALHES'
      Size = 5000
    end
    object db_referenciasPRODUCAO_TEMPO: TFloatField
      FieldName = 'PRODUCAO_TEMPO'
    end
    object db_referenciasPRODUCAO_CUSTOS: TFloatField
      FieldName = 'PRODUCAO_CUSTOS'
    end
    object db_referenciasCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object db_referenciasTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
    object db_referenciasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_referenciasPRC_CUSTOPRODUCAO: TFloatField
      FieldName = 'PRC_CUSTOPRODUCAO'
    end
    object db_referenciasFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_referenciasMARKUPID: TIntegerField
      FieldName = 'MARKUPID'
    end
    object db_referenciasCFOPDENTROESTADO: TIntegerField
      FieldName = 'CFOPDENTROESTADO'
    end
    object db_referenciasCFOPFORAESTADO: TIntegerField
      FieldName = 'CFOPFORAESTADO'
    end
    object db_referenciasHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object db_referenciasCICLO: TStringField
      FieldName = 'CICLO'
      Size = 30
    end
    object db_referenciasORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object db_referenciasFABRICACAO: TIntegerField
      FieldName = 'FABRICACAO'
    end
    object db_referenciasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object db_referenciasSEGUIMENTO: TIntegerField
      FieldName = 'SEGUIMENTO'
    end
    object db_referenciasLINHA: TIntegerField
      FieldName = 'LINHA'
    end
    object db_referenciasRESTRICAO_VENDEDORTIPO: TStringField
      FieldName = 'RESTRICAO_VENDEDORTIPO'
      Size = 30
    end
    object db_referenciasRESTRICAO_VENDATIPO: TStringField
      FieldName = 'RESTRICAO_VENDATIPO'
      Size = 30
    end
    object db_referenciasANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
      Size = 30
    end
    object db_referenciasBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 10
    end
    object db_referenciasPROMOCAODESCONTO: TFloatField
      FieldName = 'PROMOCAODESCONTO'
      Origin = 'PROMOCAODESCONTO'
    end
  end
  object db_SituacaoTributaria: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_SITUACAO_TRIBUTARIA'
      'ORDER BY CODIGO')
    Left = 44
    Top = 48
  end
  object ds_SituacaoTributaria: TDataSource
    DataSet = db_SituacaoTributaria
    Left = 100
    Top = 48
  end
  object db_CountEstoque: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT COUNT(*) AS TOTAL FROM CAD_PRODUTOS'
      'WHERE'
      'TIPO_PRODUTO<>'#39'ACA'#39
      '')
    Left = 208
    Top = 48
  end
  object db_TipoProduto: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_TIPO'
      'ORDER BY CODIGO')
    Left = 512
  end
  object DS_TipoProduto: TDataSource
    AutoEdit = False
    DataSet = db_TipoProduto
    Left = 512
    Top = 48
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Met' +
      'afiles (*.wmf)|*.wmf'
    Left = 432
    Top = 24
  end
  object ds_referencia_Fotos: TDataSource
    DataSet = db_referencia_Fotos
    Left = 816
    Top = 232
  end
  object db_referencia_Fotos: TFDQuery
    BeforePost = db_referencia_FotosBeforePost
    MasterSource = DS_Referencia
    MasterFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM   CAD_PRODUTOS_FOTOS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 816
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object db_GradeLista: TFDQuery
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM CAD_GRADELISTA'
      'WHERE'
      'CODIGO=:GRADE')
    Left = 64
    Top = 472
    ParamData = <
      item
        Name = 'GRADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_GradeListaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_GradeListaID_TAMANHO: TIntegerField
      FieldName = 'ID_TAMANHO'
    end
    object db_GradeListaORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 30
    end
    object db_GradeListaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_GradeListaNometamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'Nometamanho'
      LookupDataSet = BaseDados_PCP.DB_Cad_Tamanhos
      LookupKeyFields = 'TAMANHO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAMANHO'
      Size = 100
      Lookup = True
    end
    object db_GradeListaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 30
    end
  end
  object ds_GradeLista: TDataSource
    DataSet = db_GradeLista
    Left = 144
    Top = 472
  end
  object ds_Cores_Modelos: TDataSource
    DataSet = db_Cores_Modelos
    Left = 496
    Top = 488
  end
  object db_Cores_Modelos: TFDQuery
    BeforePost = db_Cores_ModelosBeforePost
    MasterSource = DS_Referencia
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_CORES'
      'WHERE'
      ''
      'CODIGO=:CODIGO')
    Left = 496
    Top = 456
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object db_Cores_ModelosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_Cores_ModelosID_COR: TIntegerField
      FieldName = 'ID_COR'
      OnChange = db_Cores_ModelosID_CORChange
    end
    object db_Cores_ModelosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object dbOrigem: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_ORIGEM'
      'ORDER BY CODIGO')
    Left = 100
    Top = 136
  end
  object dsOrigem: TDataSource
    DataSet = dbOrigem
    Left = 156
    Top = 136
  end
  object dbFabricacao: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_FABRICACAO'
      'ORDER BY CODIGO')
    Left = 116
    Top = 176
  end
  object dsbFabricacao: TDataSource
    DataSet = dbFabricacao
    Left = 204
    Top = 176
  end
  object dbSituacao: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_SITUACAO'
      'ORDER BY CODIGO')
    Left = 268
    Top = 208
  end
  object dsSituacao: TDataSource
    DataSet = dbSituacao
    Left = 324
    Top = 208
  end
  object dsSeguimento: TDataSource
    DataSet = dbSeguimento
    Left = 300
    Top = 264
  end
  object dbSeguimento: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_SEGUIMENTO'
      'ORDER BY CODIGO')
    Left = 228
    Top = 264
  end
  object dbLinha: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_LINHA'
      'ORDER BY CODIGO')
    Left = 396
    Top = 312
  end
  object dsLinha: TDataSource
    DataSet = dbLinha
    Left = 452
    Top = 312
  end
  object dsANP: TDataSource
    DataSet = QryANP
    Left = 1036
    Top = 384
  end
  object QryANP: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CAD_ANP'
      'ORDER BY DESCRICAO')
    Left = 980
    Top = 384
  end
end
