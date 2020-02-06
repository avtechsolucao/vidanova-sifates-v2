{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FClientesGradeEdicao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, FFrameBotoes, Grids, DBGrids, DB,
     StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmClientesGradeEdicao = class(TForm)
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      DBGrid1: TDBGrid;
      db_clientes: TFDQuery;
      DS_Clientes: TDataSource;
      db_clientesCODIGO: TIntegerField;
      db_clientesNOME: TStringField;
      db_clientesNOME_FANTASIA: TStringField;
      db_clientesDDD_FONE: TIntegerField;
      db_clientesFONE: TStringField;
      db_clientesDDD_FAX: TIntegerField;
      db_clientesFAX: TStringField;
    db_clientesEMAIL: TStringField;
    EditClienteLocalizar: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_clientesBeforeDelete(DataSet: TDataSet);
      procedure db_clientesNewRecord(DataSet: TDataSet);
    procedure db_clientesAfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmClientesGradeEdicao: TFrmClientesGradeEdicao;

implementation

uses FPrincipal, Biblioteca, Global;

{$R *.dfm}

procedure TFrmClientesGradeEdicao.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmClientesGradeEdicao.db_clientesAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid1,self);
end;

procedure TFrmClientesGradeEdicao.db_clientesBeforeDelete(DataSet: TDataSet);
begin
   abort;
end;

procedure TFrmClientesGradeEdicao.db_clientesNewRecord(DataSet: TDataSet);
begin
   abort;
end;

procedure TFrmClientesGradeEdicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_clientes.close;
   Action := Cafree;

end;

procedure TFrmClientesGradeEdicao.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Clientes;
   db_clientes.close;
   db_clientes.Open;

end;

procedure TFrmClientesGradeEdicao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
      close;
end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbEditarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbExcluirClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbProcurarClick
  (Sender: TObject);
begin
   if EditClienteLocalizar.Execute Then
   Begin
      db_clientes.Locate('CODIGO', EditClienteLocalizar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmClientesGradeEdicao.FrmFrameBotoes1SpbSalvarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

end.
