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


unit FOrdemProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ToolWin, StdCtrls, ActnMan, ActnCtrls, ComCtrls,
  Grids, DBGrids, FFrameBarra, DBCtrls, Mask, Buttons, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,  FireDAC.Comp.Client,
  frxClass, frxDBSet,
  Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.UI.Intf,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script;


type
  TFrmOrdemProducao = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    spt_divisor2: TSplitter;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel1: TCategoryPanel;
    Panel1: TPanel;
    SpbExcluir: TSpeedButton;
    SpbProcurar: TSpeedButton;
    SpbImprimir: TSpeedButton;
    SpbSair: TSpeedButton;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    btnDesaprovar: TSpeedButton;
    btnEncerrar: TSpeedButton;
    btnAutorizar: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    GroupBox5: TGroupBox;
    DBMemo1: TDBMemo;
    btnGerarOrdemProducao: TSpeedButton;
    LocalizaOrdemProducao: TIDBEditDialog;
    dbProcurarProdutos: TIDBEditDialog;
    rdgFiltrarOrdemProducao: TRadioGroup;
    SP_GerarOP: TFDStoredProc;
    SP_Deletar: TFDStoredProc;
    SP_Aprovar: TFDStoredProc;
    SP_MovimentoAtualizar: TFDStoredProc;
    btnOrdemCorte: TSpeedButton;
    CategoryPanel3: TCategoryPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    db_OrdemProducaoImprimir: TFDQuery;
    frd_OrdemProducaoGrade: TfrxDBDataset;
    FRX_OrdemProducao: TfrxReport;
    frx_dsOrdemProducao: TfrxDBDataset;
    db_OrdemProducaoGradeImprimir: TFDQuery;
    FRX_OrdemCorte: TfrxReport;
    db_MateriaPrimaTecidos: TFDQuery;
    ds_MateriaPrimaTecidos: TDataSource;
    db_MateriaPrima: TFDQuery;
    ds_MateriaPrima: TDataSource;
    db_MateriaPrimaGrade: TFDQuery;
    ds_MateriaPrimaGrade: TDataSource;
    dts_MateriaPrimaGrade: TfrxDBDataset;
    dts_MateriasPrimas: TfrxDBDataset;
    dts_Tecidos: TfrxDBDataset;
    ds_OrdemProduzir: TDataSource;
    db_OrdemProduzir: TFDQuery;
    db_AprovarAcao: TFDQuery;
    DBGrid1: TDBGrid;
    SP_DeletarFase: TFDStoredProc;
    SP_MontarGrade: TFDStoredProc;
    ProgressBar1: TProgressBar;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    EditReferencia: TLabeledEdit;
    db_OPReferencias: TFDQuery;
    ds_OPReferencias: TDataSource;
    PopupMenu1: TPopupMenu;
    AprovarTudo1: TMenuItem;
    Desaprovartudo1: TMenuItem;
    db_MateriaPrimaTecidosGrade: TFDQuery;
    ds_MateriaPrimaTecidosGrade: TDataSource;
    dts_TecidosGrade: TfrxDBDataset;
    Label1: TLabel;
    QryMontarFasesProcesso: TFDQuery;
    QryMontarFases: TFDQuery;
    QryFaseLista: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpbProcurarClick(Sender: TObject);
    procedure rdgFiltrarOrdemProducaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarOrdemProducaoClick(Sender: TObject);
    procedure btnAutorizarClick(Sender: TObject);
    procedure btnDesaprovarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure SpbExcluirClick(Sender: TObject);
    procedure SpbImprimirClick(Sender: TObject);
    procedure btnOrdemCorteClick(Sender: TObject);
    procedure EditReferenciaChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure AprovarTudo1Click(Sender: TObject);
    procedure Desaprovartudo1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    FStart   : Boolean;
    procedure prcFiltrarOrdemProducao;
    procedure GradeAbrir;
    procedure MontarFaseGrade(lAcao: String);
    procedure prcRefresh;
    procedure prcProcurar;
    procedure ScriptFases(aFase : Integer; aFaseOrdem : String);
    { Private declarations }
  public
    { Public declarations }
    FDataPrevisao : TDate;
    function FrFileExists(FileName: string): boolean;
  end;

