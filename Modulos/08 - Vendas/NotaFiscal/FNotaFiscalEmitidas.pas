{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FNotaFiscalEmitidas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
   ACBrNFeDANFEClass, ACBrNFe, pcnConversao, DB,
     ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos,
   classe.global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit,
  ACBrNFeDANFEFR,
   FNotaFiscalCancelar, dxDateRanges, ACBrBase, ACBrDFeReport,
  ACBrDFeDANFeReport, ACBrDANFCeFortesFr,
  pcnConversaoNFe;

type

   TFrmNotaFiscalEmitidas = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
    BtnDANFE: TBitBtn;
    btnGerarPDF: TBitBtn;
    BtnSituacaoSEFAZ: TBitBtn;
    BtnCancelarNFe: TBitBtn;
    BtnInutilizarNFe: TBitBtn;
    BtnEnviarEMailNFe: TBitBtn;
    db_Vendas_NFE: TFDQuery;
    DS_Vendas: TDataSource;
    BitBtn1: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    btnReenviar: TBitBtn;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnDANFEClick(Sender: TObject);
      procedure btnGerarPDFClick(Sender: TObject);
      procedure BtnSituacaoSEFAZClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_Vendas_NFEAfterPost(DataSet: TDataSet);
      procedure BtnCancelarNFeClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnInutilizarNFeClick(Sender: TObject);
    procedure BtnEnviarEMailNFeClick(Sender: TObject);
    procedure db_Vendas_NFEBeforeOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReenviarClick(Sender: TObject);
   private
      { Private declarations }
      mLogRegistro : String;
      procedure FecharTabelas;
      procedure AbrirTabelas;
    procedure ChecaArquivoXML;
   public
      { Public declarations }
   end;

var
   FrmNotaFiscalEmitidas: TFrmNotaFiscalEmitidas;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados,
  FNotaFiscal, FNotaFiscalSituacaoSEFAZ, Classe.Usuarios,
  App.Funcoes;

{$R *.dfm}

procedure TFrmNotaFiscalEmitidas.AbrirTabelas;
begin
   db_Vendas_NFE.Open;
end;

procedure TFrmNotaFiscalEmitidas.BtnEnviarEMailNFeClick(Sender: TObject);
begin
  ChecaArquivoXML();
  EnviarEmailNF(db_Vendas_NFE.FieldByName('CODIGO').AsInteger,BaseDados.ACBrNFe1,True);
end;

procedure TFrmNotaFiscalEmitidas.ChecaArquivoXML;
var
 mArquivo : String;
begin
  mArquivo := db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString;
  if mArquivo = '' then
    mArquivo := '<não encontrado>';

  if not FileExists(Trim(mArquivo)) then
  begin
    AvisoSistemaErro('Arquivo XML não foi encontrado.'+
                     sLineBreak+
                     'Arquivo: '+mArquivo);
    abort;
  end;
end;

procedure TFrmNotaFiscalEmitidas.BtnDANFEClick(Sender: TObject);
begin
   ChecaArquivoXML();
   try
     if UpperCase(db_Vendas_NFE.FieldByName('TIPONF').AsString) = 'NFCE' then
       BaseDados.ACBrNFe1.DANFE  := ACBrNFeDANFCeFortes1;

     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));
     BaseDados.prcDANFELogo;


     if BaseDados.ACBrNFe1.DANFE.Protocolo='' then
        BaseDados.ACBrNFe1.DANFE.Protocolo            := db_Vendas_NFE.FieldByName('NFE_PROTOCOLOUSO').AsString;

     if BaseDados.ACBrNFe1.WebServices.Retorno.Recibo='' then
        BaseDados.ACBrNFe1.WebServices.Retorno.Recibo    := db_Vendas_NFE.FieldByName('NFE_RECIBO').AsString;

     if BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe='' then
        BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe  := db_Vendas_NFE.FieldByName('NFE_CHAVEACESSO').AsString;

     BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
   finally
     BaseDados.ACBrNFe1.DANFE  := BaseDados.DANFE_FortesReport;
   end;

   //end;

   db_Vendas_NFE.Edit;
   db_Vendas_NFE.FieldByName('NFE_DANFEIMPRESSA').AsString := 'SIM';
   db_Vendas_NFE.Post;
   db_Vendas_NFE.Refresh;

   mLogRegistro := 'Imprimiu DANFE da Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.btnGerarPDFClick(Sender: TObject);
