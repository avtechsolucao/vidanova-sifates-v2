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

unit FMaquinas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, Mask, FFrameBotoes,
   FFrameBarra, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   TFrmMaquinas = class(TForm)
      GroupBox1: TGroupBox;
      Label5: TLabel;
      Label1: TLabel;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      EditNome: TDBEdit;
      Label4: TLabel;
      DBEdit1: TDBEdit;
      DBEdit3: TDBEdit;
      Label6: TLabel;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      Label7: TLabel;
      DBEdit4: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      LocalizaOrdemMaquina: TIDBEditDialog;
      DBNavigator1: TDBNavigator;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmMaquinas: TFrmMaquinas;

implementation

uses FPrincipal, Biblioteca, Global, FBaseDados, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmMaquinas.FormCreate(Sender: TObject);
begin
//   FrmPrincipal.Mnu_PCP_Maquinas.Enabled := false;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_maquinas;

   BaseDados_PCP.db_maquinas.Open;
end;

procedure TFrmMaquinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   BaseDados_PCP.db_maquinas.Close;
//   FrmPrincipal.Mnu_PCP_Maquinas.Enabled := true;
   Action := Cafree;
end;

procedure TFrmMaquinas.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmMaquinas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar
      Close;

   end;

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   DBNavigator1.Enabled := false;

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
   DBNavigator1.Enabled := false;

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   DBNavigator1.Enabled := true;

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   DBNavigator1.Enabled := true;

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaOrdemMaquina.Execute then
   begin
      BaseDados_PCP.db_maquinas.Locate('CODIGO',
        LocalizaOrdemMaquina.ResultFieldAsInteger('CODIGO'), []);
   end;

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbProximoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmMaquinas.FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

end.