var
  FrmOrdemProducao: TFrmOrdemProducao;


  lblnCancelar,
  lblnTodosPedidos,
  lblnTodosClientes,
  lblnTodosVendedores       : Boolean;


implementation

uses FPrincipal, FBaseDados_PCP, SQLServer, Biblioteca, Global,
  FOrdemProducaoPedidos,  FOrdemProducaoReferencias,
  FOrdemProducaoMateriaPrimaBaixar, Classe.Usuarios;

{$R *.dfm}


function TFrmOrdemProducao.FrFileExists(FileName : string):boolean;
begin
  // required logic
  Result := FileExists(FileName);
end;


procedure TFrmOrdemProducao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   strNatureza    :=BaseDados_PCP.db_OrdemProducao.FieldByName('NATUREZA').AsString;
   strSimNao      :=BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString;

   if (key=vk_f2) then
   begin
      if (strNatureza='MANUAL') and (strSimNao='N') Then
      Begin
         GradeAbrir;
      End
      else
      begin
         FUsuario.LogUsuario('ordem de produção | alterar grade','tentou alterar grade de quantidade da OP ' + IntToStr(nOrdemProducao) +
         '. O sistema não permitiu, por já estar aprovado/autorizado para produção. ' );

         AvisoSistemaErro('Não é possivel alterar grade.'
                      +sLineBreak
                      +sLineBreak
                      +'Para alterar a grade desta Ordem de Produção:'
                      +sLineBreak
                      +' - não poderá estar Aprovado/Autorizado; '
                      +sLineBreak
                      +' - a Naturza não pode ser Pedido de Venda; '

                      );

      end;
   end;

   if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
   begin
      FUsuario.LogUsuario('ordem de produção | deletar','tentou deletar Ordem de Produção ' + IntToStr(nOrdemProducao)+'.'
      +sLineBreak
      +'Tentou usando CTRL+DELETE. O sistema não permitiu deletar usando este metodo. '
      +sLineBreak
      +'O Correto é utilizar o botão [Deletar].'  );
      abort;
   end;

end;

procedure TFrmOrdemProducao.DBGrid2CellClick(Column: TColumn);
begin
   EditReferencia.Text :=db_OPReferencias.FieldByName('REFERENCIA').AsString;
end;

procedure TFrmOrdemProducao.Desaprovartudo1Click(Sender: TObject);
begin

   ProgressBar1.Max :=BaseDados_PCP.db_OrdemProducao.RecordCount;
   ProgressBar1.Position := 0;
   BaseDados_PCP.db_OrdemProducao.first;
   while not BaseDados_PCP.db_OrdemProducao.Eof do
   begin

      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

      //  ESSA PROCEDURE (SPOP_DELETARFASE) DEVE SER EXECUTADA
      //  ANTES DA PROOEDURE "SPOP_DELETAR"
      SP_DeletarFase.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
      SP_DeletarFase.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
      SP_DeletarFase.ExecProc;
      SP_DeletarFase.close;

      SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
      SP_Aprovar.ParamByName('ACAO').AsString             :=  'DESAPROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      prcRefresh;
      BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

      // Enviar comando para atualizar movimentação de produtos
      SP_MovimentoAtualizar.ExecProc;
      SP_MovimentoAtualizar.close;

      MontarFaseGrade('DELETAR');
      ProgressBar1.Position :=  ProgressBar1.Position + 1;
      Application.ProcessMessages;
      BaseDados_PCP.db_OrdemProducao.Next;

   end;

   BaseDados_PCP.db_OrdemProducao.Refresh;
   aviso('Ordem de Produção desaprovada (reaberta) com sucesso.');
   ProgressBar1.Position := 0;


end;

procedure TFrmOrdemProducao.EditReferenciaChange(Sender: TObject);
begin
   prcProcurar;
end;

procedure TFrmOrdemProducao.prcProcurar;
Var
   nOrdemProducaoReferencia : Integer;
   WSREFERENCIA : STRING;
begin

   db_OPReferencias.First;
   db_OPReferencias.Locate('REFERENCIA', (EditReferencia.Text) ,[]);
   nOrdemProducaoReferencia :=db_OPReferencias.FieldByName('CODIGO').AsInteger;


   BaseDados_PCP.db_OrdemProducao.First;
   BaseDados_PCP.db_OrdemProducao.Locate('CODIGO',nOrdemProducaoReferencia,[]);