begin
   ChecaArquivoXML();
   BaseDados.prcDANFELogo;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));
   BaseDados.ACBrNFe1.NotasFiscais.ImprimirPDF;

   mLogRegistro := 'Gerou PDF da Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
   AvisoSistema('PDF da NF-e foi gerado com sucesso!');

end;

procedure TFrmNotaFiscalEmitidas.BtnSituacaoSEFAZClick(Sender: TObject);
begin
   ChecaArquivoXML();

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));
   BaseDados.ACBrNFe1.Consultar;

   // LoadXML(MemoResp, WBResposta);
   FrmNotaFiscalSituacaoSEFAZ := TFrmNotaFiscalSituacaoSEFAZ.create(self);

   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Clear;
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('SITUAÇÃO DA NOTA FICAL NA SEFAZ:');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Chave............: ' + BaseDados.ACBrNFe1.WebServices.Consulta.NFeChave);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Protocolo........: ' + BaseDados.ACBrNFe1.WebServices.Consulta.Protocolo);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Código Retorno...: ' + IntToStr(BaseDados.ACBrNFe1.WebServices.Consulta.cStat));
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Situação.........: ' + BaseDados.ACBrNFe1.WebServices.Consulta.xMotivo);
   FrmNotaFiscalSituacaoSEFAZ.Showmodal;
   mLogRegistro := 'Verificou na SEFAZ situação da Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.BitBtn1Click(Sender: TObject);
var
 mRetorno : String;
begin
   try
     ChecaArquivoXML();
     prcStatusMessage('NF-e','Validando arquivo XML',True);
     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.Configuracoes.WebServices.UF  := FParametros.Empresa.UF;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString);
     BaseDados.ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(mRetorno);
     BaseDados.ACBrNFe1.NotasFiscais.Validar;
     BaseDados.ACBrNFe1.Consultar;
     prcStatusMessage('NF-e','',False);

     FrmNotaFiscalSituacaoSEFAZ.MemoDados.Clear;
     FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('');
     FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('SITUAÇÃO DA NOTA FICAL NA SEFAZ:');
     FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add(mRetorno);
     FrmNotaFiscalSituacaoSEFAZ.Showmodal;
   finally
     prcStatusMessage('NF-e','',False);
   end;
end;

