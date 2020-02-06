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
unit FNotaFiscalCancelar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, Buttons, DBCtrls, DB, Vcl.Mask,
   classe.global;

type
   TFrmNotaFiscalCancelar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    PnlValorDevolucao: TPanel;
    GroupBox1: TGroupBox;
    dbMemoJustificar: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    painelCaracteres: TPanel;
    grpOpcaoCancelar: TRadioGroup;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbMemoJustificarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmNotaFiscalCancelar: TFrmNotaFiscalCancelar;

implementation

uses Global, Biblioteca, SQLServer, FNotaFiscal,
  Classe.Usuarios, FNotaFiscalEmitidas;

{$R *.dfm}


procedure TFrmNotaFiscalCancelar.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmNotaFiscalCancelar.dbMemoJustificarChange(Sender: TObject);
begin
   strJustificativa :='';
   strJustificativa:=Trim(dbMemoJustificar.Text);
   painelCaracteres.Caption :=Concat(' caracteres: ',IntToStr( Length(strJustificativa) )  );
end;

procedure TFrmNotaFiscalCancelar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (FrmNotaFiscalEmitidas.db_Vendas_nfe.state in [dsedit,dsinsert] ) then
      FrmNotaFiscalEmitidas.db_Vendas_nfe.Cancel;
   Action :=Cafree;
end;

procedure TFrmNotaFiscalCancelar.FormCreate(Sender: TObject);
begin

   Caption :='Nota Fiscal: ' + IntToStr(inNotaFiscal) +' | Cancelar ';

   strSimNao:='';

   FrmNotaFiscalEmitidas.db_Vendas_nfe.Edit;
   FrmNotaFiscalEmitidas.db_Vendas_nfe.FieldByName('CANCELAMENTO_DATA').AsDateTime        := Now;
   FrmNotaFiscalEmitidas.db_Vendas_nfe.FieldByName('CANCELAMENTO_USUARIO').AsWideString   := FUsuario.Nome;
   if (FrmNotaFiscalEmitidas.db_Vendas_nfe.state in [dsedit,dsinsert] ) then
      FrmNotaFiscalEmitidas.db_Vendas_nfe.Post;

   FrmNotaFiscalEmitidas.db_Vendas_nfe.Refresh;

   FUsuario.LogUsuario('Nota Fiscal | Cancelar','Entrou no modulo de cancelamento de NF-e numero ' + IntToStr(inNotaFiscal)  );


end;

procedure TFrmNotaFiscalCancelar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

procedure TFrmNotaFiscalCancelar.FormShow(Sender: TObject);
begin
   dbMemoJustificarChange(Sender);
end;

procedure TFrmNotaFiscalCancelar.BtnOkClick(Sender: TObject);
begin
   if (FrmNotaFiscalEmitidas.db_Vendas_nfe.state in [dsedit,dsinsert] ) then
      FrmNotaFiscalEmitidas.db_Vendas_nfe.Post;

   strJustificativa :='';
   strJustificativa:=Trim(dbMemoJustificar.Text);
   strJustificativa:=UpperCase(strJustificativa);

   painelCaracteres.Caption :=Concat(' caracteres: ',IntToStr( Length(strJustificativa) )  );

   if Length(strJustificativa)<16 then
   begin
     AvisoSistemaErro('Escreva uma justificativa válida para o cancelamento da Nota Fiscal.'
                      +sLineBreak
                      +sLineBreak
                      +'O minimo é 16 caracteres.' );

     exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------

   case grpOpcaoCancelar.ItemIndex of
       0:   strOpcaoCancelar :='TUDO';
       1:   strOpcaoCancelar :='PARCIAL';
   end;
   strSimNao:='OK';
   Close;
end;

end.