end;

procedure TFrmOrdemProducao.FormActivate(Sender: TObject);
begin

   rdgFiltrarOrdemProducaoClick(Sender);
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);

   FStart := False;
   prcFiltrarOrdemProducao;

end;

procedure TFrmOrdemProducao.FormCreate(Sender: TObject);
begin
   FStart := True;
   FrmPrincipal.actChaoFabricaOrdemProducao.Enabled := false;

   BaseDados_PCP.db_OrdemProducao.Close;
   BaseDados_PCP.db_OrdemProducaoItens.Close;
   db_OPReferencias.Close;

   BaseDados_PCP.db_OrdemProducao.Params.ParamByName('EMPRESA').Clear;
   BaseDados_PCP.db_OrdemProducao.open;
   BaseDados_PCP.db_OrdemProducaoItens.open;
   db_OPReferencias.Open;

   btnAutorizar.Visible   :=(fncUsuario_retCampo(nUsuario,'PRODUCAOAPROVAR')='S');
   btnDesaprovar.Visible  :=(fncUsuario_retCampo(nUsuario,'PRODUCAOAPROVAR')='S');

end;

procedure TFrmOrdemProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   BaseDados_PCP.db_OrdemProducao.Close;
   BaseDados_PCP.db_OrdemProducaoItens.Close;
   db_OPReferencias.Close;

   FrmPrincipal.actChaoFabricaOrdemProducao.Enabled := True;
   FreeAndNil(FrmOrdemProducao);
end;


procedure TFrmOrdemProducao.FormResize(Sender: TObject);
begin
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);

end;

procedure TFrmOrdemProducao.FormShow(Sender: TObject);
begin

   rdgFiltrarOrdemProducaoClick(Sender);
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);


end;


