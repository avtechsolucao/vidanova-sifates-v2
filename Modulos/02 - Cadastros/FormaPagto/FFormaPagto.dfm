inherited FrmFormaPagto: TFrmFormaPagto
  Caption = 'Formas de Pagamento'
  ClientHeight = 579
  ClientWidth = 1014
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1030
  ExplicitHeight = 618
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    Width = 1014
    ExplicitWidth = 1014
    inherited Image3: TImage
      Width = 1014
      ExplicitWidth = 1014
    end
    inherited pnTitulo: TPanel
      Width = 1014
      ExplicitWidth = 1014
      inherited LblBarraTitulo: TLabel
        Width = 871
        Caption = 'Formas de Pagamento'
        ExplicitWidth = 889
      end
      inherited Image2: TImage
        Left = 955
        ExplicitLeft = 958
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 519
    Width = 1014
    ExplicitTop = 519
    ExplicitWidth = 1014
    inherited PanelBotoesBottom: TPanel
      Width = 1004
      ExplicitWidth = 1004
      inherited SpbAdicionar: TSpeedButton
        Left = 110
        ExplicitLeft = 110
      end
      inherited SpbEditar: TSpeedButton
        Left = 310
        ExplicitLeft = 310
      end
      inherited SpbCancelar: TSpeedButton
        Left = 410
        ExplicitLeft = 410
      end
      inherited SpbSalvar: TSpeedButton
        Left = 210
        ExplicitLeft = 210
      end
      inherited SpbExcluir: TSpeedButton
        Left = 510
        ExplicitLeft = 510
      end
      inherited SpbImprimir: TSpeedButton
        Left = 710
        ExplicitLeft = 710
      end
      inherited SpbSair: TSpeedButton
        Left = 900
        ExplicitLeft = 900
      end
      inherited SpbExtra: TSpeedButton
        Left = 810
        ExplicitLeft = 810
      end
      inherited SpbProcurar: TSpeedButton
        Left = 610
        ExplicitLeft = 610
      end
    end
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_FORMAPAGTO'
      'WHERE'
      '%WHERE%')
  end
  inherited pgControl: TPageControl
    Width = 1014
    Height = 486
    ExplicitWidth = 1014
    ExplicitHeight = 486
    inherited tabPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 1006
      ExplicitHeight = 456
      inherited GroupBox1: TGroupBox
        Width = 1006
        Height = 456
        ExplicitWidth = 1006
        ExplicitHeight = 456
        inherited cxGrid: TcxGrid
          Width = 1002
          Height = 437
          ExplicitWidth = 1002
          ExplicitHeight = 437
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 1006
      ExplicitHeight = 456
      object Label7: TLabel [2]
        Left = 174
        Top = 51
        Width = 60
        Height = 13
        Caption = 'Desconto %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [3]
        Left = 93
        Top = 51
        Width = 63
        Height = 13
        Caption = 'Acr'#233'scimo %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [4]
        Left = 254
        Top = 51
        Width = 35
        Height = 13
        Caption = 'Dia fixo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [5]
        Left = 325
        Top = 51
        Width = 72
        Height = 13
        Caption = 'Parcela Minima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inherited rgStatus: TDBRadioGroup
        Top = 315
        Width = 502
        TabOrder = 9
        ExplicitTop = 315
        ExplicitWidth = 502
      end
      object GroupBox2: TGroupBox
        Left = 599
        Top = 8
        Width = 102
        Height = 345
        Caption = 'Prazos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 98
          Height = 328
          Align = alClient
          DataSource = DS_Prazos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = DBGrid1Enter
          Columns = <
            item
              Expanded = False
              FieldName = 'DIAS'
              Title.Caption = 'Dias'
              Visible = True
            end>
        end
      end
      object DBEdit_Multiplicador: TDBEdit
        Left = 174
        Top = 65
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCONTO'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit_indice: TDBEdit
        Left = 93
        Top = 65
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ACRESCIMO'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 492
        Top = 67
        Width = 101
        Height = 17
        Cursor = crHandPoint
        Caption = 'Arredondar Valor'
        DataField = 'ARRED_SN'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit2: TDBEdit
        Left = 254
        Top = 65
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VENCIMENTO_DIA'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 91
        Top = 161
        Width = 502
        Height = 148
        Caption = 'Tipo de pagamento'
        Columns = 2
        DataField = 'TIPO_PAGAMENTO'
        DataSource = dsTabela
        Items.Strings = (
          'Dinheiro'
          #192' Vista (diversos)'
          'A Prazo'
          'Cartao Credito'
          'Duplicata'
          'Boleto'
          'DDA'
          'Cheque'
          'Carteira'
          'Ticket')
        TabOrder = 8
        Values.Strings = (
          'DINHEIRO'
          'A VISTA'
          'A PRAZO'
          'CARTAO'
          'DUPLICATA'
          'BOLETO'
          'DDA'
          'CHEQUE'
          'CARTEIRA'
          'TICKET')
      end
      object DBEdit3: TDBEdit
        Left = 325
        Top = 65
        Width = 84
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PARCELAMINIMA'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBRG_arredond: TDBRadioGroup
        Left = 91
        Top = 92
        Width = 502
        Height = 63
        Caption = 'Centavos'
        Columns = 2
        DataField = 'ARREDONDAR'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Primeira Parcela'
          #218'ltima Parcela')
        ParentFont = False
        TabOrder = 7
        Values.Strings = (
          'P'
          'U')
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select *  from  CAD_FORMAPAGTO'
      'ORDER BY  NOME')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  object DS_Prazos: TDataSource
    DataSet = db_FormaPagtoDias
    Left = 423
    Top = 262
  end
  object db_FormaPagtoDias: TFDQuery
    BeforePost = db_FormaPagtoDiasBeforePost
    MasterSource = dsTabela
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * FROM CAD_FORMAPAGTODIAS'
      'where'
      'CODIGO= :CODIGO'
      'ORDER BY DIAS')
    Left = 424
    Top = 232
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 34
      end>
  end
end