procedure TFrmNotaFiscalEmitidas.btnReenviarClick(Sender: TObject);
begin
   ChecaArquivoXML();

  if pergunta('Deseja enviar essa '+db_Vendas_NFE.FieldByName('TIPONF').AsString+' ?') = false then
    exit;
   try
     prcStatusMessage('Enviando NF-e: '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6),
                      'Aguarde... transmitindo NF-e',
                      True);
     BaseDados.SetCertificados();
     BaseDados.ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;
     if UpperCase(db_Vendas_NFE.FieldByName('TIPONF').AsString) = 'NFCE' then
     begin
       BaseDados.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
     end
     else
     begin
       BaseDados.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
     end;

     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString));

     if not BaseDados.FContigencia then
     begin
       BaseDados.ACBrNFe1.Enviar(BaseDados.GerarLote);
       Sleep(500);
     end
     else
     begin
       BaseDados.ACBrNFe1.Configuracoes.Geral.FormaEmissao  := teOffLine;
       BaseDados.ACBrNFe1.NotasFiscais.Assinar;
       BaseDados.ACBrNFe1.NotasFiscais.Validar;
       BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
     end;

     try
       db_Vendas_NFE.Edit;
       db_Vendas_NFE.FieldByName('NFE_CERTIFICADO').AsString        := BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
       db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString            := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
       db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString            := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
       db_Vendas_NFE.FieldByName('NFE_RECIBO').AsString             := BaseDados.ACBrNFe1.WebServices.Retorno.Recibo;
       db_Vendas_NFE.FieldByName('NFE_CHAVEACESSO').AsString        := BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe;
       db_Vendas_NFE.FieldByName('NFE_PROTOCOLOUSO').AsString       := BaseDados.ACBrNFe1.WebServices.Retorno.Protocolo;
       db_Vendas_NFE.FieldByName('NFE_SITUACAOCODIGO').AsInteger    := BaseDados.ACBrNFe1.WebServices.Retorno.cStat;
       db_Vendas_NFE.FieldByName('NFE_SITUACAOSEFAZ').AsString      := BaseDados.ACBrNFe1.WebServices.Retorno.xMotivo;
       db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsString            := BaseDados.ACBrNFe1.NotasFiscais.Items[0].NomeArq;
       db_Vendas_NFE.FieldByName('NFE_VALIDADO').AsString           := 'SIM';
       db_Vendas_NFE.FieldByName('NFE_ASSINADO').AsString           := 'SIM';
       if BaseDados.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
       begin
         db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString      := 'SIM'
       end
       else
       begin
         db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString      := 'CONTINGENCIA';
         if UpperCase(db_Vendas_NFE.FieldByName('TIPONF').AsString) = 'NFCE' then
           db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString      := 'OFFLINE';
       end;
       db_Vendas_NFE.Post;
     finally
       db_Vendas_NFE.Refresh;
     end;

     mLogRegistro := 'Transmitiu para o servidor da SEFAZ a Nota Fiscal Eletrônica '+db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString;
     FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

   finally
     prcStatusMessage('','',False);
   end;

end;

procedure TFrmNotaFiscalEmitidas.BtnCancelarNFeClick(Sender: TObject);
var
  mIDLote : String;
