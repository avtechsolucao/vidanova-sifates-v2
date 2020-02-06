inherited FrmGrupos: TFrmGrupos
  Caption = ''
  ClientHeight = 429
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 15
  inherited FrmFrameBarra1: TFrmFrameBarra
    Color = 16024898
    inherited Image3: TImage
      ExplicitWidth = 655
    end
    inherited pnTitulo: TPanel
      inherited LblBarraTitulo: TLabel
        Caption = 'Grupo de Mercadorias'
        ExplicitWidth = 226
      end
      inherited Image2: TImage
        ExplicitLeft = 599
      end
    end
  end
  inherited FrmFrameBotoes1: TFrmFrameBotoes
    Top = 369
    ExplicitTop = 369
  end
  inherited dbEditPesquisar: TIDBEditDialog
    SearchQuery.Strings = (
      'SELECT * FROM CAD_GRUPO'
      'WHERE'
      '%WHERE%')
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
      ExplicitHeight = 306
      inherited EditNome: TDBEdit
        DataField = 'DESCRICAO'
      end
    end
  end
  inherited dbTabela: TFDQuery
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_GRUPO')
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