procedure TFrmOrdemProducao.SpbExcluirClick(Sender: TObject);
begin
   if BaseDados_PCP.db_OrdemProducao.IsEmpty then
   begin
      Informar('Não há dados para excluir');
      Abort;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistema('Ordem de Produção já foi encerrada e não poderá ser excluida.');
      abort;
   End;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistema('Ordem de Produção já foi aprovada e não pode ser excluida. '
                   +sLineBreak
                   +sLineBreak
                   +'Desaprove (reabra) a Ordem de Produção e então você conseguirá excluir.'
                   );
      abort;
   End;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_PRODUZIDA').AsInteger > 0) then
   begin
      FormMensagem
        ('Não é permitido deletar. Há produção concluida para esta Ordem de Produção.' + #13
        + #10 + 'Já foram produzidos ' + FormatFloat('###,##0',
         BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_PRODUZIDA').AsInteger));
      Abort;
   end;

   if pergunta('Deseja realmente excluir este registro?')=false then
   begin
      Abort;
   end;

   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   FUsuario.LogUsuario('ordem de produção | deletar','deletou Ordem de Produção ' + IntToStr(nOrdemProducao)  );

   SP_Deletar.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
   SP_Deletar.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
   SP_Deletar.ExecProc;
   SP_Deletar.close;

   SP_DeletarFase.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
   SP_DeletarFase.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
   SP_DeletarFase.ExecProc;
   SP_DeletarFase.close;

   prcRefresh;

   Informar('Registro excluido');

end;

procedure TFrmOrdemProducao.SpbImprimirClick(Sender: TObject);
begin
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   If (BaseDados_PCP.db_OrdemProducao.state in [dsedit, dsinsert]) then
      BaseDados_PCP.db_OrdemProducao.Post;

   db_OrdemProducaoImprimir.Close;
   db_OrdemProducaoGradeImprimir.Close;
   try
     db_OrdemProducaoImprimir.Open;
     db_OrdemProducaoGradeImprimir.Open;

     FRX_OrdemProducao.Variables['rptPrint']    := QuotedStr ('');
     if FileExists(db_OrdemProducaoImprimir.FieldByname('FOTO_PATH').AsString) then
     begin
       FRX_OrdemProducao.Variables['rptPrint']   := QuotedStr ('SIM');
       FRX_OrdemProducao.Variables['rptCaminho'] := QuotedStr (db_OrdemProducaoImprimir.FieldByname('FOTO_PATH').AsString);
     end;


     FRX_OrdemProducao.ShowReport;
     FUsuario.LogUsuario('ordem de produção | Ordem de Corte','imprimiu Ordem de Produção: ' + IntToStr(nOrdemProducao)  );
   finally
     db_OrdemProducaoImprimir.Close;
     db_OrdemProducaoGradeImprimir.Close;
   end;


end;

procedure TFrmOrdemProducao.SpbProcurarClick(Sender: TObject);
begin
   if LocalizaOrdemProducao.Execute then
   begin

      BaseDados_PCP.db_OrdemProducaoItens.Close;
      BaseDados_PCP.db_OrdemProducao.Locate('CODIGO',LocalizaOrdemProducao.ResultFieldAsInteger('CODIGO'),[]);
      BaseDados_PCP.db_OrdemProducaoItens.open;
      prcRefresh;
      DimensionarGrid(DBGrid1,self);
      DimensionarGrid(DBGrid2,self);

   end;

end;

procedure TFrmOrdemProducao.SpbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmOrdemProducao.SpeedButton6Click(Sender: TObject);
begin

   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;


   db_MateriaPrima.Close;
   db_MateriaPrima.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrima.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrima.open;

   db_MateriaPrimaGrade.Close;
   db_MateriaPrimaGrade.open;

   db_MateriaPrimaTecidos.Close;
   db_MateriaPrimaTecidos.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaTecidos.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaTecidos.open;

   db_MateriaPrimaTecidosGrade.Close;
   db_MateriaPrimaTecidosGrade.open;


   FrmOrdemProducaoMateriaPrimaBaixar :=TFrmOrdemProducaoMateriaPrimaBaixar.Create(self);
   FrmOrdemProducaoMateriaPrimaBaixar.ShowModal;

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;
   db_MateriaPrimaGrade.Close;

end;

procedure TFrmOrdemProducao.btnOrdemCorteClick(Sender: TObject);
begin

   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   db_OrdemProducaoImprimir.Close;
   db_OrdemProducaoGradeImprimir.Close;

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;

   db_MateriaPrimaGrade.Close;
   db_MateriaPrimaGrade.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaGrade.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaGrade.open;

   db_MateriaPrimaTecidosGrade.Close;
   db_MateriaPrimaTecidosGrade.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaTecidosGrade.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaTecidosGrade.open;

   db_OrdemProduzir.Close;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').Clear;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_OrdemProduzir.open;

   FRX_OrdemCorte.ShowReport;
   FUsuario.LogUsuario('ordem de produção | Ordem de Corte','imprimiu Ordem de Corte referente Ordem de Produção: ' + IntToStr(nOrdemProducao)  );

end;

procedure TFrmOrdemProducao.btnDesaprovarClick(Sender: TObject);
begin
   if BaseDados_PCP.db_OrdemProducao.IsEmpty then
   begin
      AvisoSistemaErro('Selecione uma Ordem de Produção');
      exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'N')   or
      (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'NAO') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produção já foi desaprovada (reaberta).');
      abort;
   End;

   if not FProgramador then
   Begin
     if (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'S') or
       (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'SIM') then
     Begin
        BeepCritica;
        AvisoSistemaErro('Ordem de Produção já foi encerrada e não poderá ser desaprovada (reaberta).');
        abort;
     End;
   End;

   prcStatusMessage('Ordem de Produção','desaprovando e deletando processos de produção, aguarde...',True);
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   //  ESSA PROCEDURE (SPOP_DELETARFASE) DEVE SER EXECUTADA
   //  ANTES DA PROOEDURE "SPOP_DELETAR"
   SP_DeletarFase.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
   SP_DeletarFase.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
   SP_DeletarFase.ExecProc;
   SP_DeletarFase.close;

   SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
   SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
   SP_Aprovar.ParamByName('ACAO').AsString             :=  'DESAPROVAR';
   SP_Aprovar.ExecProc;
   SP_Aprovar.close;

   FUsuario.LogUsuario('ordem de produção | desaprovar','Desaprovou (reabriu) Ordem de Produção ' + IntToStr(nOrdemProducao)  );

   prcRefresh;
   BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

   // Enviar comando para atualizar movimentação de produtos
   SP_MovimentoAtualizar.ExecProc;
   SP_MovimentoAtualizar.close;

   MontarFaseGrade('DELETAR');
   prcStatusMessage('','',False);
   aviso('Ordem de Produção desaprovada (reaberta) com sucesso.');

