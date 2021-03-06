﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FSituacaoTributaria;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB,
   Mask, DBCtrls, Grids, DBGrids, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmSituacaoTributaria = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      DS_DADOS: TDataSource;
      DB_DADOS: TFDQuery;
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DB_DADOSAfterOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmSituacaoTributaria: TFrmSituacaoTributaria;

implementation

uses FBaseDados, Global, Biblioteca, FPrincipal;

{$R *.dfm}

procedure TFrmSituacaoTributaria.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmSituacaoTributaria.DB_DADOSAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmSituacaoTributaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   DB_DADOS.close;
   Action := cafree;
end;

procedure TFrmSituacaoTributaria.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   If (DB_DADOS.state in [dsedit, dsinsert]) then
   Begin
      DB_DADOS.Post;
   End;

end;

procedure TFrmSituacaoTributaria.FormCreate(Sender: TObject);
begin
   DB_DADOS.open;
end;

procedure TFrmSituacaoTributaria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmSituacaoTributaria.BtnSairClick(Sender: TObject);
begin
   close;
end;

end.
