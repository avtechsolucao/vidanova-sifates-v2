﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FCtaPagarBaixasLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  FireDAC.Comp.Client, StdCtrls, StrUtils,
  Buttons,  ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Mask, ExtCtrls, FFrameBarra
  , Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFrmCtaPagarBaixasLotes = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    MskDataFim: TMaskEdit;
    MskDataIni: TMaskEdit;
    GroupBox2: TGroupBox;
    chkFornecedor: TCheckBox;
    EditClienteNome: TEdit;
    EditFornecedor: TIDBEditDialog;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    EditMotivoBaixa: TIDBEditDialog;
    GroupBox4: TGroupBox;
    Edit2: TEdit;
    EditContaCorrente: TIDBEditDialog;
    GroupBox5: TGroupBox;
    EditNomeContaCaixa: TEdit;
    ContaCaixa: TIDBEditDialog;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SPFIN_CTAPAGAR_BAIXARLOTE: TFDStoredProc;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure MskDataFimExit(Sender: TObject);
    procedure MskDataIniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCtaPagarBaixasLotes: TFrmCtaPagarBaixasLotes;

implementation

uses FPrincipal, Global, SQLServer, Biblioteca;

{$R *.dfm}

procedure TFrmCtaPagarBaixasLotes.BitBtn1Click(Sender: TObject);
begin

   dtDataIni           := StrToDate(MskDataIni.text);
   dtDataFim           := StrToDate(MskDataFim.text);
   strFornecedor       := IfThen((chkFornecedor.Checked = false),Trim(EditFornecedor.text),'0' );
   strMotivoBaixa      := Trim(EditMotivoBaixa.text);
   strContaCorrente    := Trim(EditContaCorrente.text);
   strContaCaixa       := Trim(ContaCaixa.text);

   if pergunta('Tem certeza que deseja efetuar essa baixa por lote?')=false then
      exit;

   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NEMPRESA').AsInteger       := FSistema.Empresa;
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('DTVENCINICIO').AsDate      := dtDataIni;
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('DTVENCFINAL').AsDate       := dtDataFim;
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NFORNECEDOR').AsInteger       := StrToIntDef(strFornecedor,0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NMOTIVOBAIXA').AsInteger   := StrToIntDef(strMotivoBaixa,0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NCONTACORRENTE').AsInteger := StrToIntDef(strContaCorrente,0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('NCONTACAIXA').AsInteger    := StrToIntDef(strContaCaixa,0);
   SPFIN_CTAPAGAR_BAIXARLOTE.ParamByName('ACAO').AsString            := 'BAIXAR';
   SPFIN_CTAPAGAR_BAIXARLOTE.ExecProc;

   avisosistema('Baixas concluidas com sucesso.');

end;

procedure TFrmCtaPagarBaixasLotes.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarBaixasLotes.chkFornecedorClick(Sender: TObject);
begin
   if chkFornecedor.Checked then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmCtaPagarBaixasLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=Cafree;
end;

procedure TFrmCtaPagarBaixasLotes.FormCreate(Sender: TObject);
begin

   MskDataIni.text :=DateToStr(fncDataBase);
   MskDataFim.text :=DateToStr(Date+30);

end;

procedure TFrmCtaPagarBaixasLotes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_escape then
      close;

end;

procedure TFrmCtaPagarBaixasLotes.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);

end;

procedure TFrmCtaPagarBaixasLotes.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);

end;


end.