end;

procedure TFrmOrdemProducao.btnEncerrarClick(Sender: TObject);
begin

   If (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'NAO') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'N')    then
   begin
      AvisoSistemaErro('Ordem de Produção ainda não foi Autorizada.... E não poderá ser encerrada.');
      exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produção já foi encerrada.');
      abort;
   End;

   If pergunta('Desejar fechar esta Ordem de Produção?') = false then
      exit;

   If not(BaseDados_PCP.db_OrdemProducao.state in [dsedit, dsinsert]) then
      BaseDados_PCP.db_OrdemProducao.edit;
   BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString   := 'S';
   If (BaseDados_PCP.db_OrdemProducao.state in [dsedit, dsinsert]) then
      BaseDados_PCP.db_OrdemProducao.Post;

   FUsuario.LogUsuario('ordem de produção | encerrar','Encerrou Ordem de Produção ' + IntToStr(nOrdemProducao)  );
   prcRefresh;

   Aviso('Ordem de Produção encerrada com sucesso.');


end;

procedure TFrmOrdemProducao.AprovarTudo1Click(Sender: TObject);
begin

   ProgressBar1.Position := 0;
   ProgressBar1.Max :=BaseDados_PCP.db_OrdemProducao.RecordCount;
   BaseDados_PCP.db_OrdemProducao.first;
   while not BaseDados_PCP.db_OrdemProducao.Eof do
   begin

      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

     // Enviar comando para aprovar pedido
     SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
     SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
     SP_Aprovar.ParamByName('ACAO').AsString             :=  'APROVAR';
     SP_Aprovar.ExecProc;
     SP_Aprovar.Close;


     prcRefresh;
     BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

     // Enviar comando para atualizar movimentação de produtos
     SP_MovimentoAtualizar.ExecProc;
     SP_MovimentoAtualizar.close;

      MontarFaseGrade('CRIAR');

      ProgressBar1.Position :=  ProgressBar1.Position + 1;
      Application.ProcessMessages;
      BaseDados_PCP.db_OrdemProducao.Next;

   end;

   BaseDados_PCP.db_OrdemProducao.Refresh;
   aviso('Ordem de Produção aprovada com sucesso.');
   ProgressBar1.Position := 0;

end;

procedure TFrmOrdemProducao.btnAutorizarClick(Sender: TObject);
begin

   if BaseDados_PCP.db_OrdemProducao.IsEmpty then
   begin
      AvisoSistemaErro('Selecione uma Ordem de Produção');
      exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produção já foi aprovada (liberada para produção).');
      abort;
   End;


   prcStatusMessage('Ordem de Produção','autorizando e criando processos de produção, aguarde...',True);
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   // Enviar comando para aprovar pedido
   SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
   SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
   SP_Aprovar.ParamByName('ACAO').AsString             :=  'APROVAR';
   SP_Aprovar.ExecProc;
   SP_Aprovar.Close;


   FUsuario.LogUsuario('ordem de produção | aprovar','Aprovou Ordem de Produção ' + IntToStr(nOrdemProducao)  );

   prcRefresh;
   BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);


   // Enviar comando para atualizar movimentação de produtos
   SP_MovimentoAtualizar.ExecProc;
   SP_MovimentoAtualizar.close;

   MontarFaseGrade('CRIAR');

   prcStatusMessage('','',False);
   aviso('Ordem de Produção aprovada com sucesso.');

end;

