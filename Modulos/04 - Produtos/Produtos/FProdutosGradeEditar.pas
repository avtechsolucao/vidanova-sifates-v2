{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FProdutosGradeEditar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls;

type
   TFrmProdutosGradeEditar = class(TForm)
      Panel1: TPanel;
      StringGridOpcoes: TStringGrid;

      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosGradeEditar: TFrmProdutosGradeEditar;

implementation

uses FBaseDados_PCP, Biblioteca_pcp, Biblioteca,
  FOrdemProducaoGrade, Global, FProdutosQuantidade, FProdutos;

{$R *.dfm}

procedure TFrmProdutosGradeEditar.FormCreate(Sender: TObject);
begin


   GradeProduto_Montar(strProduto, StringGridOpcoes);

   CadProduto_EstoqueCarregar(FrmProdutos.db_referencias.FieldByName('CODIGO').AsInteger,
                                  strProduto,
                                  StringGridOpcoes);

end;

procedure TFrmProdutosGradeEditar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Action := Cafree;

end;

procedure TFrmProdutosGradeEditar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmProdutosGradeEditar.StringGridOpcoesCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
    blAlterado:=true;
end;

end.
