object FrmOrdemProducaoMateriaPrimaBaixar: TFrmOrdemProducaoMateriaPrimaBaixar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Baixa de Mat'#233'ria Prima'
  ClientHeight = 523
  ClientWidth = 1139
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
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 1139
    Height = 279
    Align = alClient
    BevelWidth = 3
    TabOrder = 0
    ExplicitWidth = 1002
    object GroupBox1: TGroupBox
      Left = 3
      Top = 35
      Width = 757
      Height = 241
      Align = alClient
      Caption = 'Mat'#233'ria Prima'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 581
      object dbGrid_ProdutosMateriaPrima: TDBGrid
        Left = 2
        Top = 15
        Width = 753
        Height = 224
        Align = alClient
        DataSource = ds_MateriaPrima
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clSilver
            Expanded = False
            FieldName = 'REFERENCIA'
            ReadOnly = True
            Title.Caption = 'Refer'#234'ncia:'
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o:'
            Width = 233
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'QTDE_ESTIMADA'
            ReadOnly = True
            Title.Caption = 'QTDE Estimada:'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_CONSUMOSTOTAL'
            Title.Caption = 'Qtde Baixar:'
            Width = 80
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'ESTOQUE'
            ReadOnly = True
            Title.Caption = 'Em Estoque:'
            Width = 75
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'NECESSIDADE'
            ReadOnly = True
            Title.Caption = 'Restante'
            Width = 85
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'BAIXADO'
            ReadOnly = True
            Title.Caption = 'Baixado (S/N):'
            Width = 79
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 3
      Top = 3
      Width = 1133
      Height = 32
      Align = alTop
      BevelInner = bvRaised
      Caption = 'Mat'#233'ria Prima'
      TabOrder = 1
      ExplicitWidth = 996
    end
    object GroupBox18: TGroupBox
      Left = 760
      Top = 35
      Width = 376
      Height = 241
      Align = alRight
      Caption = 'MAT'#201'RIA PRIMA - GRADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 796
      object GridMateriaPrimaGrade: TDBGrid
        Left = 2
        Top = 15
        Width = 372
        Height = 224
        Align = alClient
        DataSource = ds_MateriaPrimaGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'COR'
            ReadOnly = True
            Title.Caption = 'COR:'
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'TAMANHO'
            ReadOnly = True
            Title.Caption = 'TAMANHO:'
            Width = 52
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'TAMANHOPADRAO'
            ReadOnly = True
            Title.Caption = 'TAMANHO (F8):'
            Width = 71
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'PADRAOCORNOME'
            ReadOnly = True
            Title.Caption = 'NOME COR (F8)'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'QTDE:'
            Width = 46
            Visible = True
          end>
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1139
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    TabOrder = 2
    ExplicitWidth = 1002
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 1139
      Height = 33
    end
    inherited pnTitulo: TPanel
      Width = 1139
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 1002
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 1014
        Height = 25
        Caption = 'Baixa de Mat'#233'ria Prima'
        ExplicitWidth = 236
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
      end
      inherited Image2: TImage
        Left = 1083
        Height = 31
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 482
    Width = 1139
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitWidth = 1002
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Baixar...'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Estornar...'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 1139
    Height = 170
    Align = alTop
    BevelWidth = 3
    TabOrder = 1
    ExplicitWidth = 1002
    object GroupBox2: TGroupBox
      Left = 3
      Top = 35
      Width = 759
      Height = 132
      Align = alClient
      Caption = 'Tecidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 581
      object GridMateriaPrimaTecidos: TDBGrid
        Left = 2
        Top = 15
        Width = 755
        Height = 115
        Align = alClient
        DataSource = ds_MateriaPrimaTecidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clSilver
            Expanded = False
            FieldName = 'REFERENCIA'
            ReadOnly = True
            Title.Caption = 'Refer'#234'ncia:'
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'DESCRICAO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o:'
            Width = 234
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'QTDE_ESTIMADA'
            ReadOnly = True
            Title.Caption = 'QTDE Estimada:'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_CONSUMOSTOTAL'
            Title.Caption = 'Qtde Baixar:'
            Width = 77
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'ESTOQUE'
            ReadOnly = True
            Title.Caption = 'Em Estoque:'
            Width = 75
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'NECESSIDADE'
            ReadOnly = True
            Title.Caption = 'Restante'
            Width = 85
            Visible = True
          end
          item
            Color = clSilver
            Expanded = False
            FieldName = 'BAIXADO'
            ReadOnly = True
            Title.Caption = 'Baixado (S/N):'
            Width = 79
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 3
      Width = 1133
      Height = 32
      Align = alTop
      BevelInner = bvRaised
      Caption = 'Tecidos'
      TabOrder = 1
      ExplicitWidth = 996
    end
    object GroupBox19: TGroupBox
      Left = 762
      Top = 35
      Width = 374
      Height = 132
      Align = alRight
      Caption = 'TECIDOS - GRADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 798
      object DBGrid5: TDBGrid
        Left = 2
        Top = 15
        Width = 370
        Height = 115
        Align = alClient
        DataSource = ds_MateriaPrimaTecidosGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'REFERENCIA_COR_NOME'
            ReadOnly = True
            Title.Caption = 'COR REFER'#202'NCIA:'
            Width = 79
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'COR_ID'
            ReadOnly = True
            Title.Caption = 'CODIGO COR (F8):'
            Width = 94
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'COR_NOME'
            ReadOnly = True
            Title.Caption = 'NOME COR:'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'QTDE:'
            Width = 52
            Visible = True
          end>
      end
    end
  end
  object db_MateriaPrima: TFDQuery
    BeforePost = db_MateriaPrimaBeforePost
    MasterSource = BaseDados_PCP.ds_OrdemProducao
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_MP'
      'where'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'ORDER BY REFERENCIA')
    Left = 272
    Top = 320
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
  end
  object ds_MateriaPrima: TDataSource
    DataSet = db_MateriaPrima
    Left = 132
    Top = 320
  end
  object SP_BaixarEstoque: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_BAIXARESTOQUE'
    Left = 592
    Top = 200
    ParamData = <
      item
        Position = 1
        Name = 'NORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object ds_MateriaPrimaTecidos: TDataSource
    DataSet = db_MateriaPrimaTecidos
    Left = 348
    Top = 48
  end
  object db_MateriaPrimaTecidos: TFDQuery
    BeforePost = db_MateriaPrimaTecidosBeforePost
    MasterSource = BaseDados_PCP.ds_OrdemProducao
    MasterFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM PCP_ORDEMPRODUCAO_MPTECIDOS'
      'where'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      ''
      'ORDER BY REFERENCIA')
    Left = 480
    Top = 48
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
  end
  object db_MateriaPrimaTecidosGrade: TFDQuery
    AfterPost = db_MateriaPrimaTecidosGradeAfterPost
    MasterSource = ds_MateriaPrimaTecidos
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  pcp_ordemproducao_mptecidosgrad'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA'
      'ORDER BY REFERENCIA_COR_NOME')
    Left = 480
    Top = 112
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidosGrade: TDataSource
    DataSet = db_MateriaPrimaTecidosGrade
    Left = 344
    Top = 112
  end
  object db_MateriaPrimaGrade: TFDQuery
    AfterPost = db_MateriaPrimaGradeAfterPost
    MasterSource = ds_MateriaPrima
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  PCP_ORDEMPRODUCAO_MPGRADE'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 272
    Top = 376
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaGrade: TDataSource
    DataSet = db_MateriaPrimaGrade
    Left = 128
    Top = 376
  end
  object db_MateriaPrimaOrigem: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_ORDEMPRODUCAO_MATERIAPRIMA'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'ORDER BY REFERENCIA')
    Left = 488
    Top = 360
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_MateriaPrimaOrigemORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_MateriaPrimaOrigemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_MateriaPrimaOrigemUND: TStringField
      FieldName = 'UND'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemCOMPOSICAO_DESCRICAO: TStringField
      FieldName = 'COMPOSICAO_DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_MateriaPrimaOrigemDIMENSIONAMENTO: TStringField
      FieldName = 'DIMENSIONAMENTO'
      ReadOnly = True
      Size = 200
    end
    object db_MateriaPrimaOrigemCOR: TStringField
      FieldName = 'COR'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ReadOnly = True
      Size = 30
    end
    object db_MateriaPrimaOrigemQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemQTDE_CONSUMOSTOTAL: TFloatField
      FieldName = 'QTDE_CONSUMOSTOTAL'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemVLR_CUSTOTOTAL: TFloatField
      FieldName = 'VLR_CUSTOTOTAL'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ReadOnly = True
    end
    object db_MateriaPrimaOrigemNECESSIDADE: TFloatField
      FieldName = 'NECESSIDADE'
      ReadOnly = True
    end
  end
  object ds_MateriaPrimaOrigem: TDataSource
    DataSet = db_MateriaPrimaOrigem
    Left = 488
    Top = 392
  end
  object db_MateriaPrimaGradeOrigem: TFDQuery
    MasterSource = ds_MateriaPrimaOrigem
    MasterFields = 'ORDEMPRODUCAO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_OP_MATERIAPRIMAGRADE'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      'AND REFERENCIA=:REFERENCIA'
      '--AND QTDE_CONSUMOSTOTAL>0')
    Left = 608
    Top = 352
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaGradeOrigem: TDataSource
    DataSet = db_MateriaPrimaGradeOrigem
    Left = 608
    Top = 384
  end
  object db_MateriaPrimaTecidosOrigem: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_OP_MATERIAPRIMATECIDOS'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      '--AND'
      '--CODIGO=:IDREFERENCIA')
    Left = 776
    Top = 337
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidosOrigem: TDataSource
    DataSet = db_MateriaPrimaTecidosOrigem
    Left = 776
    Top = 368
  end
  object db_MateriaPrimaTecidosGradeOrigem: TFDQuery
    MasterSource = ds_MateriaPrimaTecidosOrigem
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT  *  FROM  VIEW_OP_MATPRIMATECIDOSGRADE'
      'WHERE'
      'ORDEMPRODUCAO=:ORDEMPRODUCAO'
      '  AND REFERENCIA=:REFERENCIA'
      '-- AND QTDE_CONSUMOSTOTAL>0')
    Left = 1048
    Top = 328
    ParamData = <
      item
        Name = 'ORDEMPRODUCAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_MateriaPrimaTecidosGradeOrigem: TDataSource
    DataSet = db_MateriaPrimaTecidosGradeOrigem
    Left = 1048
    Top = 360
  end
  object db_MateriaPrimaTecidosGradeSomar: TFDQuery
    MasterSource = ds_MateriaPrimaTecidos
    MasterFields = 'EMPRESA;CODIGO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT  SUM(QUANTIDADE) AS QUANTIDADE FROM  pcp_ordemproducao_mp' +
        'tecidosgrad'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO'
      'AND'
      'REFERENCIA=:REFERENCIA')
    Left = 936
    Top = 128
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object db_MateriaPrimaGradeSomar: TFDQuery
    MasterSource = ds_MateriaPrima
    MasterFields = 'EMPRESA;CODIGO;REFERENCIA'
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      
        'SELECT  SUM(PCP_ORDEMPRODUCAO_MPGRADE.QUANTIDADE) AS QUANTIDADE ' +
        'FROM  PCP_ORDEMPRODUCAO_MPGRADE'
      
        'JOIN pcp_ordemproducao_mp ON   pcp_ordemproducao_mp.empresa = PC' +
        'P_ORDEMPRODUCAO_MPGRADE.empresa'
      
        '                          AND  pcp_ordemproducao_mp.codigo = PCP' +
        '_ORDEMPRODUCAO_MPGRADE.codigo'
      
        '                          AND  pcp_ordemproducao_mp.referencia =' +
        ' PCP_ORDEMPRODUCAO_MPGRADE.referencia'
      
        '                          AND  pcp_ordemproducao_mp.baixado <>'#39'S' +
        #39
      ''
      'WHERE'
      'PCP_ORDEMPRODUCAO_MPGRADE.EMPRESA=:EMPRESA'
      'AND'
      'PCP_ORDEMPRODUCAO_MPGRADE.CODIGO=:CODIGO'
      'AND'
      'PCP_ORDEMPRODUCAO_MPGRADE.REFERENCIA=:REFERENCIA')
    Left = 400
    Top = 296
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
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