procedure TFrmOrdemProducao.btnGerarOrdemProducaoClick(Sender: TObject);
begin

   FDataPrevisao := 0;
   FrmOrdemProducaoPedidos :=TFrmOrdemProducaoPedidos.create(self);
   FrmOrdemProducaoPedidos.ShowModal;

   if lblnCancelar=True then
   begin
      exit;
   end;

   // -----------------------------------------------------------------
   // se for manualmente
   // -----------------------------------------------------------------
   if strNatureza='MANUAL' then
   begin
      BaseDados_PCP.db_OrdemProducao.Append;
      BaseDados_PCP.db_OrdemProducao.FieldByName('LOTE').AsInteger          := nLoteProducao;
      BaseDados_PCP.db_OrdemProducao.FieldByName('NATUREZA').AsString       := 'MANUAL';
      BaseDados_PCP.db_OrdemProducao.FieldByName('DATAPREVISAO').AsDateTime := FDataPrevisao;
      BaseDados_PCP.db_OrdemProducao.Post;

      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

      FUsuario.LogUsuario('ordem de produção | gerar','Gerou Ordem de Produção ['+IntToStr(nOrdemProducao) +']. Digitou cada produto a ser produzido.'  );

      //prcRefresh;
      prcFiltrarOrdemProducao;
      if BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []) then
      begin
        GradeAbrir;
        AvisoSistema('Ordem de Produção gerada com sucesso!');
      end
      else
      begin
        Erro('Erro ao gerar Ordem de Produção '+nOrdemProducao.ToString);
      end;
   end;

end;

procedure TFrmOrdemProducao.rdgFiltrarOrdemProducaoClick(Sender: TObject);
begin
   if FStart  then
     exit;

   prcFiltrarOrdemProducao;

end;

procedure TFrmOrdemProducao.prcFiltrarOrdemProducao;
begin

   if FStart  then
     exit;

  BaseDados_PCP.db_OrdemProducao.Close;
  BaseDados_PCP.db_OrdemProducao.SQL.Clear;
  BaseDados_PCP.db_OrdemProducao.SQL.Add('SELECT * FROM PCP_ORDEMPRODUCAO  ');
  BaseDados_PCP.db_OrdemProducao.SQL.Add('WHERE                            ');
  BaseDados_PCP.db_OrdemProducao.SQL.Add('EMPRESA=:EMPRESA                  ');
  {
  BaseDados_PCP.db_OrdemProducao.SQL.Add('AND                              ');
  BaseDados_PCP.db_OrdemProducao.SQL.Add('REFERENCIA LIKE :SREFERENCIA          ');
   BaseDados_PCP.db_OrdemProducao.ParamByName('SREFERENCIA').AsString :='%%';
  }

  if rdgFiltrarOrdemProducao.ItemIndex=1 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('APROVADO='+QuotedStr('N'));
  end;

  if rdgFiltrarOrdemProducao.ItemIndex=2 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('APROVADO='+QuotedStr('S'));
  end;

  if rdgFiltrarOrdemProducao.ItemIndex=3 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('ENCERRADO='+QuotedStr('N'));
  end;

  if rdgFiltrarOrdemProducao.ItemIndex=4 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('ENCERRADO='+QuotedStr('S'));
  end;

  BaseDados_PCP.db_OrdemProducao.SQL.Add('ORDER BY EMPRESA DESC, DATA DESC, CODIGO DESC');

   BaseDados_PCP.db_OrdemProducao.open;
   prcRefresh;
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);

end;

procedure TFrmOrdemProducao.prcRefresh;
begin
   BaseDados_PCP.db_OrdemProducao.Refresh;
   BaseDados_PCP.db_OrdemProducaoItens.Refresh;
   BaseDados_PCP.db_OrdemProducao.Close;
   BaseDados_PCP.db_OrdemProducaoItens.Close;

   BaseDados_PCP.db_OrdemProducao.Open;
   BaseDados_PCP.db_OrdemProducaoItens.Open;

   db_OPReferencias.close;
   db_OPReferencias.Open;
end;


procedure TFrmOrdemProducao.GradeAbrir;
begin

   nOrdemProducao := BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   FrmOrdemProducaoReferencias :=TFrmOrdemProducaoReferencias.create(self);
   FrmOrdemProducaoReferencias.FIDEmpresa     :=BaseDados_PCP.db_OrdemProducao.FieldByName('EMPRESA').AsInteger;
   FrmOrdemProducaoReferencias.FOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   FrmOrdemProducaoReferencias.ShowModal;

   FUsuario.LogUsuario('ordem de produção | alterar grade','alterou grade de quantidade da OP ' + IntToStr(nOrdemProducao) );

   BaseDados_PCP.db_OrdemProducao.Edit;
   BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_TOTAL').AsFloat :=fncOrdemProducaoSomar(nOrdemProducao);
   if BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_RESTANTE').AsFloat<=0 then
      BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_RESTANTE').AsFloat :=fncOrdemProducaoSomar(nOrdemProducao);
   BaseDados_PCP.db_OrdemProducao.Post;

