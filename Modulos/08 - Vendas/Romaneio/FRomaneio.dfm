object FrmRomaneio: TFrmRomaneio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Embarque'
  ClientHeight = 463
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 670
    Height = 419
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 668
      Height = 55
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Per'#237'odo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = GroupBox2Exit
      object Label3: TLabel
        Left = 8
        Top = 26
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object Label4: TLabel
        Left = 128
        Top = 26
        Width = 16
        Height = 13
        Caption = 'At'#233
      end
      object MskDataIni: TMaskEdit
        Left = 32
        Top = 22
        Width = 72
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
        Left = 152
        Top = 22
        Width = 72
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
    end
    object Panel2: TPanel
      Left = 1
      Top = 373
      Width = 668
      Height = 45
      Align = alBottom
      BevelInner = bvRaised
      BorderStyle = bsSingle
      TabOrder = 1
      object BtnSair: TBitBtn
        Left = 89
        Top = 2
        Width = 80
        Height = 35
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
        Top = 2
        Width = 80
        Height = 35
        Cursor = crHandPoint
        Hint = 'Imprimir relat'#243'rio de embarque...'
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
    object DBGrid1: TDBGrid
      Left = 1
      Top = 56
      Width = 668
      Height = 317
      Cursor = crHandPoint
      Hint = 'clique duas vezes para visualizar o romaneio'
      Align = alClient
      Color = 14811135
      DataSource = ds_transportadora
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnEnter = DBGrid1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'TRANSPORTADORA_NOME'
          Title.Caption = 'TRANSPORTADORA:'
          Width = 373
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPORTADORA_FONE'
          Title.Caption = 'FONE:'
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRANSPORTADORA_VOLUME'
          Title.Caption = 'VOLUMES:'
          Width = 104
          Visible = True
        end>
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 670
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 670
    inherited Image3: TImage
      Width = 670
      ExplicitWidth = 541
    end
    inherited LblBarraTitulo: TLabel
      Width = 670
      Caption = 'Relat'#243'rio de Embarque'
      ExplicitWidth = 182
    end
    inherited Image2: TImage
      Left = 597
      ExplicitLeft = 468
    end
  end
  object ds_transportadora: TDataSource
    DataSet = db_transportadora
    Left = 56
    Top = 160
  end
  object db_transportadora: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  '
      '    DISTINCT(EMPRESA) AS EMPRESA,'
      '    TRANSPORTADORA,'
      '    DATA,'
      '    TRANSPORTADORA_NOME,'
      '    TRANSPORTADORA_VOLUME,'
      
        '    '#39'('#39'||CAST(TRANSPORTADORA_DDD AS VARCHAR(10))||'#39') '#39'||  TRANSP' +
        'ORTADORA_FONE AS TRANSPORTADORA_FONE'
      'FROM VIEW_ROMANEIO'
      ''
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'DATA BETWEEN :DATA1 AND :DATA2'
      ''
      'ORDER BY TRANSPORTADORA_NOME')
    Left = 168
    Top = 160
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
  object dbromaneio_clientes: TFDQuery
    MasterSource = ds_transportadora
    MasterFields = 'EMPRESA;TRANSPORTADORA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT DISTINCT * FROM VIEW_ROMANEIO'
      ''
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'DATA BETWEEN :DATA1 AND :DATA2'
      'AND'
      'TRANSPORTADORA=:TRANSPORTADORA'
      ''
      'ORDER BY TRANSPORTADORA_NOME, NOTAFISCAL')
    Left = 168
    Top = 240
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA1'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'TRANSPORTADORA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dbfp_romaneio_clientes: TfrxDBDataset
    UserName = 'dbromaneio_clientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'ROMANEIO=ROMANEIO'
      'DATA=DATA'
      'DATA_ENTRADASAIDA=DATA_ENTRADASAIDA'
      'NOTAFISCAL=NOTAFISCAL'
      'OPERACAO=OPERACAO'
      'VLR_TOTAL=VLR_TOTAL'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'TRANSPORTADORA_CNPJ=TRANSPORTADORA_CNPJ'
      'TRANSPORTADORA_IE=TRANSPORTADORA_IE'
      'TRANSPORTADORA_ENDERECO=TRANSPORTADORA_ENDERECO'
      'TRANSPORTADORA_BAIRRO=TRANSPORTADORA_BAIRRO'
      'TRANSPORTADORA_CEP=TRANSPORTADORA_CEP'
      'TRANSPORTADORA_NOMECIDADE=TRANSPORTADORA_NOMECIDADE'
      'TRANSPORTADORA_UF=TRANSPORTADORA_UF'
      'TRANSPORTADORA_DDD=TRANSPORTADORA_DDD'
      'TRANSPORTADORA_FONE=TRANSPORTADORA_FONE'
      'TRANSPORTADORA_FAX=TRANSPORTADORA_FAX'
      'TRANSPORTADORA_CONTATO=TRANSPORTADORA_CONTATO'
      'TRANSPORTADORA_EMAIL=TRANSPORTADORA_EMAIL'
      'TRANSPORTADORA_VOLUME=TRANSPORTADORA_VOLUME'
      'TRANSPORTADORA_FRETE=TRANSPORTADORA_FRETE'
      'TRANSPORTADORA_FRETE_STATUS=TRANSPORTADORA_FRETE_STATUS'
      'CLIENTE=CLIENTE'
      'CLIENTE_NOME=CLIENTE_NOME'
      'CLIENTE_CNPJ=CLIENTE_CNPJ'
      'CLIENTE_IE=CLIENTE_IE'
      'CLIENTE_ENDERECO=CLIENTE_ENDERECO'
      'CLIENTE_BAIRRO=CLIENTE_BAIRRO'
      'CLIENTE_CEP=CLIENTE_CEP'
      'CLIENTE_NOMECIDADE=CLIENTE_NOMECIDADE'
      'CLIENTE_UF=CLIENTE_UF'
      'CLIENTE_DDD=CLIENTE_DDD'
      'CLIENTE_FONE=CLIENTE_FONE'
      'CLIENTE_FAX=CLIENTE_FAX'
      'CLIENTE_CONTATO=CLIENTE_CONTATO'
      'CLIENTE_EMAIL=CLIENTE_EMAIL'
      'VENDEDOR=VENDEDOR'
      'VENDEDOR_NOME=VENDEDOR_NOME')
    DataSet = dbromaneio_clientes
    BCDToCurrency = False
    Left = 312
    Top = 240
  end
  object frx_Romeio: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40905.983237453700000000
    ReportOptions.LastChange = 40906.020162546300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 312
    Top = 312
    Datasets = <
      item
        DataSet = dbfp_romaneio_clientes
        DataSetName = 'dbromaneio_clientes'
      end
      item
        DataSet = FrmPrincipal.frx_dsEmpresa
        DataSetName = 'frx_dsEmpresa'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = dbfp_romaneio_clientes
        DataSetName = 'dbromaneio_clientes'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 84.283464566929100000
          Top = 3.779530000000000000
          Width = 47.661410000000000000
          Height = 11.338582680000000000
          DataField = 'TRANSPORTADORA_VOLUME'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_VOLUME"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 239.078662050000000000
          Top = 3.779530000000000000
          Width = 210.897737870000000000
          Height = 11.338582680000000000
          DataField = 'CLIENTE_NOME'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."CLIENTE_NOME"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 578.267794640000000000
          Top = 3.779530000000000000
          Width = 25.322793150000000000
          Height = 11.338582680000000000
          DataField = 'CLIENTE_UF'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."CLIENTE_UF"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 3.779530000000000000
          Width = 56.440940000000000000
          Height = 11.338582680000000000
          DataField = 'NOTAFISCAL'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbromaneio_clientes."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 155.716535430000000000
          Top = 3.779530000000000000
          Width = 69.921257400000000000
          Height = 11.338582680000000000
          DataField = 'VLR_TOTAL'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
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
            '[dbromaneio_clientes."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181143860000000000
          Top = 3.779530000000000000
          Width = 75.590563390000000000
          Height = 11.338582680000000000
          DataField = 'TRANSPORTADORA_FRETE_STATUS'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_FRETE_STATUS"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 460.205012440000000000
          Top = 3.779530000000000000
          Width = 108.472453150000000000
          Height = 11.338582680000000000
          DataField = 'CLIENTE_NOMECIDADE'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."CLIENTE_NOMECIDADE"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 234.330860000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 69.779530000000000000
          Width = 718.000000000000000000
          Height = 142.000000000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 99.905511810000000000
          Width = 132.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TRANSPORTADORA:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 459.000000000000000000
          Top = 99.905511810000000000
          Width = 58.559060000000000000
          Height = 11.338582677165400000
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
          Left = 587.000000000000000000
          Top = 99.905511810000000000
          Width = 123.000000000000000000
          Height = 11.338582677165400000
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
          Left = 3.779527560000000000
          Top = 111.779530000000000000
          Width = 228.315090000000000000
          Height = 11.338582680000000000
          DataField = 'TRANSPORTADORA_NOME'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 459.000000000000000000
          Top = 111.779530000000000000
          Width = 50.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_CNPJ'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_CNPJ"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 587.000000000000000000
          Top = 111.779530000000000000
          Width = 29.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_IE'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_IE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 126.362204720000000000
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
          Left = 437.842610000000000000
          Top = 126.362204720000000000
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
          Left = 648.740260000000000000
          Top = 126.362204720000000000
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
          Left = 3.779527560000000000
          Top = 138.779530000000000000
          Width = 54.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_ENDERECO'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_ENDERECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 437.842610000000000000
          Top = 138.779530000000000000
          Width = 37.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_ENDERECO'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_ENDERECO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 648.740260000000000000
          Top = 138.779530000000000000
          Width = 20.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_CEP'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_CEP"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527559055120000
          Top = 153.574803150000000000
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
          Left = 3.779527560000000000
          Top = 165.779530000000000000
          Width = 69.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_NOMECIDADE'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_NOMECIDADE"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 177.527520000000000000
          Top = 165.779530000000000000
          Width = 14.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_UF'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_UF"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 177.527520000000000000
          Top = 153.574803150000000000
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
          Left = 216.307050000000000000
          Top = 153.574803150000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 303.409400000000000000
          Top = 153.574803150000000000
          Width = 32.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 303.409400000000000000
          Top = 165.921259840000000000
          Width = 78.472480000000000000
          Height = 11.338582680000000000
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([dbromaneio_clientes."TRANSPORTADORA_DDD"]) TRANSPORTADORA_FAX')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 391.732220000000000000
          Top = 165.669291340000000000
          Width = 45.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_CONTATO'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_CONTATO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 391.732220000000000000
          Top = 153.574803150000000000
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
          Left = 532.606370000000000000
          Top = 153.574803150000000000
          Width = 102.440940000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMAIL DO CLIENTE:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 532.606370000000000000
          Top = 165.669291340000000000
          Width = 28.000000000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'TRANSPORTADORA_EMAIL'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."TRANSPORTADORA_EMAIL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 123.968770000000000000
          Top = 70.779530000000000000
          Width = 93.338590000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DE EMISS'#195'O:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 123.968770000000000000
          Top = 85.031496060000000000
          Width = 94.811070000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] - [Time]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 70.669291340000000000
          Width = 58.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ROMANEIO:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 85.031496060000000000
          Width = 103.252010000000000000
          Height = 11.338582680000000000
          DataField = 'ROMANEIO'
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbromaneio_clientes."ROMANEIO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 84.267716540000000000
          Top = 219.968503940000000000
          Width = 59.000000000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VOLUMES:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 239.078659610000000000
          Top = 219.968503940000000000
          Width = 55.937007870000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 578.267792200000000000
          Top = 219.968503940000000000
          Width = 25.322793150000000000
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
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527559055120000
          Top = 219.968503940000000000
          Width = 71.559060000000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOTA FISCAL:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 155.716535433071000000
          Top = 219.968503940000000000
          Width = 73.700787400000000000
          Height = 11.338582680000000000
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
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181141420000000000
          Top = 219.968503940000000000
          Width = 75.590563390000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FRETE:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 98.370130000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 127.385900000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 152.063080000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 180.299320000000000000
          Width = 718.110236220472000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 228.165740000000000000
          Top = 69.787401570000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 454.543600000000000000
          Top = 99.023622047244100000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 99.023622047244100000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 433.189240000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 645.520100000000000000
          Top = 127.606370000000000000
          Height = 24.566926690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 388.291590000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 151.937007874016000000
          Height = 28.346456692913400000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Top = 233.433210000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 165.921259840000000000
          Width = 76.133890000000000000
          Height = 11.338582680000000000
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '([dbromaneio_clientes."TRANSPORTADORA_DDD"]) TRANSPORTADORA_FONE')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 117.283552440000000000
          Top = 69.787401570000000000
          Height = 28.346456690000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 550.464750000000000000
          Height = 52.913388270000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Georgia'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'NOTA FISCAL - ROMANEIO DE EMBARQUE')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 553.590910000000000000
          Top = 7.559060000000000000
          Width = 162.511750000000000000
          Height = 52.913388270000000000
          Fill.BackColor = 15724527
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149603860000000000
          Top = 9.448823780000000000
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
          Left = 567.149603860000000000
          Top = 24.188981260000000000
          Width = 36.000000000000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149603860000000000
          Top = 39.307091500000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 9.448823780000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 24.188981260000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 632.299215040000000000
          Top = 39.307091500000000000
          Width = 75.590551180000000000
          Height = 12.094488190000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 460.205010000000000000
          Top = 219.968503940000000000
          Width = 100.913393150000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CIDADE (DESTINO):')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 155.716535430000000000
          Top = 3.779527560000000000
          Width = 69.921257400000000000
          Height = 11.338582680000000000
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
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
            '[SUM(<dbromaneio_clientes."VLR_TOTAL">)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 84.283464570000000000
          Top = 3.779527560000000000
          Width = 47.661410000000000000
          Height = 11.338582680000000000
          DataSet = dbfp_romaneio_clientes
          DataSetName = 'dbromaneio_clientes'
          DisplayFormat.FormatStr = '####,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbromaneio_clientes."TRANSPORTADORA_VOLUME">)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 44.574830000000000000
          Width = 343.937230000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '__________________________________________'
            'ASSINATURA (TRANSPORTADORA)')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        object Line15: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763779527560000
          Width = 718.110700000000000000
          Height = -0.000007320000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object dbfp_transportadora: TfrxDBDataset
    UserName = 'dbromaneio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TRANSPORTADORA=TRANSPORTADORA'
      'TRANSPORTADORA_NOME=TRANSPORTADORA_NOME'
      'TRANSPORTADORA_FONE=TRANSPORTADORA_FONE')
    DataSet = db_transportadora
    BCDToCurrency = False
    Left = 312
    Top = 160
  end
end
