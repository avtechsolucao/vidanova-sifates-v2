﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}


unit FCtaPagar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBotoes, FFramePadrao, FFrameBarra, StdCtrls, Mask, DBCtrls,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit, ExtCtrls, Classe.Global;

type
   TFrmCtaPagar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      DBEdit3: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label6: TLabel;
      Label8: TLabel;
      EditNomeCliente: TEdit;
      EditNomePlanoContas: TEdit;
      DBEdit10: TDBEdit;
      Label10: TLabel;
      Label5: TLabel;
      EditData: TDBEdit;
      Label11: TLabel;
      DBEdit8: TDBEdit;
      Label12: TLabel;
      DBEdit11: TDBEdit;
    EditFornecedor: TIDBEditDialog;
      EditNomeFormaPagto: TEdit;
      EditPagamento: TIDBEditDialog;
      Label1: TLabel;
      GroupBox1: TGroupBox;
      DBMemo1: TDBMemo;
      Edit2: TEdit;
      DCodPlano: TIDBEditDialog;
      DBComboBox1: TDBComboBox;
    EstSearchDialogZeos1: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    ContaProcurar: TIDBEditDialog;
    DBRadioGroup2: TDBRadioGroup;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbDlgProcurar: TIDBEditDialog;
    DBRadioGroup4: TDBRadioGroup;
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FrmFrameBotoes1SpbExtraClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaPagar: TFrmCtaPagar;

implementation

uses FPrincipal, FBaseDados, Global, FCtaPagarGeraParcelas;

{$R *.dfm}

procedure TFrmCtaPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//   FrmPrincipal.MnuFin_CtaPagarMovto.Enabled := True;
   BaseDados.db_CtaPagar.Close;
   BaseDados.db_CtaPagar.ParamByName('CODIGO').Clear;
   Action := caFree;

end;

procedure TFrmCtaPagar.FormCreate(Sender: TObject);
begin

   BaseDados.db_CtaPagar.Close;
   BaseDados.db_CtaPagar.ParamByName('CODIGO').Clear;

   FrmFrameBotoes1.DataSource := BaseDados.ds_CtaPagar;
//   FrmPrincipal.MnuFin_CtaPagarMovto.Enabled := False;

   BaseDados.db_CtaPagar.Open;

end;

procedure TFrmCtaPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditData.Setfocus;

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbExtraClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbCancelarClick(Sender);

   FrmCtaPagarGeraParcelas := TFrmCtaPagarGeraParcelas.create(self);
   FrmCtaPagarGeraParcelas.ShowModal;

   BaseDados.db_CtaPagar.Close;
   BaseDados.db_CtaPagar.Open;

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   dbDlgProcurar.SearchQuery.Clear;
   dbDlgProcurar.SearchQuery.Add('SELECT * FROM VIEW_FIN_CTAPAGAR  ');
   dbDlgProcurar.SearchQuery.Add('WHERE');
   dbDlgProcurar.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbDlgProcurar.SearchQuery.Add('AND');
   dbDlgProcurar.SearchQuery.Add('%WHERE%');
   dbDlgProcurar.SearchQuery.Add('ORDER BY VENCIMENTO');
   dbDlgProcurar.SearchQuery.Add('');

   if dbDlgProcurar.Execute then
   begin
      BaseDados.db_CtaPagar.Close;
      BaseDados.db_CtaPagar.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
      BaseDados.db_CtaPagar.ParamByName('CODIGO').AsInteger    := dbDlgProcurar.ResultFieldAsInteger('CODIGO');
      BaseDados.db_CtaPagar.Open;
   end;

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmCtaPagar.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

end.
