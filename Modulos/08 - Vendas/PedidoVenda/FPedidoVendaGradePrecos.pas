{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FPedidoVendaGradePrecos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls, DB,  FireDAC.Comp.Client;

type
   TFrmPedidoVendaGradePrecos = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPedidoVendaGradePrecos: TFrmPedidoVendaGradePrecos;

implementation

uses Biblioteca_pcp, Global, FPrincipal, SQLServer;

{$R *.dfm}

procedure TFrmPedidoVendaGradePrecos.FormCreate(Sender: TObject);
begin
   sGradeEditada :=false;

   GradeProduto_Montar(strReferencia, StringGridOpcoes);

   GradeProduto_CarregarPrecos(nPedidoVenda, nTabelaPreco, strReferencia, StringGridOpcoes);


end;

procedure TFrmPedidoVendaGradePrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   //GradeTabelaPrecosSalvar(nPedidoVenda,  slReferencia, StringGridOpcoes);

   Action := Cafree;

end;

procedure TFrmPedidoVendaGradePrecos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      //StringGridOpcoes.Clear;
      GradeZerar(StringGridOpcoes);

      GradeProduto_Montar_OrdemProducaoProduzidos(strReferencia, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmPedidoVendaGradePrecos.FormShow(Sender: TObject);
begin

   Width := StringGridOpcoes.Width + 15;
   Caption := 'Pedido de Venda | Grade de Valores: ' + IntToStr(nPedidoVenda);

   Update;

end;

procedure TFrmPedidoVendaGradePrecos.StringGridOpcoesCellValidate(
  Sender: TObject; ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
   sGradeEditada :=True;

  strCor                :=StringGridOpcoes.Cells[0, ARow];
  strTamanho            :=StringGridOpcoes.Cells[ACol, 0];
  nValorDigitado      :=StrToFloatDef(StringGridOpcoes.Cells[ACol, ARow], 0) ;


end;



end.
