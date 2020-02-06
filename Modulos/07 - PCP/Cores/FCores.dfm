inherited FrmCores: TFrmCores
  Caption = ''
  ClientHeight = 429
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Cadastro de Cores'
        ExplicitWidth = 186
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
    inherited PanelBotoesBottom: TPanel
      inherited SpbSair: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSairClick
      end
    end
  end
  inherited dbEditPesquisar: TIDBEditDialog
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
    ActivePage = tabPrincipal
    ExplicitHeight = 336
    inherited tabPrincipal: TTabSheet
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
      ExplicitHeight = 306
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_CORES')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
