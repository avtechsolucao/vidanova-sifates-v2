inherited FrmTamanhos: TFrmTamanhos
  Caption = ''
  ClientHeight = 429
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Cadastro de Tamanhos'
        ExplicitWidth = 233
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_TAMANHOS'
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
        FieldName = 'TAMANHO'
        WhereSyntax = 'TAMANHO'
        DisplayLabel = 'TAMANHO:'
        DisplayWidth = 60
        DisplayColumnWidth = 70
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end
      item
        FieldName = 'DESCRICAO'
        WhereSyntax = 'DESCRICAO'
        DisplayLabel = 'NOME:'
        DisplayWidth = 80
        DisplayColumnWidth = 0
        FieldType = ftString
        Search = True
        EmptyOperation = eoNull
        DefaultComparison = scContains
        SearchCase = scUpper
      end>
  end
  inherited pgControl: TPageControl
    Height = 336
    ExplicitHeight = 336
    inherited tabPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 306
      inherited GroupBox1: TGroupBox
        Height = 306
        ExplicitHeight = 306
        inherited cxGrid: TcxGrid
          Height = 287
          ExplicitHeight = 287
          inherited cxGridDados: TcxGridDBTableView
            object cxGridDadosTamanho: TcxGridDBColumn [1]
              Caption = 'Tamanho'
              DataBinding.FieldName = 'TAMANHO'
              Options.AutoWidthSizable = False
              Width = 71
            end
            inherited cxGridDadosNome: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
              Width = 706
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 306
      inherited lblCodigo: TLabel
        Left = 10
        ExplicitLeft = 10
      end
      inherited lblNome: TLabel
        Left = 160
        ExplicitLeft = 160
      end
      object Label1: TLabel [2]
        Left = 88
        Top = 8
        Width = 50
        Height = 15
        Caption = 'Tamanho'
        FocusControl = EditTamanho
      end
      inherited EditNome: TDBEdit
        Left = 160
        Width = 433
        DataField = 'DESCRICAO'
        TabOrder = 2
        ExplicitLeft = 160
        ExplicitWidth = 433
      end
      inherited rgStatus: TDBRadioGroup
        Left = 160
        Width = 433
        TabOrder = 3
        ExplicitLeft = 160
        ExplicitWidth = 433
      end
      object EditTamanho: TDBEdit
        Left = 88
        Top = 24
        Width = 67
        Height = 23
        CharCase = ecUpperCase
        DataField = 'TAMANHO'
        DataSource = dsTabela
        Enabled = False
        TabOrder = 1
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_TAMANHOS')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
