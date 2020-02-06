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

unit FCustoTempoGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Mask, DBCtrls, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   TFrmCustoTempoGrade = class(TForm)
      GroupBox1: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox3: TGroupBox;
      Label3: TLabel;
      Label1: TLabel;
      EditNome: TDBEdit;
      DBEdit2: TDBEdit;
      GroupBox4: TGroupBox;
      Navegador: TDBNavigator;
      DBGrid1: TDBGrid;
      GroupBox2: TGroupBox;
      DBEdit1: TDBEdit;
      DBEdit3: TDBEdit;
      LocalizaProcessos: TIDBEditDialog;
      LocalizaProcessosGrade: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure DBGrid1Enter(Sender: TObject);
      procedure DBGrid1EditButtonClick(Sender: TObject);
      procedure GroupBox4Enter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCustoTempoGrade: TFrmCustoTempoGrade;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmCustoTempoGrade.FormCreate(Sender: TObject);
begin

//   FrmPrincipal.Mnu_PCP_ProcessosGrade.Enabled := False;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_Cad_processosdGrade;

   BaseDados_PCP.db_Cad_processosdGrade.Open;
   BaseDados_PCP.db_Cad_processosdLista.Open;

end;

procedure TFrmCustoTempoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   FrmPrincipal.Mnu_PCP_ProcessosGrade.Enabled := True;
   BaseDados_PCP.db_Cad_processosdGrade.Close;
   BaseDados_PCP.db_Cad_processosdLista.Close;
   Action := Cafree;
end;

procedure TFrmCustoTempoGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
   begin
      Close;

   end;

end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmCustoTempoGrade.GroupBox4Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvar.Click;

end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmCustoTempoGrade.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaProcessosGrade.Execute then
   begin
      BaseDados_PCP.db_Cad_processosdGrade.Locate('CODIGO',
        LocalizaProcessosGrade.ResultFieldAsInteger('CODIGO'), []);
   end;

end;

procedure TFrmCustoTempoGrade.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmCustoTempoGrade.DBGrid1EditButtonClick(Sender: TObject);
begin

   if (DBGrid1.SelectedField = BaseDados_PCP.
     db_Cad_processosdListaPROCESSO) Then
   Begin

      if LocalizaProcessos.Execute then
      begin

         If not(BaseDados_PCP.db_Cad_processosdLista.state in [dsEdit]) then
            BaseDados_PCP.db_Cad_processosdLista.Edit;

         BaseDados_PCP.db_Cad_processosdLista.FieldByName('PROCESSO').AsInteger
           := LocalizaProcessos.ResultFieldAsInteger('CODIGO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('NOME').AsString :=
           LocalizaProcessos.ResultFieldAsString('DESCRICAO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('TEMPO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('TEMPO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('CUSTO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('CUSTO');

         BaseDados_PCP.db_Cad_processosdLista.Post;

      end;

   End;

end;

procedure TFrmCustoTempoGrade.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmCustoTempoGrade.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_f8 then
   begin

      if LocalizaProcessos.Execute then
      begin

         If not(BaseDados_PCP.db_Cad_processosdLista.state in [dsEdit]) then
            BaseDados_PCP.db_Cad_processosdLista.Edit;

         BaseDados_PCP.db_Cad_processosdLista.FieldByName('PROCESSO').AsInteger
           := LocalizaProcessos.ResultFieldAsInteger('CODIGO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('NOME').AsString :=
           LocalizaProcessos.ResultFieldAsString('DESCRICAO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('TEMPO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('TEMPO');
         BaseDados_PCP.db_Cad_processosdLista.FieldByName('CUSTO').AsFloat :=
           LocalizaProcessos.ResultFieldAsFloat('CUSTO');

         BaseDados_PCP.db_Cad_processosdLista.Post;

      end;

   end;

end;

end.
