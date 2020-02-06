{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

unit FOrdemProducaoGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls,  DB, GradeProduto;

type
   TFrmOrdemProducaoGrade = class(TForm)
      Panel1: TPanel;
    GradeOrdemProducao: TGradeProduto;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      FIDEmpresa     : Integer;
      FIDOP          : Integer;
      FProduto       : String;
      FDataOP        : TDateTime;
   end;

var
   FrmOrdemProducaoGrade: TFrmOrdemProducaoGrade;

implementation

uses FBaseDados_PCP, Biblioteca_pcp, Biblioteca,  Global, SQLServer, FPrincipal;

{$R *.dfm}

procedure TFrmOrdemProducaoGrade.FormShow(Sender: TObject);
begin
   GradeOrdemProducao.IDEmpresa          :=FIDEmpresa;
   GradeOrdemProducao.IDOP               :=FIDOP;
   GradeOrdemProducao.Produto.Referencia :=FProduto;
   GradeOrdemProducao.DataOP             :=FDataOP;
   GradeOrdemProducao.CriarEdits;
end;


procedure TFrmOrdemProducaoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if GradeOrdemProducao.Alterado then
  begin
    if pergunta('A grade foi alterada, deseja salvar?') then
    begin
      GradeOrdemProducao.GradeGravar;
    end;
  end;
//   GradeProduto_Salvar_Produzir(nOrdemProducao,
//                                strReferencia,
//                                StringGridOpcoes);

      if not ( BaseDados_PCP.db_OrdemProducaoItens.state in [dsedit,dsinsert]) then
         BaseDados_PCP.db_OrdemProducaoItens.Edit;

      //BaseDados_PCP.db_OrdemProducaoItens.FieldByName('QUANTIDADE').AsFloat := GradeProduto_Totalizar(StringGridOpcoes);
      BaseDados_PCP.db_OrdemProducaoItens.FieldByName('QUANTIDADE').AsFloat := GradeOrdemProducao.GetTotalQuantidade;;

      if ( BaseDados_PCP.db_OrdemProducaoItens.state in [dsedit,dsinsert]) then
         BaseDados_PCP.db_OrdemProducaoItens.Post;


   Action := Cafree;

end;

procedure TFrmOrdemProducaoGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TFrmOrdemProducaoGrade.StringGridOpcoesCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
    blAlterado:=true;
end;

end.