end;

{
procedure TFrmOrdemProducao.MontarFaseGrade(lAcao:String);
begin
   lAcao:=uppercase(trim(lAcao));

   nOrdemProducao := BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   BaseDados_PCP.db_OrdemProducaoItens.close;
   BaseDados_PCP.db_OrdemProducaoItens.Open;
   ProgressBar1.Max       :=BaseDados_PCP.db_OrdemProducaoItens.RecordCount;
   ProgressBar1.Position  :=0;


   while not BaseDados_PCP.db_OrdemProducaoItens.eof do
   begin
      strReferencia := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );

      // criar lista da ordem de grade
      SP_MontarGrade.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
      SP_MontarGrade.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
      SP_MontarGrade.ParamByName('NFASEGRADE').AsInteger      :=  StrToIntDef( fncProduto_retCampo(strReferencia,'FASE'),0);
      SP_MontarGrade.ParamByName('ACAO').AsString             :=  lAcao;
      SP_MontarGrade.ExecProc;
      SP_MontarGrade.Close;
      ProgressBar1.Position  := ProgressBar1.Position  + 1 ;
      Application.ProcessMessages;
      BaseDados_PCP.db_OrdemProducaoItens.Next;
      Application.ProcessMessages;
   end;
   ProgressBar1.Position  :=0;

end;
}

procedure TFrmOrdemProducao.MontarFaseGrade(lAcao:String);
var
  nIDFase : Integer;
begin
   lAcao:=uppercase(trim(lAcao));

   nOrdemProducao := BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   BaseDados_PCP.db_OrdemProducaoItens.close;
   BaseDados_PCP.db_OrdemProducaoItens.Open;
   ProgressBar1.Max       :=BaseDados_PCP.db_OrdemProducaoItens.RecordCount;
   ProgressBar1.Position  :=0;

   try
     BaseDados_PCP.db_OrdemProducaoItens.DisableControls;
     BaseDados_PCP.db_OrdemProducao.DisableControls;
     while not BaseDados_PCP.db_OrdemProducaoItens.eof do
     begin
        // criar lista da ordem de grade
        //      SP_MontarGrade.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
        //      SP_MontarGrade.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
        //      SP_MontarGrade.ParamByName('NFASEGRADE').AsInteger      :=
        //      SP_MontarGrade.ParamByName('ACAO').AsString             :=  lAcao;
        //      SP_MontarGrade.ExecProc;
        //      SP_MontarGrade.Close;

        nIDFase :=0;
        strReferencia  := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );
        nIDFase        := StrToIntDef( GetProdutoCampo(strReferencia,'FASE'),0);

        QryFaseLista.Close;
        QryFaseLista.ParamByName('ID').AsInteger := nIDFase;
        QryFaseLista.Open;
        try
          while not QryFaseLista.Eof do
          begin
            if lAcao='CRIAR' then
            begin
              ScriptFases(QryFaseLista.FieldByName('FASE').AsInteger,
                          QryFaseLista.FieldByName('ORDEM').AsString);
            end;

            QryFaseLista.Next;
            Application.ProcessMessages;
          end;
        finally
          QryFaseLista.Close;
        end;

        ProgressBar1.Position  := ProgressBar1.Position  + 1 ;
        Application.ProcessMessages;
        BaseDados_PCP.db_OrdemProducaoItens.Next;
        Application.ProcessMessages;
     end;
   finally
     ProgressBar1.Position  :=0;
     BaseDados_PCP.db_OrdemProducaoItens.First;
     BaseDados_PCP.db_OrdemProducao.EnableControls;
     BaseDados_PCP.db_OrdemProducaoItens.EnableControls;
   end;

end;

