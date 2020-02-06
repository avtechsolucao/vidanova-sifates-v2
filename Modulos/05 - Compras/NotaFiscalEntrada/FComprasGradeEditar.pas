{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FComprasGradeEditar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls;

type
   TFrmComprasGradeEditar = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmComprasGradeEditar: TFrmComprasGradeEditar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Biblioteca_pcp, FCompras;


{$R *.dfm}

procedure TFrmComprasGradeEditar.FormCreate(Sender: TObject);
begin

    sGradeEditada:=false;

   GradeProduto_Montar(strProduto, StringGridOpcoes);

   CompraGrade_QuantidadeCarregar(FrmCompras.db_Compras.FieldByName('CODIGO').AsInteger,
                                  strProduto,
                                  StringGridOpcoes);

end;

procedure TFrmComprasGradeEditar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   CompraGrade_QuantidadeSalvar(FrmCompras.db_Compras.FieldByName('CODIGO').AsInteger,
                            strProduto,
                            StringGridOpcoes);


   FrmCompras.db_ComprasItens.Edit;
   FrmCompras.db_ComprasItens.FieldByName('QUANTIDADE').AsFloat :=GradeProduto_Totalizar(StringGridOpcoes);
   FrmCompras.db_ComprasItens.Post;
   FrmCompras.db_ComprasItens.Refresh;

   Action := Cafree;

end;

procedure TFrmComprasGradeEditar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
//      StringGridOpcoes.Clear;
      GradeProduto_Montar(strProduto, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmComprasGradeEditar.StringGridOpcoesCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
    sGradeEditada:=true;
end;

end.
