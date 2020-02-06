{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FDistribuirPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxClasses,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, FFrameBarra, FFrameBotoes, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
   TFrmDistribuirPagamento = class(TForm)
    AdvGroupBox1: TGroupBox;
    FrmFrameBotoes1: TFrmFrameBotoes;
    db_DistribuirGerarPagamento: TFDQuery;
    ds_Distribuir: TDataSource;
    db_DistribuirBaixar: TFDQuery;
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    EditVencimento: TMaskEdit;
    Label1: TLabel;
    Label8: TLabel;
    ComboFormaPagamento: TComboBox;
    db_DistribuirGerarPagamentoCODIGO: TIntegerField;
    db_DistribuirGerarPagamentoORDEMPRODUCAO: TIntegerField;
    db_DistribuirGerarPagamentoFASE: TIntegerField;
    db_DistribuirGerarPagamentoFASE_NOME: TStringField;
    db_DistribuirGerarPagamentoDATA: TSQLTimeStampField;
    db_DistribuirGerarPagamentoDATARETORNO: TSQLTimeStampField;
    db_DistribuirGerarPagamentoFORNECEDOR: TIntegerField;
    db_DistribuirGerarPagamentoFORNECEDOR_NOME: TStringField;
    db_DistribuirGerarPagamentoREFERENCIA: TStringField;
    db_DistribuirGerarPagamentoDESCRICAO: TStringField;
    db_DistribuirGerarPagamentoQTDE_REMESSA: TIntegerField;
    db_DistribuirGerarPagamentoQTDE_RETORNO: TIntegerField;
    db_DistribuirGerarPagamentoQTDE_RESTANTE: TIntegerField;
    db_DistribuirGerarPagamentoVLR_UNIT: TFloatField;
    db_DistribuirGerarPagamentoVLR_TOTALPAGAR: TFloatField;
    db_DistribuirGerarPagamentoCONCLUIDO: TFloatField;
    db_DistribuirGerarPagamentoGEROUPAGAMENTO: TStringField;
    db_DistribuirGerarPagamentoDATAENCERRAMENTO: TSQLTimeStampField;
    SPOP_DISTRIBUIR_PAGAR: TFDStoredProc;
    cxGrid: TcxGrid;
    cxGridDados: TcxGridDBTableView;
    cxGridNivel: TcxGridLevel;
    cxGridDadosColumn1: TcxGridDBColumn;
    cxGridDadosColumn2: TcxGridDBColumn;
    cxGridDadosColumn3: TcxGridDBColumn;
    cxGridDadosColumn4: TcxGridDBColumn;
    cxGridDadosColumn5: TcxGridDBColumn;
    cxGridDadosColumn6: TcxGridDBColumn;
    cxGridDadosColumn7: TcxGridDBColumn;
    cxGridDadosColumn8: TcxGridDBColumn;
    cxGridDadosColumn9: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormShow(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure cxGridDadosCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
   private
      { Private declarations }

      nPedido: Integer;

   public
      { Public declarations }

   end;

var
   FrmDistribuirPagamento: TFrmDistribuirPagamento;
   sJustificativa  : WideString;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global , App.Constantes;

{$R *.dfm}

procedure TFrmDistribuirPagamento.FormCreate(Sender: TObject);
begin
   //

//   FrmPrincipal.MnuDistribuir_Pagamentos.Enabled := False;


   FUsuario.LogUsuario('Terceirizado | Gerar Pagamento','Acessou modulo Terceirizado | Gerar Pagamento' );

   FrmFrameBotoes1.DataSource := ds_Distribuir;

   //db_DistribuirGerarPagamento.Open;


end;


procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin

   AcaoUserName[0] :='';

   {
   AcaoUserName[0] :=
   'CÓDIGO................: ' + db_DistribuirGerarPagamento.FieldByName('CODIGO').AsString  +    #13 + #10 +
   'TERCEIRIZADO..........: ' + db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsString+'-'+db_DistribuirGerarPagamento.FieldByName('FORNECEDOR_NOME').AsString +    #13 + #10 +
   'QUANTIDADE RETORNADA..: ' + FormatFloat('###,##0',  db_DistribuirGerarPagamento.FieldByName('QTDE_RETORNO').AsFloat) + #13 + #10 +
   'VALOR.................: ' + FormatFloat('###,##0.00',  db_DistribuirGerarPagamento.FieldByName('VLR_TOTAL').AsFloat);

   if (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'N') or
     (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'NAO') then
   Begin
      BeepCritica;
      Informar('Remessa de Serviço já foi reaberta');
      exit;
   End;

   if ChecarCreditoCliente(db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsInteger) Then
   begin

      AvisoSistema('Aprovação não autorizada!'+#13+#10+
                   'O Terceirizado referente a remessa que esta tentando encerrar '+
                   'está bloqueado no sistema.');
      db_DistribuirGerarPagamento.Cancel;

      Abort;
   end;


   nPedido := 0;
   nPedido := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;

   db_DistribuirBaixar.ParamByName('CODIGO').AsInteger :=    db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   db_DistribuirGerarPagamento.close;

   db_DistribuirBaixar.ParamByName('ACAO').AsString := 'N';
   db_DistribuirBaixar.ParamByName('RESPONSAVEL').AsString := qUsuario;
   db_DistribuirBaixar.ParamByName('OBSERVACAO').AsString  := '';
   db_DistribuirBaixar.ExecSQL;

   FrmFrameBotoes1.SpbSalvar.Enabled := True;
   FrmFrameBotoes1.SpbCancelar.Enabled := True;

   db_DistribuirGerarPagamento.Open;
   db_DistribuirGerarPagamento.Locate('CODIGO', nPedido, []);

   LogUsuario('terceirizado | Encerrar Remessa','Reabriu Remessa encerrada' + #13 + #10 +
              AcaoUserName[0]
              );
    }

   SPOP_DISTRIBUIR_PAGAR.ParamByName('NREMESSA').AsInteger      := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NFORNECEDOR').AsInteger   := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('DVENCIMENTO').AsDate      := StrToDate(EditVencimento.text);
   SPOP_DISTRIBUIR_PAGAR.ParamByName('STIPOPAGMENTO').AsString  := ComboFormaPagamento.Text;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NVALOR').AsFloat          := db_DistribuirGerarPagamento.FieldByName('VLR_TOTALPAGAR').AsFloat;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('ACAO').AsString           :='EXCLUIR';
   SPOP_DISTRIBUIR_PAGAR.ExecProc;

   db_DistribuirGerarPagamento.Refresh;


   aviso('Remessa foi reaberta.');

end;


procedure TFrmDistribuirPagamento.cxGridDadosCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := _COR_HIGHLIGHT;
end;

procedure TFrmDistribuirPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   FrmPrincipal.MnuDistribuir_Pagamentos.Enabled := True;

   FUsuario.LogUsuario('Terceirizado | Gerar Pagamento','saiu do modulo Terceirizado | Gerar Pagamento' );
   //
   FreeAndNil(FrmDistribuirPagamento);

end;

procedure TFrmDistribuirPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmDistribuirPagamento.FormShow(Sender: TObject);
begin

   top := 10;
   left := 10;

   FrmFrameBotoes1.SpbSalvar.Enabled := True;
   FrmFrameBotoes1.SpbCancelar.Enabled := True;

end;

procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbProcurarClick
  (Sender: TObject);
begin
   {
   if LocalizaDistribuicao.Execute then
   begin
      db_DistribuirGerarPagamento.Locate('CODIGO', LocalizaDistribuicao.ResultFieldAsInteger('CODIGO'), []);
   end;
   }

end;

procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin

   // ------ APROVAÇÃO/CANCELAMENTO DE PEDIDO

   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmDistribuirPagamento.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   AcaoUserName[0] :='';

   {
   AcaoUserName[0] :=
   'CÓDIGO................: ' + db_DistribuirGerarPagamento.FieldByName('CODIGO').AsString  +    #13 + #10 +
   'TERCEIRIZADO..........: ' + db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsString+'-'+db_DistribuirGerarPagamento.FieldByName('FORNECEDOR_NOME').AsString +    #13 + #10 +
   'QUANTIDADE REMESSA....: ' + FormatFloat('###,##0',    db_DistribuirGerarPagamento.FieldByName('QTDE_REMESSA').AsFloat)  + #13 + #10 +
   'QUANTIDADE RETORNADA..: ' + FormatFloat('###,##0',    db_DistribuirGerarPagamento.FieldByName('QTDE_RETORNO').AsFloat)  + #13 + #10 +
   'QUANTIDADE RESTANTE...: ' + FormatFloat('###,##0',    db_DistribuirGerarPagamento.FieldByName('QTDE_RESTANTE').AsFloat) + #13 + #10 +
   'VALOR.................: ' + FormatFloat('###,##0.00', db_DistribuirGerarPagamento.FieldByName('VLR_TOTAL').AsFloat );

   if (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'S') or
     (db_DistribuirGerarPagamento.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      Informar('Remessa de Serviço ja está encerrada');
      abort;
   End;

   if ChecarCreditoCliente(db_DistribuirGerarPagamento.FieldByName('FORNECEDOR').AsInteger) Then
   begin
      AvisoSistema('Aprovação não autorizada!'+#13+#10+
                   'O Terceirizado referente a remessa que esta tentando encerrar '+
                   'está bloqueado no sistema.');
      db_DistribuirGerarPagamento.Cancel;

      exit;
   end;

   ///  nesse caso havendo restante (possivelmente uma pendência) e necessário justificar,
   if (db_DistribuirGerarPagamento.FieldByName('QTDE_RESTANTE').AsFloat>0)   or
      (db_DistribuirGerarPagamento.FieldByName('QTDE_RETORNO').AsFloat < db_DistribuirGerarPagamento.FieldByName('QTDE_REMESSA').AsFloat )  then
   begin

      sJustificativa :='';
      Aviso('A quantidade retornada é menor que a quantidade enviada. '+
             'Na proxima tela apresente uma justificativa para constar nos arquivos da empresa.');
      FrmDistribuirEncerramentoJustificar := TFrmDistribuirEncerramentoJustificar.Create(Self);
      FrmDistribuirEncerramentoJustificar.Showmodal;

      AcaoUserName[0] := AcaoUserName[0]  +  #13 + #10 +
        'JUSTIFICATIVA.........: ' + sJustificativa;


   end;


   FrmAutenticarAcao := TFrmAutenticarAcao.create(self);
   FrmAutenticarAcao.ShowModal;
   if UsuarioAutenticarAcao=false then
   Begin
      LogUsuario('terceirizado | Encerrar Remessa','Tentou Encerrar Remessa: ' + #13 + #10 +
                 AcaoUserName[0]
                 );

      Informar('Sua senha eletrônica não foi autênticada' + #13 +
        'O Pedido de Compra não pode ser aprovado');

      exit;
   End;
   }


   SPOP_DISTRIBUIR_PAGAR.ParamByName('NREMESSA').AsInteger      := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NFORNECEDOR').AsInteger   := db_DistribuirGerarPagamento.FieldByName('CODIGO').AsInteger;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('DVENCIMENTO').AsDate      := StrToDate(EditVencimento.text);
   SPOP_DISTRIBUIR_PAGAR.ParamByName('STIPOPAGMENTO').AsString  := ComboFormaPagamento.Text;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('NVALOR').AsFloat          := db_DistribuirGerarPagamento.FieldByName('VLR_TOTALPAGAR').AsFloat;
   SPOP_DISTRIBUIR_PAGAR.ParamByName('ACAO').AsString           :='INCLUIR';
   SPOP_DISTRIBUIR_PAGAR.ExecProc;

   db_DistribuirGerarPagamento.Refresh;


   {
   LogUsuario('terceirizado | Encerrar Remessa','Encerrou Remessa' + #13 + #10 +
              AcaoUserName[0]
              );
   }

   sJustificativa :='';
   aviso('Encerramento concluido com sucesso.');

end;



end.

