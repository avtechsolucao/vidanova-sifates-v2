{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FTransferenciaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, DB,  FireDAC.Comp.Client, FFrameBotoes, ExtCtrls,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, StdCtrls,
  Mask, DBCtrls, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  Classe.Global;

type
  TFrmTransferenciaContas = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    db_Transferencias: TFDQuery;
    ds_Transferencias: TDataSource;
    FrmFrameBotoes1: TFrmFrameBotoes;
    GroupBox1: TGroupBox;
    EditNomeContaCaixaDestino: TEdit;
    ContaProcurar: TIDBEditDialog;
    EditContaCorrenteDestino: TEdit;
    EditConta_Credito: TIDBEditDialog;
    GroupBox2: TGroupBox;
    EditNomeContaCaixaOrigem: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    EditContaCorrenteOrigem: TEdit;
    IDBEditDialog2: TIDBEditDialog;
    DBRadioGroup1: TDBRadioGroup;
    GrupoEfetivar: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    db_CtrlBancario: TFDQuery;
    db_CAIXA: TFDQuery;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    pnPrincipal: TPanel;
    Navegador: TDBNavigator;
    db_TransferenciasEMPRESA: TIntegerField;
    db_TransferenciasCODIGO: TFDAutoIncField;
    db_TransferenciasTIPO: TStringField;
    db_TransferenciasDATA: TSQLTimeStampField;
    db_TransferenciasHISTORICO: TStringField;
    db_TransferenciasPLN_CONTA: TStringField;
    db_TransferenciasDOCUMENTO: TStringField;
    db_TransferenciasCONTACAIXAORIGEM: TIntegerField;
    db_TransferenciasCONTACAIXADESTINO: TIntegerField;
    db_TransferenciasCONTABANCOORIGEM: TIntegerField;
    db_TransferenciasCONTABANCODESTINO: TIntegerField;
    db_TransferenciasVALOR: TFloatField;
    db_TransferenciasEFETIVADO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_TransferenciasNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_TransferenciasAfterScroll(DataSet: TDataSet);
    procedure db_TransferenciasBeforeInsert(DataSet: TDataSet);
    procedure db_TransferenciasAfterPost(DataSet: TDataSet);
  private
    procedure ProtegerCampos;
    procedure AtualizaRecords;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTransferenciaContas: TFrmTransferenciaContas;

implementation

uses FPrincipal, Biblioteca, SQLServer, Global;

{$R *.dfm}

procedure TFrmTransferenciaContas.BitBtn1Click(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   AtualizaRecords;

   if pergunta('Confirma a tranferência de valores')=false then
      exit;

   if db_Transferencias.FieldByName('TIPO').AsString='BANCO->BANCO' Then
   begin
      db_CtrlBancario.Close;
      db_CtrlBancario.Open;

      // primeiro, lançar debito
      db_CtrlBancario.Append;
      db_CtrlBancario.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CtrlBancario.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CtrlBancario.FieldByName('CTA_CORRENTE').AsInteger  := db_Transferencias.FieldByName('CONTABANCOORIGEM').AsInteger;
      db_CtrlBancario.FieldByName('DC').AsString             :='DEBITO';
      db_CtrlBancario.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA DESTINO: '+(EditContaCorrenteDestino.Text);
      db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat      := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CtrlBancario.Post;
      db_CtrlBancario.Close;


      // depois, lançar credito
      db_CtrlBancario.Open;
      db_CtrlBancario.Append;
      db_CtrlBancario.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CtrlBancario.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CtrlBancario.FieldByName('CTA_CORRENTE').AsInteger  := db_Transferencias.FieldByName('CONTABANCODESTINO').AsInteger;
      db_CtrlBancario.FieldByName('DC').AsString             :='CREDITO';
      db_CtrlBancario.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA ORIGEM: '+(EditContaCorrenteOrigem.Text);
      db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat     := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CtrlBancario.Post;
      db_CtrlBancario.Close;

   end;

   if db_Transferencias.FieldByName('TIPO').AsString='CAIXA->CAIXA' Then
   begin
      db_CAIXA.Close;
      db_CAIXA.Open;

      // primeiro, lançar debito
      db_CAIXA.Append;
      db_CAIXA.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CAIXA.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CAIXA.FieldByName('CONTACAIXA').AsInteger    := db_Transferencias.FieldByName('CONTACAIXAORIGEM').AsInteger;
      db_CAIXA.FieldByName('DC').AsString             :='DEBITO';
      db_CAIXA.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA CAIXA DESTINO: '+(EditNomeContaCaixaDestino.Text);
      db_CAIXA.FieldByName('VLR_DEBITO').AsFloat      := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CAIXA.Post;
      db_CAIXA.Close;


      // depois, lançar credito
      db_CAIXA.Open;
      db_CAIXA.Append;
      db_CAIXA.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CAIXA.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CAIXA.FieldByName('CONTACAIXA').AsInteger    := db_Transferencias.FieldByName('CONTACAIXADESTINO').AsInteger;
      db_CAIXA.FieldByName('DC').AsString             :='CREDITO';
      db_CAIXA.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA CAIXA ORIGEM: '+(EditNomeContaCaixaOrigem.Text);
      db_CAIXA.FieldByName('VLR_CREDITO').AsFloat     := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CAIXA.Post;
      db_CAIXA.Close;
   end;

   if db_Transferencias.FieldByName('TIPO').AsString='CAIXA->BANCO' Then
   begin

   end;

   if db_Transferencias.FieldByName('TIPO').AsString='BANCO->CAIXA' Then
   begin

   end;

   //db_Transferencias.Refresh;
   AtualizaRecords;
   db_Transferencias.edit;
   db_Transferencias.FieldByName('EFETIVADO').AsString :='S';
   db_Transferencias.post;

   Informar('Transferência realizada com sucesso.');

end;

procedure TFrmTransferenciaContas.db_TransferenciasAfterPost(DataSet: TDataSet);
begin
  AtualizaRecords;
end;

procedure TFrmTransferenciaContas.AtualizaRecords;
var
  mID : Integer;
begin
  mID := db_Transferencias.FieldByName('CODIGO').AsInteger;
  db_CtrlBancario.Close;
  db_CtrlBancario.Open;

  db_CAIXA.Close;
  db_CAIXA.Open;

  db_Transferencias.Close;
  db_Transferencias.Open;
  db_Transferencias.Locate('CODIGO',mID,[]);
end;

procedure TFrmTransferenciaContas.db_TransferenciasAfterScroll(
  DataSet: TDataSet);
begin
   ProtegerCampos;
end;

procedure TFrmTransferenciaContas.db_TransferenciasBeforeInsert(
  DataSet: TDataSet);
begin
   ProtegerCampos;

end;

procedure TFrmTransferenciaContas.db_TransferenciasNewRecord(DataSet: TDataSet);
begin
   db_Transferencias.FieldByName('DATA').AsDateTime   := Date;
   db_Transferencias.FieldByName('TIPO').AsString     :='BANCO->BANCO';
   db_Transferencias.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmTransferenciaContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.MnuFin_TransferenciaContas.Enabled := True;
   db_Transferencias.Close;

   FreeAndNil( FrmTransferenciaContas );
end;

procedure TFrmTransferenciaContas.FormCreate(Sender: TObject);
begin
//   FrmPrincipal.MnuFin_TransferenciaContas.Enabled := False;
   FrmFrameBotoes1.DataSource := ds_Transferencias;
   db_Transferencias.Open;
end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  GrupoEfetivar.Enabled      := True;
  db_Transferencias.UpdateOptions.ReadOnly := False;
  AtualizaRecords;

  { TODO : dar atencao a essa linha comentada }
  //db_Transferencias.ReadOnly := False;

  FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
  begin
    aviso('Operação já concluida. Não pode ser alterado.');
    exit;
  end;

  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
  begin
    aviso('Operação já concluida. Não pode ser excluído.');
    exit;
  end;
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  AtualizaRecords;

end;

procedure TFrmTransferenciaContas.ProtegerCampos;
begin
   exit;

   { TODO : dar atencao a essa linha comentada }
   if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
   begin
      GrupoEfetivar.Enabled      := False;
      db_Transferencias.UpdateOptions.ReadOnly := True;
   end
   else
   begin
      GrupoEfetivar.Enabled      := True;
      db_Transferencias.UpdateOptions.ReadOnly := False;
   end;
end;

end.