procedure TFrmOrdemProducao.ScriptFases(aFase : Integer; aFaseOrdem : String);
begin
  try
    QryMontarFases.Close;
    QryMontarFases.SQL.Clear;
    QryMontarFases.SQL.Add(' INSERT INTO PCP_ORDEMPRODUCAO_ANDAMENTO( ');
    QryMontarFases.SQL.Add('         	 EMPRESA, ');
    QryMontarFases.SQL.Add('           CODIGO, ');
    QryMontarFases.SQL.Add('           TERCEIRIZADO, ');
    QryMontarFases.SQL.Add('           FASE, ');
    QryMontarFases.SQL.Add('           FASEORDEM, ');
    QryMontarFases.SQL.Add('           FASETRANSFERENCIA, ');
    QryMontarFases.SQL.Add('           REFERENCIA, ');
    QryMontarFases.SQL.Add('           IDENTIFICADOR, ');
    QryMontarFases.SQL.Add('           DESCRICAO, ');
    QryMontarFases.SQL.Add('           COR_ID, ');
    QryMontarFases.SQL.Add('           COR, ');
    QryMontarFases.SQL.Add('           TAMANHO_ID, ');
    QryMontarFases.SQL.Add('           TAMANHO, ');
    QryMontarFases.SQL.Add('           ORDEM_GRADE, ');
    QryMontarFases.SQL.Add('           QTDE_PRODUZIR, ');
    QryMontarFases.SQL.Add('           QTDE_TRANSFERIDA, ');
    QryMontarFases.SQL.Add('           QTDE_PENDENTE, ');
    QryMontarFases.SQL.Add('           QTDE_DEFEITO, ');
    QryMontarFases.SQL.Add('           QTDE_PERDA, ');
    QryMontarFases.SQL.Add('           SOBRA ');
    QryMontarFases.SQL.Add('           ) ');
    QryMontarFases.SQL.Add(' SELECT ');
    QryMontarFases.SQL.Add(' DISTINCT ');
    QryMontarFases.SQL.Add('       EMPRESA, ');
    QryMontarFases.SQL.Add('       CODIGO, ');
    QryMontarFases.SQL.Add('       0, ');
    QryMontarFases.SQL.Add(        aFase.ToString+', ');
    QryMontarFases.SQL.Add(        QuotedStr(aFaseOrdem)+', ');
    QryMontarFases.SQL.Add('       0, ');
    QryMontarFases.SQL.Add('       REFERENCIA, ');
    QryMontarFases.SQL.Add('       ''@IDENTIFICADOR'', ');
    QryMontarFases.SQL.Add('       ''@DESCRICAO'', ');
    QryMontarFases.SQL.Add('       COR_ID, ');
    QryMontarFases.SQL.Add('       COR, ');
    QryMontarFases.SQL.Add('       TAMANHO_ID, ');
    QryMontarFases.SQL.Add('       TAMANHO, ');
    QryMontarFases.SQL.Add('       ORDEM_GRADE, ');
    if (aFase=1) or (aFaseOrdem='001') then
      QryMontarFases.SQL.Add('       QUANTIDADE, ')
    else
      QryMontarFases.SQL.Add('       0, ');
    QryMontarFases.SQL.Add('       0, ');
    if (aFase=1) or (aFaseOrdem='001') then
      QryMontarFases.SQL.Add('       QUANTIDADE, ')
    else
      QryMontarFases.SQL.Add('       0, ');
    QryMontarFases.SQL.Add('       0, ');
    QryMontarFases.SQL.Add('       0, ');
    QryMontarFases.SQL.Add('       ''N'' ');
    QryMontarFases.SQL.Add('  FROM PCP_ORDEMPRODUCAO_ITENS_GRADE ');
    QryMontarFases.SQL.Add('  WHERE ');
    QryMontarFases.SQL.Add('  EMPRESA='+FSistema.Empresa.ToString);
    QryMontarFases.SQL.Add('  AND CODIGO='+nOrdemProducao.ToString);
    QryMontarFases.SQL.Add('  AND COR_ID<>0 ');
    QryMontarFases.SQL.Add('  AND TAMANHO_ID<>0 ');
    QryMontarFases.SQL.Add('  AND PCP_ORDEMPRODUCAO_ITENS_GRADE.APROVADO=''S'' ');
    QryMontarFases.ExecSQL;

  finally
    QryMontarFases.Close;

  end;



end;


end.
