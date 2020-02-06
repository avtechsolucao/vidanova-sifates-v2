{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FPedidoVendaConferenciaGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls,   DBGrids, DB,
   FireDAC.Comp.Client, GradeProduto;

type
   TFrmPedidoVendaConferenciaGrade = class(TForm)
      Panel1: TPanel;
    GradePedidoVendas: TGradeProduto;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      FIDEmpresa     : Integer;
      FIDPedido      : Integer;
      FIDConferencia : Integer;
      FProduto       : String;
   end;

var
   FrmPedidoVendaConferenciaGrade: TFrmPedidoVendaConferenciaGrade;


implementation

uses Biblioteca, FPedidoVendaConferencia, FPrincipal, Global;

{$R *.dfm}

procedure TFrmPedidoVendaConferenciaGrade.FormCreate(Sender: TObject);
begin
  FIDEmpresa     :=0;
  FIDPedido      :=0;
  FIDConferencia :=0;
  FProduto       :='';
end;

procedure TFrmPedidoVendaConferenciaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmPedidoVendaConferenciaGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F3 then
   begin
      if pergunta('Deseja realmente zerar as quantidades?')=false then
        exit;
      GradePedidoVendas.GradeLimpar;
   end;
   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmPedidoVendaConferenciaGrade.FormShow(Sender: TObject);
begin
   FrmPedidoVendaConferenciaGrade.Caption := 'Grade de quantidades /  ' + 'Conferencia: ' + FIDConferencia.ToString;

   GradePedidoVendas.IDEmpresa          :=FIDEmpresa;
   GradePedidoVendas.IDPedido           :=FIDPedido;
   GradePedidoVendas.IDConferencia      :=FIDConferencia;
   GradePedidoVendas.Produto.Referencia :=FProduto;

   //--------------------------------------------------------
   // criar grades
   //--------------------------------------------------------
   GradePedidoVendas.CriarEdits;

end;

end.
