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

unit FOrdemProducaoReferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FFrameBarra, StdCtrls, Buttons, Grids, DBGrids, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB;

type
  TFrmOrdemProducaoReferencias = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbGrid_Referencias: TDBGrid;
    dbProcurarProdutos: TIDBEditDialog;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGrid_ReferenciasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGrid_ReferenciasKeyPress(Sender: TObject; var Key: Char);
  private
    procedure GradeAbrir;
    { Private declarations }
  public
    { Public declarations }
    FOrdemProducao : Integer;
    FIDEmpresa     : Integer;
  end;

var
  FrmOrdemProducaoReferencias: TFrmOrdemProducaoReferencias;

implementation

uses FOrdemProducaoGrade, FBaseDados_PCP, FPrincipal, Biblioteca, SQLServer,
  Global;

{$R *.dfm}

procedure TFrmOrdemProducaoReferencias.BitBtn1Click(Sender: TObject);
begin
   if (BaseDados_PCP.db_OrdemProducaoItens.State in [dsedit,dsinsert]) Then
      BaseDados_PCP.db_OrdemProducaoItens.Post;
   close;
end;

procedure TFrmOrdemProducaoReferencias.BitBtn2Click(Sender: TObject);
begin
   if (BaseDados_PCP.db_OrdemProducaoItens.State in [dsedit,dsinsert]) Then
      BaseDados_PCP.db_OrdemProducaoItens.Cancel;
   close;
end;

procedure TFrmOrdemProducaoReferencias.dbGrid_ReferenciasKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   // ativado somente se o cursor estive na coluna QUANTIDADE
   IF Key = VK_F2 Then
   begin
      strReferencia  := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );
      // if dbGrid_Produtos.SelectedField=db_PedidoItensQTDE then
      if  not empty(strReferencia) then
      Begin
         GradeAbrir;
      End;

   End;

   IF Key = VK_F8 Then
   begin
      if dbProcurarProdutos.Execute then
      begin
         If not(BaseDados_PCP.db_OrdemProducaoItens.state in [dsEdit]) then
            BaseDados_PCP.db_OrdemProducaoItens.Edit;

         BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString    := dbProcurarProdutos.ResultFieldAsString('REFERENCIA');
         BaseDados_PCP.db_OrdemProducaoItens.Post;
         BaseDados_PCP.db_OrdemProducaoItens.Close;
         BaseDados_PCP.db_OrdemProducaoItens.Open;
         BaseDados_PCP.db_OrdemProducaoItens.Locate('REFERENCIA',dbProcurarProdutos.ResultFieldAsString('REFERENCIA'),[]);
      end;
   end;

end;

procedure TFrmOrdemProducaoReferencias.dbGrid_ReferenciasKeyPress(
  Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmOrdemProducaoReferencias.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    IF Key = VK_ESCAPE Then
      close;
end;

procedure TFrmOrdemProducaoReferencias.FormShow(Sender: TObject);
begin
   dbGrid_Referencias.SetFocus;
end;

procedure TFrmOrdemProducaoReferencias.GradeAbrir;
begin
   strReferencia  := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );

   if ValidarReferenciaCorTamanho(strReferencia)=false Then
      exit;

   if (BaseDados_PCP.db_OrdemProducaoItens.State in [dsedit,dsinsert]) Then
      BaseDados_PCP.db_OrdemProducaoItens.Post;

   try
     FrmOrdemProducaoGrade             :=TFrmOrdemProducaoGrade.create(self);
     FrmOrdemProducaoGrade.FIDEmpresa  :=FIDEmpresa;
     FrmOrdemProducaoGrade.FIDOP       :=FOrdemProducao;
     FrmOrdemProducaoGrade.FProduto    :=strReferencia;
     FrmOrdemProducaoGrade.FDataOP     :=BaseDados_PCP.db_OrdemProducaoItens.FieldByName('DATA').AsDateTime;
     FrmOrdemProducaoGrade.ShowModal;
   finally
     FrmOrdemProducaoGrade.Free;
   end;



//   strReferencia :=db_PedidoItens.FieldByName('REFERENCIA').AsString;
//   mIDX          :=db_PedidoItens.FieldByName('IDX').AsInteger;
//
//   try
//     if (db_PedidoItens.State in [dsedit, dsinsert]) then
//     Begin
//        db_PedidoItens.Post;
//     End;
//
//     if blProdutoViaLeitor=False then
//     begin
//        FrmPedidoVendaGrade := TFrmPedidoVendaGrade.Create(self);
//        FrmPedidoVendaGrade.FIDEmpresa      :=db_Pedido.FieldByName('EMPRESA').AsInteger;
//        FrmPedidoVendaGrade.FIDPedido       :=db_Pedido.FieldByName('CODIGO').AsInteger;
//        FrmPedidoVendaGrade.FIDPedidoItens  :=mIDX;
//        FrmPedidoVendaGrade.FProduto        :=strReferencia;
//        FrmPedidoVendaGrade.ShowModal;
//     end;
//   finally
//     db_PedidoItens.Refresh;
//   end;



end;

end.
