object FrmPedidoVendaConferenciaGrade: TFrmPedidoVendaConferenciaGrade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido de venda | Conferencia'
  ClientHeight = 270
  ClientWidth = 549
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 243
    Width = 549
    Height = 27
    Align = alBottom
    Caption = 'ESC - Gravar e Sair / F3 - Limpar tudo'
    TabOrder = 0
  end
  object GradePedidoVendas: TGradeProduto
    Left = 0
    Top = 0
    Width = 549
    Height = 243
    Produto.IDProduto = 0
    Connection = FrmPrincipal.DBConexao
    TabelaGrades = 'VIEW_GRADEREFERENCIA'
    TabelaUsar = tbPedidoConferencia
    IDOP = 0
    IDConferencia = 0
    IDPedido = 0
    IDPedidoItens = 0
    IDEmpresa = 0
    AjustarLarguraForm = True
    AjustarAlturaForm = True
    TabOrder = 1
    Color = clWindow
    Align = alClient
    BorderStyle = bsSingle
  end
end
