{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FComprasPagar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
   TFrmComprasPagar = class(TForm)
      GroupBox5: TGroupBox;
      DBGrid2: TDBGrid;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn3Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmComprasPagar: TFrmComprasPagar;

implementation

uses FCompras, Biblioteca;

{$R *.dfm}

procedure TFrmComprasPagar.BitBtn2Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja excluir registro selecionado?') = True then
   Begin
      FrmCompras.DB_CtaPagar.Delete;
   End;

end;

procedure TFrmComprasPagar.BitBtn3Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja realmente excluir tudo?') = True then
   Begin
      FrmCompras.DB_CtaPagar.First;
      While not FrmCompras.DB_CtaPagar.Eof do
      Begin
         FrmCompras.DB_CtaPagar.Delete;
      End;
   End;

end;

procedure TFrmComprasPagar.BitBtn4Click(Sender: TObject);
begin
   BeepCritica;
   If Pergunta('[FRETE A PAGAR] Deseja excluir registro selecionado?') = True then
   Begin
      FrmCompras.db_CtaPagarFrete.Delete;
   End;


end;

procedure TFrmComprasPagar.BitBtn5Click(Sender: TObject);
begin
   BeepCritica;
   If Pergunta('[FRETE A PAGAR] Deseja realmente excluir tudo?') = True then
   Begin
      FrmCompras.db_CtaPagarFrete.First;
      While not FrmCompras.db_CtaPagarFrete.Eof do
      Begin
         FrmCompras.db_CtaPagarFrete.Delete;
      End;
   End;

end;

procedure TFrmComprasPagar.BitBtn6Click(Sender: TObject);
begin

   If (FrmCompras.DB_CtaPagar.state in [dsedit, dsinsert]) then
   Begin
      FrmCompras.DB_CtaPagar.Post;
   End;

   If (FrmCompras.db_CtaPagarFrete.state in [dsedit, dsinsert]) then
   Begin
      FrmCompras.db_CtaPagarFrete.Post;
   End;

   close;


end;

procedure TFrmComprasPagar.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmComprasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmComprasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

end.