begin
   ChecaArquivoXML();
   mIDLote := '1';
   If (db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString <> 'SIM') then
   begin
      Atencao('Essa Nota Fiscal não foi enviada para a SEFAZ. ' +
                   'Não há necessidade de cancelar na SEFAZ.');
      Exit;
   end;

   If (db_Vendas_NFE.FieldByName('OPERACAO').AsString ='C') then
   begin
      Atencao('Essa Nota Fiscal já foi cancelada.');
      Exit;
   end;

   FUsuario.LogUsuario('Nota Fiscal | Cancelar','O sistema perguntou se desejava cancelar a NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)  );
   strOpcaoCancelar :='';
   FrmNotaFiscalCancelar :=TFrmNotaFiscalCancelar.create(self);
   FrmNotaFiscalCancelar.ShowModal;

   if strSimNao='' then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de cancelar a NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+ ', após abrir tela que solicita justificativa. '  );
      exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja CANCELAR esta NF-e?')=false then
   begin
      FUsuario.LogUsuario('Nota Fiscal | Cancelar','Desistiu de cancelar a NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+ ', antes de abrir tela que solicita justificativa. '  );
      exit;
   end;


   try
     prcStatusMessage('Cancelar NF-e: '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6),
                      'Aguarde... cancelando NF-e.',
                      True);

     // -------------------------------------------------------------------------
     // ------ Envir solicitação de cancelamento para a SEFAZ              -----
     // -------------------------------------------------------------------------
     BaseDados.ACBrNFe1.NotasFiscais.Clear;
     BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsWideString));

      if BaseDados.ACBrNFe1.Cancelamento(strJustificativa, StrToIntDef(mIDLote,1))=False Then
      begin
        FUsuario.LogUsuario('Nota Fiscal | Cancelar','Não foi possivel cancelar NF-e numero ' + ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)
                      +sLineBreak
                      +sLineBreak
                      +'O servidor da SEFAZ retornou a seguinte mensagem: '
                      +sLineBreak
                      +BaseDados.ACBrNFe1.WebServices.Consulta.xMotivo);
      end;
     // -------------------------------------------------------------------------
     // ------                                                              -----
     // -------------------------------------------------------------------------
     db_Vendas_NFE.Edit;
     db_Vendas_NFE.FieldByName('CANCELAMENTO_CODIGORETORNO').AsInteger      := BaseDados.ACBrNFe1.WebServices.Consulta.cStat;
     db_Vendas_NFE.FieldByName('CANCELAMENTO_PROTOCOLO').AsWideString       := BaseDados.ACBrNFe1.WebServices.Consulta.Protocolo;
     db_Vendas_NFE.FieldByName('CANCELAMENTO_SITUACAO').AsWideString        := BaseDados.ACBrNFe1.WebServices.Consulta.XMotivo;
     db_Vendas_NFE.FieldByName('OPERACAO').AsString                         := 'C';
     db_Vendas_NFE.Post;

     // -------------------------------------------------------------------------
     // ------                                                              -----
     // -------------------------------------------------------------------------
     BaseDados.SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
     BaseDados.SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := inVenda;
     if strOpcaoCancelar='TUDO' then
        BaseDados.SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'CANCELARTUDO';
     if strOpcaoCancelar='PARCIAL' then
        BaseDados.SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'CANCELAR';
      BaseDados.SPNFE_PROCESSAR.ExecProc;
   finally
     prcStatusMessage('','',False);
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   Aviso('Nota Fiscal '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6)+' cancelada com sucesso.');

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   FrmNotaFiscalSituacaoSEFAZ := TFrmNotaFiscalSituacaoSEFAZ.create(self);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Clear;
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('SITUAÇÃO DA NOTA FICAL NA SEFAZ:');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Chave............: ' + BaseDados.ACBrNFe1.WebServices.Consulta.NFeChave);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Protocolo........: ' + BaseDados.ACBrNFe1.WebServices.Consulta.Protocolo);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Código Retorno...: ' + IntToStr(BaseDados.ACBrNFe1.WebServices.Consulta.cStat));
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Situação.........: ' + BaseDados.ACBrNFe1.WebServices.Consulta.xMotivo);

   FrmNotaFiscalSituacaoSEFAZ.Showmodal;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   mLogRegistro := 'Cancelou a Nota Fiscal Eletrônica '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6);
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.BtnInutilizarNFeClick(Sender: TObject);
begin
   ChecaArquivoXML();
   mLogRegistro := 'Inutilizou a Nota Fiscal Eletrônica '+ZeroEsquerda(db_Vendas_NFE.FieldByName('NOTAFISCAL').AsString,6);
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);

end;

procedure TFrmNotaFiscalEmitidas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmNotaFiscalEmitidas.db_Vendas_NFEAfterPost(DataSet: TDataSet);
begin
   db_Vendas_NFE.Refresh;
end;

procedure TFrmNotaFiscalEmitidas.db_Vendas_NFEBeforeOpen(DataSet: TDataSet);
begin
   db_Vendas_NFE.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmNotaFiscalEmitidas.FecharTabelas;
begin
   db_Vendas_NFE.close;
end;

procedure TFrmNotaFiscalEmitidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   mLogRegistro := 'Saiu do módulo Processamento de Nota Fiscal Eletrônica' ;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
   db_Vendas_NFE.close;
   //OfertarCompra();
   Action := CaFree;
end;

procedure TFrmNotaFiscalEmitidas.FormCreate(Sender: TObject);
begin
   mLogRegistro := 'Acessou o módulo Processamento de Nota Fiscal Eletrônica' ;
   FUsuario.LogUsuario('Processamento de Nota Fiscal Eletrônica',mLogRegistro);
   db_Vendas_NFE.Open;
end;

procedure TFrmNotaFiscalEmitidas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    close;
end;

procedure TFrmNotaFiscalEmitidas.FormShow(Sender: TObject);
begin
   BaseDados.SetGerarDANFE();
   BaseDados.SetCertificados();
end;

end.





