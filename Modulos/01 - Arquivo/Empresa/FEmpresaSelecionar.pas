{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEmpresaSelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, FFrameBarra, Grids,
  DBGrids, Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmEmpresaSelecionar = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    db_Parametros: TFDQuery;
    DS_Parametros: TDataSource;
    Panel1: TPanel;
    BtnSelecionar: TButton;
    BtnSair: TButton;
    DBGrid1: TDBGrid;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresaSelecionar: TFrmEmpresaSelecionar;

implementation

uses Global, SQLServer, Biblioteca, FPrincipal;

{$R *.dfm}

procedure TFrmEmpresaSelecionar.BtnSelecionarClick(Sender: TObject);
begin

   if FSistema.Empresa=db_Parametros.FieldByName('EMPRESA').AsInteger then
     exit;
   FSistema.Empresa :=db_Parametros.FieldByName('EMPRESA').AsInteger;
   FrmPrincipal.cfg_EmpresaGravar(FSistema.Empresa);
   FrmPrincipal.SetarEmpresa;
   SetParametrosAtualizaDados;

   AvisoSistema('O Sistema será fechado.' +
                sLineBreak+
                sLineBreak+
                'Execute-o novamente... para carregar os dados da nova empresa selecionada.');
   TerminarAplicacao;
   Close;
end;

procedure TFrmEmpresaSelecionar.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmEmpresaSelecionar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Parametros.Close;
end;

procedure TFrmEmpresaSelecionar.FormCreate(Sender: TObject);
begin
   db_Parametros.Open;

end;

procedure TFrmEmpresaSelecionar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_escape then
      close;
end;

end.
