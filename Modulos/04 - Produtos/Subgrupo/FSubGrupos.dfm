inherited FrmSubGrupos: TFrmSubGrupos
  Caption = ''
  ClientHeight = 429
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    Height = 55
    ExplicitHeight = 55
    inherited Image3: TImage
      Height = 55
      ExplicitTop = 0
      ExplicitHeight = 55
    end
    inherited pnTitulo: TPanel
      Height = 55
      ExplicitHeight = 55
      inherited LblBarraTitulo: TLabel
        Height = 47
        Caption = 'Subgrupo de Mercadorias'
        ExplicitWidth = 262
        ExplicitHeight = 47
      end
      inherited Image1: TImage
        Height = 53
        ExplicitHeight = 53
      end
      inherited Image2: TImage
        Height = 47
        ExplicitHeight = 53
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_SUBGRUPO'
      'WHERE'
      '%WHERE%')
  end
  inherited pgControl: TPageControl
    Top = 55
    Height = 314
    ExplicitTop = 55
    ExplicitHeight = 314
    inherited tabPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 284
      inherited GroupBox1: TGroupBox
        Height = 284
        ExplicitHeight = 284
        inherited cxGrid: TcxGrid
          Height = 265
          ExplicitHeight = 265
          inherited cxGridDados: TcxGridDBTableView
            inherited cxGridDadosNome: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAO'
            end
          end
        end
      end
    end
    inherited tabDetalhe: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 922
      ExplicitHeight = 284
      inherited EditNome: TDBEdit
        DataField = 'DESCRICAO'
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_SUBGRUPO')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
