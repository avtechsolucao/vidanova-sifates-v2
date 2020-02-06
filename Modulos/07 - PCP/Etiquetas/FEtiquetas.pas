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

unit FEtiquetas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, Mask, jpeg, FFrameBotoes,
   FFrameBarra, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos;

type
   TFrmEtiquetas = class(TForm)
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox3: TGroupBox;
      EditNome: TDBEdit;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      Label1: TLabel;
      GroupBox4: TGroupBox;
      DBGrid1: TDBGrid;
      Panel1: TPanel;
      DBEdit1: TDBEdit;
      Navegador: TDBNavigator;
    dbEditPesquisar: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnNovoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid1Enter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetas: TFrmEtiquetas;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global,
   FBaseDados_PCP;

{$R *.dfm}

procedure TFrmEtiquetas.FormCreate(Sender: TObject);
begin
//   FrmPrincipal.Mnu_PCP_Etiqueta.Enabled := false;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_etiquetas;

   BaseDados_PCP.db_etiquetas.Open;
   BaseDados_PCP.db_etiquetasDetalhes.Open;

end;

procedure TFrmEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   BaseDados_PCP.db_etiquetas.Close;
   BaseDados_PCP.db_etiquetasDetalhes.Close;
//   FrmPrincipal.Mnu_PCP_Etiqueta.Enabled := True;
   Action := Cafree;
end;

procedure TFrmEtiquetas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
end;

procedure TFrmEtiquetas.BtnNovoClick(Sender: TObject);
begin
   BaseDados_PCP.db_etiquetas.Append;
end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.Setfocus;

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   Try
      FrmFrameBotoes1.SpbEditarClick(Sender);

   except
   end;

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

   if (BaseDados_PCP.ds_etiquetasDetalhes.Dataset.State in [dsinsert,
     dsedit]) then
      BaseDados_PCP.ds_etiquetasDetalhes.Dataset.Post;

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      BaseDados_PCP.db_etiquetas.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbProximoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmEtiquetas.FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

procedure TFrmEtiquetas.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmEtiquetas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

end.
