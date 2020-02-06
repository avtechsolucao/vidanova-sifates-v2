object FrmOrdemProducaoGrade: TFrmOrdemProducaoGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ordem de Produ'#231#227'o:'
  ClientHeight = 313
  ClientWidth = 631
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 286
    Width = 631
    Height = 27
    Align = alBottom
    Caption = 'ESC - Gravar e Sair / F3 - Limpar tudo'
    TabOrder = 1
    ExplicitTop = 103
    ExplicitWidth = 481
  end
  object GradeOrdemProducao: TGradeProduto
    Left = 0
    Top = 0
    Width = 631
    Height = 286
    Produto.IDProduto = 0
    Connection = FrmPrincipal.DBConexao
    TabelaGrades = 'VIEW_GRADEREFERENCIA'
    TabelaUsar = tbOrdemProducao
    IDOP = 0
    IDPedido = 0
    IDPedidoItens = 0
    IDEmpresa = 0
    AjustarLarguraForm = True
    AjustarAlturaForm = True
    TabOrder = 0
    Color = clWindow
    Align = alClient
    BorderStyle = bsSingle
    ExplicitWidth = 481
    ExplicitHeight = 103
  end
end
