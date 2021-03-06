{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FCotacaoMoeda;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, SqlExpr,
   FMTBcd, Grids, DBGrids, Provider, DBClient, Mask, DBCtrls, FFrameBotoes,
   SimpleDS,   FFrameBarra, ShellApi, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmCotacaoMoeda = class(TForm)
      Panel1: TPanel;
      Label1: TLabel;
      EditCodigo: TDBEdit;
      Labelsimbolo: TLabel;
      EditSimbolo: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label5: TLabel;
      DBEdit5: TDBEdit;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      DS_CotacaoMoeda: TDataSource;
      db_CotacaoMoeda: TFDQuery;
    db_CotacaoMoedaCODIGO: TIntegerField;
    db_CotacaoMoedaATUALIZACAO: TSQLTimeStampField;
    db_CotacaoMoedaFONTE: TStringField;
    db_CotacaoMoedaDOLAR: TFloatField;
    db_CotacaoMoedaEURO: TFloatField;
    FrmFrameBarra1: TFrmFrameBarra;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
      procedure db_CotacaoMoedaBeforeDelete(DataSet: TDataSet);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure db_CotacaoMoedaBeforePost(DataSet: TDataSet);
   private
      { Private declarations }
    procedure AcessarSiteBancoCentral;
   public
      { Public declarations }
   end;

var
   FrmCotacaoMoeda: TFrmCotacaoMoeda;

implementation

uses FPrincipal, Biblioteca, SQLServer, Classe.Global;

{$R *.dfm}

procedure TFrmCotacaoMoeda.FormCreate(Sender: TObject);
begin
   db_CotacaoMoeda.open;
end;

procedure TFrmCotacaoMoeda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.MnuArquivo_Cotacao.Enabled := True;
   db_CotacaoMoeda.close;
   Action := Cafree;
end;

procedure TFrmCotacaoMoeda.BtnCancelarClick(Sender: TObject);
begin
   db_CotacaoMoeda.Cancel;
end;

procedure TFrmCotacaoMoeda.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCotacaoMoeda.BtnSalvarClick(Sender: TObject);
begin
   if (db_CotacaoMoeda.State in [dsInsert, dsEdit]) then
   begin
      db_CotacaoMoeda.Post;
   End;
end;

procedure TFrmCotacaoMoeda.db_CotacaoMoedaBeforeDelete(DataSet: TDataSet);
begin
   Informar('Aten��o:  ' + #13 + #10 +
     'A exclus�o de qualquer um dos registros poder� ocasionar falhas ' +
     'ao gerar futuras Tabelas de Pre�os');

end;

procedure TFrmCotacaoMoeda.db_CotacaoMoedaBeforePost(DataSet: TDataSet);
begin
   db_CotacaoMoeda.FieldByName('ATUALIZACAO').AsDateTime :=Now;
end;

procedure TFrmCotacaoMoeda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


   If Key = vk_escape then
      close;

end;

procedure TFrmCotacaoMoeda.SpeedButton1Click(Sender: TObject);
begin
   AcessarSiteBancoCentral;
end;


procedure TFrmCotacaoMoeda.AcessarSiteBancoCentral;
Var
  mSite : String;
begin
     If pergunta('[Taxas de c�mbio] Acessar site com cota��o de moedas estrangeiras?')=false Then
        exit;

     mSite := LowerCase(trim(FParametros.Financeiro.SiteCotacao));
     ShellExecute(0, nil, pchar(mSite), nil, nil, SW_SHOW);
end;

end.
