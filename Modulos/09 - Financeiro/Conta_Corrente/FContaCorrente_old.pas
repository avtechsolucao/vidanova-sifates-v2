{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FContaCorrente_old;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, Dialogs,
   Buttons, ComCtrls, Shellapi,  FMTBcd, SqlExpr, ImgList,
     ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FFrameBotoes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmContaCorrente_old = class(TForm)
      PaginaPadrao: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Editar: TTabSheet;
      Panel1: TPanel;
      Label16: TLabel;
      Navegador: TDBNavigator;
      DBGrid1: TDBGrid;
      DS_ContaCorrente: TDataSource;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label1: TLabel;
      Label10: TLabel;
      DBEdit_nomeag: TDBEdit;
      DBEdit_nomecorr: TDBEdit;
      DBEdit_contato: TDBEdit;
      DBEdit_fone: TDBEdit;
      DBEdit_agencia: TDBEdit;
      DBEdit_conta: TDBEdit;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      GroupBox1: TGroupBox;
      db_BoletoConfigurar: TFDQuery;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      DBEdit4: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit6: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit8: TDBEdit;
      DBEdit9: TDBEdit;
      ds_BoletoConfigurar: TDataSource;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      DBEdit10: TDBEdit;
      Label15: TLabel;
      DBEdit11: TDBEdit;
      Label17: TLabel;
      DBEdit12: TDBEdit;
      Label18: TLabel;
      DBRadioGroup1: TDBRadioGroup;
      DBRadioGroup2: TDBRadioGroup;
      DBEdit13: TDBEdit;
      Label19: TLabel;
      DBRadioGroup3: TDBRadioGroup;
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
    EditBancoNome: TEdit;
    EditBanco: TIDBEditDialog;
    DB_DadosBanco: TFDQuery;
    DB_DadosBancoCODIGO: TIntegerField;
    DB_DadosBancoDATA: TSQLTimeStampField;
    DB_DadosBancoBANCO: TIntegerField;
    DB_DadosBancoAGENCIA: TStringField;
    DB_DadosBancoAGENCIA_DIG: TStringField;
    DB_DadosBancoCTA_CORRENTE: TStringField;
    DB_DadosBancoCTA_CORRENTE_DIG: TStringField;
    DB_DadosBancoNOME_AGENCIA: TStringField;
    DB_DadosBancoNOME_CORRENTISTA: TStringField;
    DB_DadosBancoCONTATO: TStringField;
    DB_DadosBancoFONE: TStringField;
    DB_DadosBancoSALDO: TFloatField;
    DB_DadosBancoSTATUS: TStringField;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_DadosBancoSALDOINICIAL: TFloatField;
    FrmFrameBotoes1: TFrmFrameBotoes;
      procedure DBGrid1DblClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DbGridSaldosKeyPress(Sender: TObject; var Key: Char);
      procedure db_BoletoConfigurarBeforePost(DataSet: TDataSet);
      procedure GroupBox1Enter(Sender: TObject);
      procedure DBEdit_bancoExit(Sender: TObject);
      procedure db_BoletoConfigurarNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }

      procedure ConfiguraBoleto;
   public
      { Public declarations }
   end;

var
   FrmContaCorrente_old: TFrmContaCorrente_old;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FContaCorrente;

{$R *.dfm}

procedure TFrmContaCorrente_old.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_ContaCorrente;

   PaginaPadrao.ActivePageIndex := 0;

   DB_DadosBanco.Open;
   db_BoletoConfigurar.Open;

end;

procedure TFrmContaCorrente_old.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #27 then
      Close;

end;

procedure TFrmContaCorrente_old.ConfiguraBoleto;
begin
   If not (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
   Begin
      db_BoletoConfigurar.edit;
   End;

   db_BoletoConfigurar.FieldByName('BANCO').AsString          := DB_DadosBanco.FieldByName('BANCO').AsString;
   db_BoletoConfigurar.FieldByName('BANCONOME').AsString      := EditBancoNome.Text;
   db_BoletoConfigurar.FieldByName('AGENCIA').AsString        := DB_DadosBanco.FieldByName('AGENCIA').AsString;
   db_BoletoConfigurar.FieldByName('AGENCIADIGITO').AsString  := DB_DadosBanco.FieldByName('AGENCIA_DIG').AsString;
   db_BoletoConfigurar.FieldByName('CEDENTECODIGO').AsString  := DB_DadosBanco.FieldByName('CTA_CORRENTE').AsString;
   db_BoletoConfigurar.FieldByName('DIGITO').AsString         := DB_DadosBanco.FieldByName('CTA_CORRENTE_DIG').AsString;
   db_BoletoConfigurar.FieldByName('NOME_CEDENTE').AsString   := DB_DadosBanco.FieldByName('NOME_CORRENTISTA').AsString;

   If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
      db_BoletoConfigurar.Post;

end;

procedure TFrmContaCorrente_old.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;

end;

procedure TFrmContaCorrente_old.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmContaCorrente_old.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmContaCorrente_old.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  PaginaPadrao.Activepage := Tab_Editar;
  EditBanco.setfocus;

end;

procedure TFrmContaCorrente_old.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
   // Cancelar edi��o
   DB_DadosBanco.Cancel;

   PaginaPadrao.Activepage := Tab_Principal;


end;

procedure TFrmContaCorrente_old.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmContaCorrente_old.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmContaCorrente_old.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmContaCorrente_old.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
   If (db_BoletoConfigurar.state in [dsEdit, dsInsert]) then
   Begin
      db_BoletoConfigurar.Post;
   End;

end;

procedure TFrmContaCorrente_old.GroupBox1Enter(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
   ConfiguraBoleto;
end;

procedure TFrmContaCorrente_old.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_DadosBanco.Close;
   db_BoletoConfigurar.Close;

   FreeAndNil( FrmContaCorrente );

end;

procedure TFrmContaCorrente_old.DBEdit_bancoExit(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmContaCorrente_old.DbGridSaldosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmContaCorrente_old.db_BoletoConfigurarBeforePost(DataSet: TDataSet);
begin

   db_BoletoConfigurar.FieldByName('CODIGO').AsInteger :=  DB_DadosBanco.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmContaCorrente_old.db_BoletoConfigurarNewRecord(DataSet: TDataSet);
begin
   db_BoletoConfigurar.FieldByName('EXPORTAR').AsString := 'PDF';
end;

end.
