object FrmRelEntregas: TFrmRelEntregas
  Left = 207
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rios de Entregas'
  ClientHeight = 423
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 461
    Height = 379
    Align = alClient
    TabOrder = 0
    object RadioG: TRadioGroup
      Left = 1
      Top = 129
      Width = 459
      Height = 68
      Cursor = crHandPoint
      Align = alTop
      Caption = '&Selecione seu Relat'#243'rio'
      Color = clBtnFace
      ItemIndex = 0
      Items.Strings = (
        'Entrega de Vendas')
      ParentColor = False
      TabOrder = 1
      OnClick = RadioGClick
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 459
      Height = 128
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Data de Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 26
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object Label4: TLabel
        Left = 114
        Top = 26
        Width = 16
        Height = 13
        Caption = 'At'#233
      end
      object MskDataIni: TMaskEdit
        Left = 32
        Top = 22
        Width = 70
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
        Text = '  /  /    '
        OnExit = MskDataIniExit
      end
      object MskDataFim: TMaskEdit
        Left = 138
        Top = 22
        Width = 70
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
        Text = '  /  /    '
        OnExit = MskDataFimExit
      end
      object chkCliente: TCheckBox
        Left = 9
        Top = 49
        Width = 144
        Height = 13
        Cursor = crHandPoint
        Caption = 'Todos os Entregadores:'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = chkClienteClick
      end
      object EditEntregador: TIDBEditDialog
        Left = 10
        Top = 84
        Width = 85
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0'
        Visible = True
        EditType = etNumeric
        EmptyText = 'Tecle F8'
        FocusColor = clBtnFace
        LabelCaption = 'Cliente'
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
        SQLdbFocusControl = EditClienteNome
        SQLdbCampoRetorno = 'NOME'
        SQLdbRetornoVazio = ' *** '
        SQLdbCampoParametro = 'CODIGO'
        SQLdbSQL.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'CLIENTE'#39
          'AND'
          'CODIGO=:CODIGO')
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'TRANSPORTADORA'#39
          'AND'
          '%WHERE%')
        CountQuery.Strings = (
          'SELECT COUNT(*) FROM CAD_CLIENTES'
          'WHERE'
          'TIPO='#39'TRANSPORTADORA'#39
          'AND'
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
      object EditClienteNome: TEdit
        Left = 97
        Top = 84
        Width = 314
        Height = 21
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '***'
      end
    end
    object BoxRepresentante: TGroupBox
      Left = 1
      Top = 197
      Width = 459
      Height = 80
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Sele'#231#227'o de Vendedor'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label5: TLabel
        Left = 288
        Top = 21
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DCodRepres: TEdit
        Left = 328
        Top = 15
        Width = 55
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DCodRepresKeyPress
      end
      object chkRepres: TCheckBox
        Left = 8
        Top = 21
        Width = 177
        Height = 17
        Cursor = crHandPoint
        Caption = 'Todos Vendedores'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = chkRepresClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 337
      Width = 459
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 4
      object BtnSair: TBitBtn
        Left = 87
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'Sair'
        Caption = 'Sai&r'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
          77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
          307777770708800330777777000880F03077777702088003307700000A2080B3
          3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
          307777770708880BB077777777088880B0777777770000000077}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnSairClick
      end
      object Btn_Imprimir: TBitBtn
        Left = 7
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Hint = 'Imprimir relat'#243'rio selecionado...'
        Caption = '&Imprimir...'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C8C8C8C3C3C3CACACADEDFDFDDDD
          DDCDCDCDBFBFBFC7C6C6DADADAD6D6D6C3C3C3C4C4C4C8C8C8C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C6C6C6D1D1D1
          BFBFBF909090939393B7B7B7D8D8D8C7C9C9999A9AA3A2A3CFCFCFCDCDCDC5C5
          C5C6C6C6C6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C6C6C6C6C6C6CB
          CBCBC8C8C8979897A1A1A19493935959595B5C5C7C7B7B9C90908C8586505151
          6E6E6EA1A1A1CFCFCFCCCCCCC9C9C9C6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C6C6
          C6CCCCCCCACACABABABA9A9A9AB2B3B2F0F0F0D1D1D1B2B4B59892928367668B
          7878ADACACC2C3C38F8E8E636363666666A2A2A2C1C1C1CCCCCCC7C7C7C7C7C7
          C7C7C7C6C6C6CBCBCBB5B5B59E9E9EA4A4A4E6E6E6F9F9F9EFEEEEBBBABBAFB0
          B0ABA5A54F49494C4F4F676868888888B8B8B8CECECEAAAAAA7E7E7E787878BD
          BDBDC7C7C7C7C7C7C6C6C6CACACABDBDBDABABABD0D0D0FFFFFFF2F1F1E9E8E8
          EAEAEABBBCBCA6A6A6ABACAC8B8D8D7575756868686B6B6B7979799A9A9AC1C0
          C0CBCCCC6A6A6A969696C7C7C7C7C7C7C7C7C7CACACAB8B8B8E2E2E2FFFFFFEF
          EFEFEFEEEEDFDFDFC7C7C79E9E9E969595A6A5A5B6B5B5BABABAB2B2B2A1A1A1
          9999997070708181819B9A9A767676CBCBCBC7C7C7C6C6C6C6C6C6C9C9C9BBBB
          BBE6E6E6F8F8F8DCDCDCBCBCBCACACACB9B9B9A0A0A08686868989898E8E8E99
          9999A8A8A8B9B9B9C4C4C4B6B6B6B1B1B3A5A5A8828181D0D1D0C5C7C7CACBCB
          CBCBCBCECFCFBDBDBEC3C4C4BFBFBFB0B0B0C0C1C1D1D1D2D9D9D9D7D6D6C6C6
          C6B1B1B1A1A0A19494949090908F8F8F979797B2ACB098BAA6739B83848082CF
          CFCFD0C9C6BBB8B6B7B4B2BBB9B7A9A7A4B0AFAFD3D3D3DEDEDEDFDFDFCFCFD0
          D8D9D9E5E6E5DADADADDDDDDD8D8D8D2D2D2C3C3C3B6B6B6A2A3A39998998A93
          8D717B74818081CFCFCF74A0B4386F8A3469852662805C8192E9E6E4E2E3E4D7
          D8D7CCCCCCD4D4D5E3E3E3C8C7C7D5D5D5D0D1D1CCCCCCCCCECED3D4D4D5D5D5
          D5D5D6CECFCFCCCACBA29EA0848484CFCFCF1992C746B8EA5EC8F950C4F76BBB
          E0DCD5D1DFDBD9D0D0D2D5D5D6E1E1E1D5D4D4EBEAEAF8F7F7F0F0F0E7E7E7DE
          DEDDD3D3D4CDCDCCC9C9C9C7C7C7D6D6D5AFB0AF999999CDCDCD47AAD165C6EA
          79DBFF72D6FE6FD1F692C0D3BBC2C5C0C3C5CCCDCCCAC9C8CECECCE7E6E5EAE9
          E9EDEDECF0EFEFEEEDEEEDEDEDEAEAEAE6E6E6DADADAB5B5B49D9D9DC5C5C5C8
          C8C849A8CF65BDE179DDFD71D7FB73D9FD70DAFE67CBED97BDC9E6E3E1E1E7EA
          A0A4A7A4A7A9B3B7B8C5C7C7D5D5D5DBDBDBE3E3E3E7E6E7DFDFDFBDBCBCA7A7
          A7C4C4C4C9C9C9C7C7C74BB5D568BBE088E2FE76DFFC7ADEFB7CDFFC75E1FD9B
          D2E2F2E0DAF8D4C9DDBDB3D4C2BACCC1BEC4C0BEC3C4C5D2D3D6CACBCBA8A9A9
          ACACACB6B5B5C2C2C2C9C9C9C6C6C6C7C7C74ABEDB69BCE099E7FA7BE6FE81E5
          FC80E5FC83E9FD76D9F0C8BEAEFFCFA3FFD3ADFFD0AAFCCFABF8D5B6F8D6B6F0
          D5BD999495A7A7A7C6C6C6CACACAC8C8C8C6C6C6C7C7C7C7C7C75AC6E46CC2E9
          9CE8F685EFFE87ECFC88EBFB88F3FE85DAE7DCC6B0FDE0B8F9DAB7FCDBB7FDDC
          B7FDD9B4FFDFB8E3BE9C655D5FB6B7B7CDCDCDC5C5C5C7C7C7C7C7C7C7C7C7C7
          C7C774D1EC64C2F0A0E5F58FF6FE89F1FC8DF2FB86F7FE9AD5D7F0CEB6FEE4C7
          FBDFC4FDE0C5FDE0C5FBE0C4FDE7CAD6BBAC807E7FB0B0B0CCCBCBC6C6C6C7C7
          C7C7C7C7C7C7C7C7C7C77ED7EC68CAF8A2E2F7A9FFFE9BFCFCA0FEFE98FAFAB4
          CDCAFDE0CAFDEAD4FCE6D0FDE7D1FDE7D1FCE7D1FDE8D0D9D7CFABADAEA7A7A6
          CFCECEC6C6C6C7C7C7C7C7C7C7C7C7C7C7C788D7EC76D9FB78D2F9A6E8FCA4E8
          FCA4E9FE9DDDF2D2C8C2FEF0DEFBECDCFBEBDCFCECDDFCEBDBFDF0E0F4E0CFCA
          C6C4AFB1B2B5B4B4CBCBCBC6C6C6C7C7C7C7C7C7C7C7C7C7C7C790DBED83E6FD
          74E0FD72DBFC76DBFB6EE0FE8DC3D6F4E4D8FDF9EEFDF4E9FEF5EAFEF5EAFCF2
          E7FFFEF6CFB8B1978D8DBDBDBECCCBCBC6C6C6C7C7C7C7C7C7C7C7C7C7C7C7C7
          C7C79CDEEFA7F4FD8AF0FE90F2FD8DF5FF90E5EDCCCBCAF5F4EFFAF5F1F9F5F2
          F9F4F0F9F5F2FAF7F5F7EFEEB4ABAABBBBBBCCCCCCC6C6C6C7C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C796C9DCADE4F3A4EFF89CEFF89EF1FAA8E2ED84B3C4B7
          B8B6D5C8C8CEC4C4CEC1C1D1C7C7D3C9C9CEC2C2CAC7C7C8C9C9C6C6C6C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C2C6C7A9C4CEB4C8D0B3C8D1B4C9
          D0AEC8D2B1C8D0CAC9C8C5C7C7C6C7C7C6C8C8C6C7C7C6C7C7C6C8C8C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Btn_ImprimirClick
      end
    end
    object RdPedidos: TRadioGroup
      Left = 1
      Top = 277
      Width = 459
      Height = 60
      Cursor = crHandPoint
      Align = alBottom
      Caption = 'Tipos'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Abertos'
        'Combinados')
      TabOrder = 3
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 461
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 461
    inherited Image3: TImage
      Width = 461
      ExplicitWidth = 461
    end
    inherited LblBarraTitulo: TLabel
      Width = 179
      Height = 23
      Caption = 'Relat'#243'rios de Entregas'
      ExplicitWidth = 179
    end
    inherited Image2: TImage
      Left = 388
      ExplicitLeft = 388
    end
  end
  object db_Entregas: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  A.*, B.CODIGO, B.NOME'
      'FROM'
      'PEDIDOS A,  CAD_CLIENTES B'
      'where'
      'a.transportadora=B.CODIGO and B.CODIGO=:ENTREGADOR')
    Left = 256
    Top = 64
    ParamData = <
      item
        Name = 'ENTREGADOR'
        ParamType = ptInput
      end>
  end
  object fsr_entregas: TfrxReport
    Version = '6.2.11'
    DataSet = fsd_entregas
    DataSetName = 'db_Entregas'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbSave, pbExport, pbZoom, pbFind, pbOutline, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoEmail]
    PreviewOptions.Zoom = 1.200000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39917.957612847210000000
    ReportOptions.Name = 'Listagem de Ordem de Produ'#231#227'o'
    ReportOptions.LastChange = 43740.504974537030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     LblParametro.Text  := <rptParametro>;'
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 305
    Top = 48
    Datasets = <
      item
        DataSet = fsd_entregas
        DataSetName = 'db_Entregas'
      end>
    Variables = <
      item
        Name = ' diversas'
        Value = Null
      end
      item
        Name = 'rptParametro'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 86.149630710000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_Entregas."DATA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_Entregas."CODIGO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 261.464684090000000000
          Width = 132.283496300000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_Entregas."CLIENTE_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740198980000000000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_Entregas."VLR_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 204.653562830000000000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[db_Entregas."APROVADO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 135.393700790000000000
          Width = 60.472436060000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_Entregas."DATA_ENTREGA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 453.086890000000000000
          Width = 98.267726300000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[db_Entregas."VENDEDOR_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 561.259884020000000000
          Width = 71.811023620000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[db_Entregas."QTDE_TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 12.094488190000000000
        ParentFont = False
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo50: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 181.417440000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DataSet = FrmPrincipal.frx_dsEmpresa
          DataSetName = 'frx_dsEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 79.370095830000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 86.149630710000000000
          Top = 64.251968500000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740198980000000000
          Top = 64.251968500000000000
          Width = 79.370078740000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 554.590910000000000000
          Width = 162.511750000000000000
          Height = 51.023622050000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 1.889763780000000000
          Width = 57.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 16.629921260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 31.748031500000000000
          Width = 50.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 1.889763780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 16.629921260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 31.748031500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 77.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 52.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Width = 550.464750000000000000
          Height = 51.023622050000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'Relat'#243'rio - Entregas: [db_Entregas.TRANSPORTADORA_NOME]'
            'Pedidos de Vendas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 64.251968500000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 261.464684090000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
          WordWrap = False
        end
        object LblParametro: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 33.795300000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '<>')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 204.653562830000000000
          Top = 64.251968500000000000
          Width = 49.133858270000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'APROVADO:')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 130.393700790000000000
          Top = 64.251968500000000000
          Width = 68.031496060000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ' ENTREGA:')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 453.086890000000000000
          Top = 64.251968500000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 561.259884020000000000
          Top = 64.251968500000000000
          Width = 71.811023620000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE DO PEDIDO:')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 557.480354020000000000
          Top = 3.779527560000000000
          Width = 71.811023620000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db_Entregas."QTDE_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 634.960668980000000000
          Top = 3.779527560000000000
          Width = 79.370078740000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<db_Entregas."VLR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 113.385853620000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Pedidos: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsd_entregas: TfrxDBDataset
    UserName = 'db_Entregas'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'DOCUMENTO=DOCUMENTO'
      'TITULO=TITULO'
      'DATA=DATA'
      'DATA_FATURAMENTO=DATA_FATURAMENTO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'TIPO=TIPO'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
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
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'FORMA_PAGTO=FORMA_PAGTO'
      'FORMA_PAGTO_NOME=FORMA_PAGTO_NOME'
      'TIPOPAGAMENTO=TIPOPAGAMENTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'QTDE_TOTAL=QTDE_TOTAL'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_PRODUTOS=VLR_PRODUTOS'
      'APROVADO=APROVADO'
      'STATUS=STATUS'
      'ITENS_IMPORTADO=ITENS_IMPORTADO'
      'STATUSPERCENTUAL=STATUSPERCENTUAL'
      'IMPRESSO=IMPRESSO'
      'RESPONSAVEL=RESPONSAVEL'
      'ENTREGAPARCIAL=ENTREGAPARCIAL'
      'VALORPARCIAL=VALORPARCIAL'
      'PRODUZINDO=PRODUZINDO'
      'ORDEMPRODUCAO=ORDEMPRODUCAO'
      'EMPRESA_1=EMPRESA_1'
      'TABELA=TABELA'
      'APROVADO_1=APROVADO_1'
      'ORDEMPRODUCAO_1=ORDEMPRODUCAO_1'
      'PRODUZINDO_1=PRODUZINDO_1'
      'SELECIONADO=SELECIONADO')
    DataSet = db_Entregas
    BCDToCurrency = False
    Left = 353
    Top = 64
  end
end
