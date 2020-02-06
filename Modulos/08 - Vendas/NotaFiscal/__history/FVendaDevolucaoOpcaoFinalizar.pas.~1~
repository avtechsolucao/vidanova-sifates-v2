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
unit FVendaDevolucaoOpcaoFinalizar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, Buttons, DBCtrls, DB;

type
   TFrmVendaDevolucaoOpcaoFinalizar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    PnlValorDevolucao: TPanel;
    rdgOpcao: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmVendaDevolucaoOpcaoFinalizar: TFrmVendaDevolucaoOpcaoFinalizar;

implementation

uses Global, FCompras, Biblioteca, FVendaDevolucaoProdutos;

{$R *.dfm}

procedure TFrmVendaDevolucaoOpcaoFinalizar.BtnOkClick(Sender: TObject);
begin

   if rdgOpcao.ItemIndex<0 then
   begin
     Aviso('Informe o que fazer este valor');
     rdgOpcao.SetFocus;
     exit;
   end;

   if Length(DBMemo1.Text)<5 then
   begin
     Aviso('Informe o Motivo da Devolução');
     DBMemo1.SetFocus;
     exit;
   end;

   if rdgOpcao.ItemIndex=0 then
      strOpcaoDevolver := 'CREDITAR';

   if rdgOpcao.ItemIndex=1 then
      strOpcaoDevolver := 'NAOCREDITAR';

   close;

end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.BtnSairClick(Sender: TObject);
begin
  strOpcaoDevolver := 'CANCELAR';
  close;
end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormCreate(Sender: TObject);
begin

   If not (FrmVendaDevolucaoProdutos.ds_VendasDevolucao.DataSet.state in [dsEdit, dsInsert]) then
      FrmVendaDevolucaoProdutos.ds_VendasDevolucao.DataSet.Edit;

end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

end.
