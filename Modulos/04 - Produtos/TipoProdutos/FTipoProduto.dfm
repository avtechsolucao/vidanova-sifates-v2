inherited FrmTipoProduto: TFrmTipoProduto
  Caption = 'Tipos de Produtos'
  ClientHeight = 429
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Tipos de Produtos'
        ExplicitWidth = 184
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_PRODUTOS_TIPO'
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
        DisplayWidth = 90
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
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 306
      inherited lblNome: TLabel
        Left = 212
        Top = 3
        ExplicitLeft = 212
        ExplicitTop = 3
      end
      inherited EditCodigo: TDBEdit
        Width = 196
        Enabled = True
        ExplicitWidth = 196
      end
      inherited EditNome: TDBEdit
        Left = 212
        ExplicitLeft = 212
      end
      inherited rgStatus: TDBRadioGroup
        Left = 212
        ExplicitLeft = 212
      end
    end
  end
  inherited dbTabela: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CAD_PRODUTOS_TIPO')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
