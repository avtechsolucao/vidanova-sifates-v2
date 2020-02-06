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

unit FProcessos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Mask, DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos;

type
   TFrmProcessos = class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label5: TLabel;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      EditNome: TDBEdit;
      FrmFrameBarra1: TFrmFrameBarra;
      Label2: TLabel;
      Edittempo: TDBEdit;
      Label4: TLabel;
      DBEdit1: TDBEdit;
      Navegador: TDBNavigator;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisarProcessos: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProcessos: TFrmProcessos;

implementation

uses FPrincipal, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmProcessos.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_Cad_processos;

//   FrmPrincipal.Mnu_PCP_Processos.Enabled := False;
   BaseDados_PCP.db_Cad_processos.Open;

end;

procedure TFrmProcessos.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmProcessos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.Mnu_PCP_Processos.Enabled := True;
   BaseDados_PCP.db_Cad_processos.Close;
   FreeAndNil(FrmProcessos);
end;

procedure TFrmProcessos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmProcessos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProcessos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmProcessos.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmProcessos.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmProcessos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmProcessos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisarProcessos.Execute then
   begin
      BaseDados_PCP.db_Cad_processos.Locate('CODIGO', dbEditPesquisarProcessos.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmProcessos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
      Close;
end;

end.
