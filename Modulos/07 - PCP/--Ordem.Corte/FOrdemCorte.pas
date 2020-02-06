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


unit FOrdemCorte;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, FFrameBotoes, ExtCtrls, Grids, DBGrids, StdCtrls,
   DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, db,
   uEstSearchDialogZeos, Mask, Buttons, IDBEdit, frxClass,
   frxDBSet, FireDAC.Comp.Client;

type
   TFrmOrdemCorte = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      Panel1: TPanel;
      Panel3: TPanel;
      Panel5: TPanel;
      Label4: TLabel;
      Label5: TLabel;
      Label7: TLabel;
      DBEdit3: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit6: TDBEdit;
      LocalizaOrdemProducao: TIDBEditDialog;
      EditOPNome: TEdit;
      LocalizaOrdemCorte: TIDBEditDialog;
    FRX_OrdemCorte: TfrxReport;
      GroupBox3: TGroupBox;
      dbGrid_Referencias: TDBGrid;
      GridMateriaPrima: TDBGrid;
    db_MateriaPrima: TFDQuery;
    ds_MateriaPrimaTecidos: TDataSource;
    db_MateriaPrimaTecidos: TFDQuery;
    db_MateriaPrimaTecidosCODIGO: TIntegerField;
    db_MateriaPrimaTecidosPRODUTO: TStringField;
    db_MateriaPrimaTecidosDESCRICAO: TStringField;
    db_MateriaPrimaTecidosUND: TStringField;
    db_MateriaPrimaTecidosQTDE_METROS: TFloatField;
    db_MateriaPrimaTecidosVLR_UNIT: TFloatField;
    db_MateriaPrimaTecidosVLR_TOTAL: TFloatField;
    db_MateriaPrimaTecidosCOMPOSICAO: TIntegerField;
    db_MateriaPrimaTecidosCOMPOSICAO_DESCRICAO: TStringField;
    db_MateriaPrimaTecidosDIMENSIONAMENTO: TStringField;
    db_MateriaPrimaTecidosCOR: TStringField;
    db_MateriaPrimaTecidosTAMANHO: TStringField;
    ds_MateriaPrima: TDataSource;
    dts_MateriaPrimaGrade: TfrxDBDataset;
    ds_MateriaPrimaGrade: TDataSource;
    db_MateriaPrimaGrade: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure LocalizaOrdemProducaoEnter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOrdemCorte: TFrmOrdemCorte;

implementation

uses FPrincipal, FBaseDados_PCP, Biblioteca, Global,
   UsuariosAcao;

{$R *.dfm}

procedure TFrmOrdemCorte.FormCreate(Sender: TObject);
begin

   Top := 10;
   Left := 10;

   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_OrdemCorte;

   FrmPrincipal.Mnu_OrdemCorte.Enabled := false;

   BaseDados_PCP.db_OrdemCorte.Close;
   BaseDados_PCP.db_OrdemCorte.Params.ParamByName('CODIGO').Clear;
   BaseDados_PCP.db_OrdemCorte.open;

   BaseDados_PCP.db_OrdemCorte_Enfesto.open;
   db_OrdemProduzir.open;

   // Reabrirtabela;

end;

procedure TFrmOrdemCorte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      Close;

end;

procedure TFrmOrdemCorte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmPrincipal.Mnu_OrdemCorte.Enabled := True;

   BaseDados_PCP.db_OrdemCorte.Close;
   BaseDados_PCP.db_OrdemCorte_Enfesto.Close;

   Action := Cafree;
end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   LocalizaOrdemProducao.SetFocus;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   BaseDados_PCP.db_OrdemCorte_Enfesto.Cancel;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
   BaseDados_PCP.db_OrdemCorte_Enfesto.edit;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   db_OrdemProduzir.Close;
   db_OrdemProducao_Referencias.Close;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;

   db_OrdemProduzir.Close;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').Clear;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').AsInteger := BaseDados_PCP.db_OrdemCorte.FieldByName('ORDEM_PRODUCAO').AsInteger;
   db_OrdemProduzir.open;

   FRX_OrdemCorte.ShowReport;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaOrdemCorte.Execute then
   begin

      BaseDados_PCP.db_OrdemCorte.Close;
      BaseDados_PCP.db_OrdemCorte.ParamByName('CODIGO').Clear;
      BaseDados_PCP.db_OrdemCorte.ParamByName('CODIGO').AsInteger :=
        LocalizaOrdemCorte.ResultFieldAsInteger('CODIGO');
      BaseDados_PCP.db_OrdemCorte.open;

      db_OrdemProducao_Referencias.Close;
      db_OrdemProducao_Referencias.ParamByName('ORDEMPRODUCAO').Clear;
      db_OrdemProducao_Referencias.ParamByName('ORDEMPRODUCAO').AsInteger :=
        BaseDados_PCP.db_OrdemCorte.FieldByName('ORDEM_PRODUCAO').AsInteger;
      db_OrdemProducao_Referencias.open;

   end;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   // close;
   Screen.FocusedForm.Close;
end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (BaseDados_PCP.db_OrdemCorte_Enfesto.state in [dsedit, dsinsert]) then
   begin
      BaseDados_PCP.db_OrdemCorte_Enfesto.Post;
   end;

end;

procedure TFrmOrdemCorte.LocalizaOrdemProducaoEnter(Sender: TObject);
begin

   If (BaseDados_PCP.db_OrdemCorte.state in [dsedit, dsinsert]) then
   Begin
      BaseDados_PCP.db_OrdemCorte.Post;
   End;

end;

procedure TFrmOrdemCorte.SpeedButton1Click(Sender: TObject);
begin

   avisosistema(' Por que FECHAR? ' + #13 + #10 +
     ' Se não fechar, não será possivel emitir ordem de produção. ' +
     ' Somente é possivel produzir após finalizaçao do departamento de corte.' +
     #13 + #10 + #13 + #10 +
     ' Atenção: A Ordem e Corte deve ser fechada somente após real término do corte das peças. '

     );

end;

end.
