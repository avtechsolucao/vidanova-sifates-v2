{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, cxClasses, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
  FFrameBarra, dxDateRanges;

type
  TFrmContaCorrente = class(TFrmCrudSimples)
    cxGridDadosContaCorrente: TcxGridDBColumn;
    cxGridDadosCodBanco: TcxGridDBColumn;
    cxGridDadosNomeAgencia: TcxGridDBColumn;
    cxGridDadosAgencia: TcxGridDBColumn;
    db_BoletoConfigurar: TFDQuery;
    db_BoletoConfigurarCODIGO: TIntegerField;
    db_BoletoConfigurarBANCO: TIntegerField;
    db_BoletoConfigurarBANCONOME: TStringField;
    db_BoletoConfigurarAGENCIA: TStringField;
    db_BoletoConfigurarAGENCIADIGITO: TStringField;
    db_BoletoConfigurarAGENCIANOME: TStringField;
    db_BoletoConfigurarCEDENTECODIGO: TStringField;
    db_BoletoConfigurarDIGITO: TStringField;
    db_BoletoConfigurarCARTEIRA: TStringField;
    db_BoletoConfigurarPROXIMONOSSONUMERO: TStringField;
    db_BoletoConfigurarINSTRUCOES: TStringField;
    db_BoletoConfigurarTIPOINSCRICAO: TStringField;
    db_BoletoConfigurarNOME_CEDENTE: TStringField;
    db_BoletoConfigurarCNPJ_CEDENTE: TStringField;
    db_BoletoConfigurarCONVENIO: TStringField;
    db_BoletoConfigurarEXPORTAR: TStringField;
    ds_BoletoConfigurar: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_nomeag: TDBEdit;
    DBEdit_contato: TDBEdit;
    DBEdit_fone: TDBEdit;
    DBEdit_agencia: TDBEdit;
    DBEdit_conta: TDBEdit;
    DBEdit2: TDBEdit;
    EditBancoNome: TEdit;
    EditBanco: TIDBEditDialog;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit13: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    cxGridDadosSaldoInicial: TcxGridDBColumn;
    procedure db_BoletoConfigurarBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
  private
    procedure ConfiguraBoleto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContaCorrente: TFrmContaCorrente;

implementation

{$R *.dfm}


procedure TFrmContaCorrente.db_BoletoConfigurarBeforePost(DataSet: TDataSet);
begin
   db_BoletoConfigurar.FieldByName('CODIGO').AsInteger :=  dbTabela.FieldByName('CODIGO').AsInteger;
  inherited;
end;

procedure TFrmContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  db_BoletoConfigurar.close;
end;

procedure TFrmContaCorrente.FormCreate(Sender: TObject);
begin
  inherited;
  db_BoletoConfigurar.open;
end;

procedure TFrmContaCorrente.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  inherited;
   If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
   Begin
      db_BoletoConfigurar.Post;
   End;

end;

procedure TFrmContaCorrente.GroupBox2Enter(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  ConfiguraBoleto;
end;

procedure TFrmContaCorrente.ConfiguraBoleto;
begin
   If not (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
      db_BoletoConfigurar.edit;

   db_BoletoConfigurar.FieldByName('BANCO').AsString          := dbTabela.FieldByName('BANCO').AsString;
   db_BoletoConfigurar.FieldByName('BANCONOME').AsString      := EditBancoNome.Text;
   db_BoletoConfigurar.FieldByName('AGENCIA').AsString        := dbTabela.FieldByName('AGENCIA').AsString;
   db_BoletoConfigurar.FieldByName('AGENCIADIGITO').AsString  := dbTabela.FieldByName('AGENCIA_DIG').AsString;
   db_BoletoConfigurar.FieldByName('CEDENTECODIGO').AsString  := dbTabela.FieldByName('CTA_CORRENTE').AsString;
   db_BoletoConfigurar.FieldByName('DIGITO').AsString         := dbTabela.FieldByName('CTA_CORRENTE_DIG').AsString;
   db_BoletoConfigurar.FieldByName('NOME_CEDENTE').AsString   := dbTabela.FieldByName('NOME_CORRENTISTA').AsString;

   If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
      db_BoletoConfigurar.Post;

end;

end.
