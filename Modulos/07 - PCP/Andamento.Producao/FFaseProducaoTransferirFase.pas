{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Com�rcio em geral e industrias (vestu�rio)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 |
+--------------------------------------------------------------------------------}

unit FFaseProducaoTransferirFase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,  FireDAC.Comp.Client, DBCtrls,
  ComCtrls, frxClass, frxDBSet, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TFrmFaseProducaoTransferirFase = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    gbxFaseAtual0: TGroupBox;
    Label1: TLabel;
    EditDataRetorno: TDBEdit;
    dbEditPesquisarFasesGrade: TIDBEditDialog;
    gbxFaseSeguinte: TGroupBox;
    Label2: TLabel;
    EditDataProximoInicio: TDBEdit;
    dbEditPesquisarFasesDestino: TIDBEditDialog;
    EditNomeFaseProxima: TEdit;
    EditDataProximoRetorno: TDBEdit;
    Label3: TLabel;
    gbxFaseSeguinte2: TGroupBox;
    LabeledEdit2: TDBEdit;
    btnGrade: TSpeedButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    EditTerceirizado: TIDBEditDialog;
    EditNomeTerceirizado: TEdit;
    EditValor: TDBEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    EditNomeFaseAtual: TEdit;
    Edit1: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    db_Andamento: TFDQuery;
    db_AndamentoEMPRESA: TIntegerField;
    db_AndamentoCODIGO: TIntegerField;
    db_AndamentoORDEMPRODUCAO: TIntegerField;
    db_AndamentoDATA: TSQLTimeStampField;
    db_AndamentoDATARETORNO: TSQLTimeStampField;
    db_AndamentoTERCEIRIZADO: TIntegerField;
    db_AndamentoFASE: TIntegerField;
    db_AndamentoTERCEIRIZADOORIGEM: TIntegerField;
    db_AndamentoDATARETORNOORIGEM: TSQLTimeStampField;
    db_AndamentoFASEORIGEM: TIntegerField;
    db_AndamentoQTDE_ENVIADA: TIntegerField;
    db_AndamentoQTDE_RETORNADA: TIntegerField;
    db_AndamentoQTDE_PERDAS: TIntegerField;
    db_AndamentoQTDE_DEFEITOS: TIntegerField;
    db_AndamentoVLR_UNITARIO: TFloatField;
    db_AndamentoOBSERVACAO: TStringField;
    db_AndamentoGEROUPAGAMENTO: TStringField;
    db_AndamentoENCERRADO: TStringField;
    ds_Andamento: TDataSource;
    ds_AndamentoReferencias: TDataSource;
    db_AndamentoReferencias: TFDQuery;
    db_AndamentoReferenciasEMPRESA: TIntegerField;
    db_AndamentoReferenciasCODIGO: TIntegerField;
    db_AndamentoReferenciasORDEMPRODUCAO: TIntegerField;
    db_AndamentoReferenciasDATA: TSQLTimeStampField;
    db_AndamentoReferenciasDATARETORNO: TSQLTimeStampField;
    db_AndamentoReferenciasTERCEIRIZADO: TIntegerField;
    db_AndamentoReferenciasFASE: TIntegerField;
    db_AndamentoReferenciasREFERENCIA: TStringField;
    db_AndamentoReferenciasCOR_ID: TIntegerField;
    db_AndamentoReferenciasCOR: TStringField;
    db_AndamentoReferenciasTAMANHO_ID: TIntegerField;
    db_AndamentoReferenciasTAMANHO: TStringField;
    db_AndamentoReferenciasORDEM_GRADE: TStringField;
    db_AndamentoReferenciasQTDE_ENVIADA: TIntegerField;
    db_AndamentoReferenciasQTDE_RETORNADA: TIntegerField;
    db_AndamentoReferenciasQTDE_PERDAS: TIntegerField;
    db_AndamentoReferenciasQTDE_DEFEITOS: TIntegerField;
    db_AndamentoReferenciasVLR_UNIT: TFloatField;
    ProgressBar1: TProgressBar;
    db_AndamentoReferenciasFASECONCLUIDA: TStringField;
    SP_TerceirizadoCalcular: TFDStoredProc;
    frx_DistribuirTerceirizados: TfrxDBDataset;
    db_DistribuirTerceirizados: TFDQuery;
    db_DistribuirGrade: TFDQuery;
    ds_DistribuirTerceirizados: TDataSource;
    frx_DistribuirReferencias: TfrxDBDataset;
    FrxDistribuir: TfrxReport;
    BitBtn4: TBitBtn;
    db_OPLocalizacao: TFDQuery;
    db_AndamentoSomar: TFDQuery;
    db_AndamentoReferenciasIDENTIFICADOR: TStringField;
    db_AndamentoReferenciasGEROUPAGAMENTO: TStringField;
    db_AndamentoReferenciasENCERRADO: TStringField;
    procedure btnGradeClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure db_AndamentoAfterPost(DataSet: TDataSet);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_AndamentoBeforeOpen(DataSet: TDataSet);
    procedure db_AndamentoBeforePost(DataSet: TDataSet);
    procedure db_AndamentoReferenciasBeforePost(DataSet: TDataSet);
    procedure db_AndamentoReferenciasBeforeDelete(DataSet: TDataSet);
    procedure db_AndamentoReferenciasBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_AndamentoReferenciasQTDE_ENVIADAChange(Sender: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure db_DistribuirTerceirizadosBeforeOpen(DataSet: TDataSet);
  private
    procedure prcAndamentoSomar;
    procedure prcReabrirTabelas;
    procedure prcRecalcular;
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoTransferirFase: TFrmFaseProducaoTransferirFase;

  lbPermiteDeletar  : Boolean;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade, Classe.Producao;

{$R *.dfm}


procedure TFrmFaseProducaoTransferirFase.BitBtn4Click(Sender: TObject);
begin
   prcSalvar;
   prcRecalcular;
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;

   db_DistribuirTerceirizados.Close;
   db_DistribuirGrade.close;
   db_DistribuirTerceirizados.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
   db_DistribuirTerceirizados.ParamByName('CODIGO').AsInteger       := nRemessa;

   db_DistribuirTerceirizados.Open;
   db_DistribuirGrade.Open;

   // EmailConfigurar('');

   FrxDistribuir.ShowReport;
   db_DistribuirTerceirizados.Close;
   db_DistribuirGrade.close;

end;

procedure TFrmFaseProducaoTransferirFase.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducaoTransferirFase.btnGradeClick(Sender: TObject);
begin
   prcSalvar;
   lbPermiteDeletar :=False;
   prcReabrirTabelas;
   FrmFaseProducaoTransferirFaseGrade := TFrmFaseProducaoTransferirFaseGrade.Create(self);
   FrmFaseProducaoTransferirFaseGrade.ShowModal;
   lbPermiteDeletar :=True;
   prcSalvar;
   prcAndamentoSomar;
end;

procedure TFrmFaseProducaoTransferirFase.BtnOkClick(Sender: TObject);
var
  mFaseQTD  : TFaseQTD;
begin

   prcSalvar;
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;

   if pergunta('Deseja realmente concluir a Transferencia de fase?')=false then
      exit;

   try
     mFaseQTD  := TFaseQTD.Create;

     // ---------------------------------------------------------------
     //  Baixar grade de uma fase para outra - percorrendo registros
     // ---------------------------------------------------------------

     db_AndamentoReferencias.Close;
     db_AndamentoReferencias.Open;
     ProgressBar1.Max      := db_AndamentoReferencias.RecordCount;
     ProgressBar1.Position :=0;
     nQuantidadeDigitada:=0;

     db_OPLocalizacao.close;
     db_OPLocalizacao.open;
     // registrar Andamento - Normal
     db_AndamentoReferencias.First;
     while not db_AndamentoReferencias.Eof do
     begin
        nFaseDestino :=db_Andamento.FieldByName('FASE').AsInteger;


        //-------------------------------------------------------------------------
        // Esse metodo "ProducaoTransfereFase" altera os campos, fazendo com que
        //  aconte�a a "movimenta�ao" de uma fase para outra.
        //-------------------------------------------------------------------------
        ProducaoTransfereFase(  db_Andamento.FieldByName('TERCEIRIZADO').AsInteger,
                                nOrdemProducao,
                                db_Andamento.FieldByName('CODIGO').AsInteger,
                                nFaseOrigem,
                                nFaseDestino,
                                db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                                db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                                strReferencia,
                                db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger,
                                false
                               );
               {
               prcFaseAndamentoBaixar(  inFaseTransferencia,
                            nFaseOrigem,
                            db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                            db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                            strReferencia,
                            db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger
                           );


               }

        mFaseQTD := GetQTDEAndamentoOP(nOrdemProducao,
                                       nFaseDestino,
                                       strReferencia);

        db_OPLocalizacao.Append;
        db_OPLocalizacao.FieldByName('EMPRESA').AsInteger                 := FSistema.Empresa;
        db_OPLocalizacao.FieldByName('ORDEMPRODUCAO').AsInteger           := nOrdemProducao;
        db_OPLocalizacao.FieldByName('LOTE').AsInteger                    := StrToIntDef( prcOrdemProducao_retCampo(nOrdemProducao,'LOTE'),0  ) ;
        db_OPLocalizacao.FieldByName('LOTE_NOME').AsString                := '';
        db_OPLocalizacao.FieldByName('DATAOP').AsDateTime                 := StrToDateDef( prcOrdemProducao_retCampo(nOrdemProducao,'DATA'),date  ) ;
        db_OPLocalizacao.FieldByName('DATAPREVISAO').AsDateTime           := StrToDateDef( prcOrdemProducao_retCampo(nOrdemProducao,'DATAPREVISAO'),date  ) ;
        db_OPLocalizacao.FieldByName('DATAOPFECHAMENTO').AsDateTime       := StrToDateDef( prcOrdemProducao_retCampo(nOrdemProducao,'DATAFECHAMENTO'),date  ) ;
        db_OPLocalizacao.FieldByName('DATAINICIOFASE').AsDateTime         := db_Andamento.FieldByName('DATA').AsDateTime;
        db_OPLocalizacao.FieldByName('DATARETORNOFASE').AsDateTime        := db_Andamento.FieldByName('DATARETORNO').AsDateTime;
        db_OPLocalizacao.FieldByName('TERCEIRIZADO').AsInteger            := db_Andamento.FieldByName('TERCEIRIZADO').AsInteger;
        db_OPLocalizacao.FieldByName('TERCEIRIZADO_NOME').AsString        := '';
        db_OPLocalizacao.FieldByName('FASE').AsInteger                    := nFaseDestino;
        db_OPLocalizacao.FieldByName('FASE_NOME').AsString                := '';
        db_OPLocalizacao.FieldByName('REFERENCIA').AsString               := strReferencia;
        db_OPLocalizacao.FieldByName('DESCRICAO').AsString                := '';
        db_OPLocalizacao.FieldByName('QTDE_PRODUZIR').AsInteger           := db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger;
        db_OPLocalizacao.FieldByName('QTDE_TRANSFERIDA').AsInteger        := mFaseQTD.QtdeTransferida;
        db_OPLocalizacao.FieldByName('QTDE_PENDENTE').AsInteger           := mFaseQTD.QtdePendente;
        db_OPLocalizacao.FieldByName('QTDE_DEFEITO').AsInteger            := mFaseQTD.QtdeDefeito;
        db_OPLocalizacao.FieldByName('QTDE_PERDA').AsInteger              := mFaseQTD.QtdePerda;
        db_OPLocalizacao.post;

        db_AndamentoReferencias.Next;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;
     end;

     ProgressBar1.Position :=0;
     prcRecalcular;

     lbPermiteDeletar :=False;
     AvisoSistema('Transferencia concluida com sucesso');
   finally
     db_OPLocalizacao.close;
     mFaseQTD.Free;
   end;

   close;
end;

procedure TFrmFaseProducaoTransferirFase.prcRecalcular;
begin
   SP_TerceirizadoCalcular.ParamByName('NEMPRESA').AsInteger      := FSistema.Empresa;
   SP_TerceirizadoCalcular.ParamByName('NREMESSA').AsInteger      := nRemessa;
   SP_TerceirizadoCalcular.ParamByName('NQUANTIDADE').AsInteger   := db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger;
   SP_TerceirizadoCalcular.ExecProc;
   SP_TerceirizadoCalcular.close;
end;


procedure TFrmFaseProducaoTransferirFase.db_AndamentoAfterPost(
  DataSet: TDataSet);
begin
   nRemessa :=db_Andamento.FieldByName('CODIGO').AsInteger;
   db_Andamento.ParamByName('CODIGO').AsInteger :=nRemessa;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoBeforeOpen(
  DataSet: TDataSet);
begin
   db_Andamento.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoBeforePost(
  DataSet: TDataSet);
begin
   db_Andamento.FieldByName('EMPRESA').AsInteger :=FSistema.Empresa;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasBeforeDelete(
  DataSet: TDataSet);
begin
  if lbPermiteDeletar=False then
     abort;
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasBeforeInsert(
  DataSet: TDataSet);
begin
  if lbPermiteDeletar=False then
     abort;

end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasBeforePost(
  DataSet: TDataSet);
begin
   db_AndamentoReferencias.FieldByName('EMPRESA').AsInteger              := db_Andamento.FieldByName('EMPRESA').AsInteger;
   db_AndamentoReferencias.FieldByName('CODIGO').AsInteger               := db_Andamento.FieldByName('CODIGO').AsInteger;
   db_AndamentoReferencias.FieldByName('ORDEMPRODUCAO').AsInteger        := db_Andamento.FieldByName('ORDEMPRODUCAO').AsInteger;
   db_AndamentoReferencias.FieldByName('DATA').AsDateTime                := db_Andamento.FieldByName('DATA').AsDateTime;
   db_AndamentoReferencias.FieldByName('DATARETORNO').AsDateTime         := db_Andamento.FieldByName('DATARETORNO').AsDateTime;
   db_AndamentoReferencias.FieldByName('TERCEIRIZADO').AsInteger         := db_Andamento.FieldByName('TERCEIRIZADO').AsInteger;
   db_AndamentoReferencias.FieldByName('FASE').AsInteger                 := db_Andamento.FieldByName('FASE').AsInteger;
   db_AndamentoReferencias.FieldByName('FASECONCLUIDA').AsString         := 'N';
end;

procedure TFrmFaseProducaoTransferirFase.db_AndamentoReferenciasQTDE_ENVIADAChange(
  Sender: TField);
begin

   // se a quantidade digitada for maior que a disponivel, avisar o usu�rio

   if fncFaseValidarQuantidade(strReferencia,
                            nOrdemProducao,
                            nFaseOrigem,
                            db_AndamentoReferencias.FieldByName('COR_ID').AsInteger,
                            db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger,
                            db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger
                            )=True Then
   Begin
       Erro('A quantidade que voc� digitou � maior que a quantidade disponivel.');
       db_AndamentoReferencias.Cancel;
       Abort;
   End;


end;

procedure TFrmFaseProducaoTransferirFase.db_DistribuirTerceirizadosBeforeOpen(
  DataSet: TDataSet);
begin
   db_DistribuirTerceirizados.ParamByName('EMPRESA').AsInteger      := FSistema.Empresa;
end;

procedure TFrmFaseProducaoTransferirFase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  {Clicando no bot�o "Gravar..." a variavel lbPermiteDeletar � configurada
   para False (do qual nao permitir� deletar o registro ao sair do formulario)
   Mas se clicar em Cancelar ou no X do formulario, significa que o usu�rio
  desistou e deseja cancelar/deletar o que fez.}

  if lbPermiteDeletar then
  begin
     if not db_Andamento.IsEmpty then
         db_Andamento.Delete;
  end;

  db_Andamento.Close;
  db_AndamentoReferencias.Close;
  db_AndamentoSomar.Close;


  Action :=Cafree;

end;

procedure TFrmFaseProducaoTransferirFase.FormShow(Sender: TObject);
begin

   lbPermiteDeletar :=True;

   {
   if nRemessa>0 then
   begin
      db_Andamento.close;
      db_Andamento.ParamByName('EMPRESA').AsInteger  :=FSistema.Empresa;
      db_Andamento.ParamByName('CODIGO').AsInteger   :=nRemessa;
   end;
   }

   if not db_Andamento.Active then
      db_Andamento.Open;


   if db_Andamento.IsEmpty then
   begin
      db_Andamento.Append;
      db_Andamento.FieldByName('TERCEIRIZADOORIGEM').AsInteger   :=  nTerceirizadoOrigem;
      db_Andamento.FieldByName('DATARETORNOORIGEM').AsDateTime   :=  Date;
      db_Andamento.FieldByName('FASEORIGEM').AsInteger           :=  nFaseOrigem;

      db_Andamento.FieldByName('EMPRESA').AsInteger              :=  FSistema.Empresa;
      db_Andamento.FieldByName('ORDEMPRODUCAO').AsInteger        :=  nOrdemProducao;
      db_Andamento.FieldByName('DATA').AsDateTime                :=  Date;
      db_Andamento.FieldByName('DATARETORNO').AsDateTime         :=  Date+5;
      db_Andamento.FieldByName('TERCEIRIZADO').AsInteger         :=  0;
      db_Andamento.FieldByName('FASE').AsInteger                 :=  nFaseDestino;
      db_Andamento.FieldByName('QTDE_ENVIADA').AsInteger         :=  0;
      db_Andamento.FieldByName('VLR_UNITARIO').AsFloat           :=  0;
      db_Andamento.Post;
   end;
   db_Andamento.Close;
   db_Andamento.Open;


   db_AndamentoReferencias.close;
   db_AndamentoReferencias.ParamByName('EMPRESA').AsInteger  :=db_AndamentoReferencias.FieldByName('EMPRESA').AsInteger;
   db_AndamentoReferencias.ParamByName('CODIGO').AsInteger   :=db_AndamentoReferencias.FieldByName('CODIGO').AsInteger;
   db_AndamentoReferencias.Open;


   if db_AndamentoReferencias.IsEmpty then
   begin
      FrmFaseProducao.db_ReferenciasFaseGrade.First;


      FrmFaseProducao.db_ReferenciasFaseGrade.close;
      FrmFaseProducao.db_ReferenciasFaseGrade.open;
      FrmFaseProducao.db_ReferenciasFaseGrade.Refresh;

      while not FrmFaseProducao.db_ReferenciasFaseGrade.Eof do
      begin
         db_AndamentoReferencias.Append;
         db_AndamentoReferencias.FieldByName('REFERENCIA').AsString       := strReferencia;
         db_AndamentoReferencias.FieldByName('COR_ID').AsInteger          := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger;
         db_AndamentoReferencias.FieldByName('COR').AsString              := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString;
         db_AndamentoReferencias.FieldByName('TAMANHO_ID').AsInteger      := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger;
         db_AndamentoReferencias.FieldByName('TAMANHO').AsString          := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;
         db_AndamentoReferencias.FieldByName('ORDEM_GRADE').AsString      := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('ORDEM_GRADE').AsString;
         db_AndamentoReferencias.FieldByName('QTDE_ENVIADA').AsInteger    := FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger;
         db_AndamentoReferencias.Post;

         FrmFaseProducao.db_ReferenciasFaseGrade.next;
         Application.ProcessMessages;
      end;

   end;

   prcReabrirTabelas;
   prcAndamentoSomar;
   prcReabrirTabelas;


end;

procedure TFrmFaseProducaoTransferirFase.prcSalvar;
begin

   if (db_Andamento.State in [dsedit,dsinsert]) then
      db_Andamento.Post;

   if (db_AndamentoReferencias.State in [dsedit,dsinsert]) then
      db_AndamentoReferencias.Post;

end;

procedure TFrmFaseProducaoTransferirFase.prcAndamentoSomar;
begin

   db_AndamentoSomar.Close;
   db_AndamentoSomar.Open;

   db_Andamento.Edit;
   db_Andamento.FieldByName('QTDE_ENVIADA').AsInteger :=db_AndamentoSomar.FieldByName('QTDE_ENVIADA').AsInteger;
   db_Andamento.Post;
   db_AndamentoSomar.Close;


end;

procedure TFrmFaseProducaoTransferirFase.prcReabrirTabelas;
begin

   db_AndamentoReferencias.Close;
   db_Andamento.Close;
   db_AndamentoReferencias.ParamByName('EMPRESA').Clear;
   db_AndamentoReferencias.ParamByName('CODIGO').Clear;
   db_Andamento.Open;
   db_AndamentoReferencias.Open;
end;

end.