{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FTerceirizadoLancaFinanceiroPagar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
   TFrmTerceirizadoLancaFinanceiroPagar = class(TForm)
      GroupBox5: TGroupBox;
      DBGrid2: TDBGrid;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn3Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTerceirizadoLancaFinanceiroPagar: TFrmTerceirizadoLancaFinanceiroPagar;

implementation

uses Biblioteca, FTerceirizadoLancaFinanceiro;

{$R *.dfm}

procedure TFrmTerceirizadoLancaFinanceiroPagar.BitBtn2Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja excluir registro selecionado?') = True then
   Begin
      FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Delete;
   End;

end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.BitBtn3Click(Sender: TObject);
begin

   BeepCritica;
   If Pergunta('Deseja realmente excluir tudo?') = True then
   Begin
      FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.First;
      While not FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Eof do
      Begin
         FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Delete;
      End;
   End;

end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.BitBtn6Click(Sender: TObject);
begin

   If (FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.state in [dsedit, dsinsert]) then
   Begin
      FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.Post;
   End;

   close;


end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.close;
   Action := cafree;
end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.FormCreate(Sender: TObject);
begin
   FrmTerceirizadoLancaFinanceiro.DB_CtaPagar.open;
end;

procedure TFrmTerceirizadoLancaFinanceiroPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

end.
