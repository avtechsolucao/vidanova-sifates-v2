﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FCFOP;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, DBCtrls, Mask, Grids,
   DBGrids, ImgList,   ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmCFOP = class(TForm)
      PageControl: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Editar: TTabSheet;
      DBGrid1: TDBGrid;
      Label1: TLabel;
      Label2: TLabel;
      EditCodigo: TDBEdit;
      EditNome: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      DBRadioGroup2: TDBRadioGroup;
      DBRadioGroup3: TDBRadioGroup;
      DBRadioGroup4: TDBRadioGroup;
      DBRadioGroup5: TDBRadioGroup;
      DBRadioGroup6: TDBRadioGroup;
      GroupBox1: TGroupBox;
      DBMemo_Fisco: TDBMemo;
      GroupBox2: TGroupBox;
      Label7: TLabel;
      EditReduc: TDBEdit;
      GroupBox3: TGroupBox;
      DBMemo1: TDBMemo;
      DS_CFOP: TDataSource;
      db_CFOP: TFDQuery;
    db_CFOPCODIGO: TIntegerField;
    db_CFOPDESCRICAO: TStringField;
    db_CFOPNFE: TStringField;
    db_CFOPDENTRO_ESTADO: TStringField;
    db_CFOPDETALHE: TStringField;
    db_CFOPFISCO: TStringField;
    db_CFOPOPERACAO: TStringField;
    db_CFOPCALCULA_ICMS: TStringField;
    db_CFOPCALCULA_IPI: TStringField;
    db_CFOPCALCULA_ISS: TStringField;
    db_CFOPCALCULA_SEFAZ: TStringField;
    db_CFOPCALCULA_COFINS: TStringField;
    db_CFOPREDUCAO_ICMS: TFloatField;
    db_CFOPREDUCAO_IPI: TFloatField;
    db_CFOPDESCONTO_SEFAZ: TFloatField;
    db_CFOPDESCONTO_COFINS: TFloatField;
    db_CFOPDESCONTO_PIS: TFloatField;
    db_CFOPRECUPERA_ICMS: TStringField;
    db_CFOPRECUPERA_IPI: TStringField;
    db_CFOPDESCONTO_SUFRAMA: TFloatField;
    db_CFOPBAIXA_ESTOQUE: TStringField;
    db_CFOPSUFRAMA: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisarCFOP: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGrid1DblClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCFOP: TFrmCFOP;

implementation

uses Biblioteca, FBaseDados;

{$R *.dfm}

procedure TFrmCFOP.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_CFOP;
   PageControl.ActivePage := Tab_Principal;
   db_CFOP.Open;
end;

procedure TFrmCFOP.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  PageControl.ActivePage := Tab_Editar;
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditCodigo.SetFocus;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
   PageControl.ActivePage := Tab_Principal;

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisarCFOP.Execute then
   begin
      db_CFOP.Locate('CODIGO', dbEditPesquisarCFOP.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmCFOP.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmCFOP.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_CFOP.CLOSE;

   Action := CAFREE;

end;

procedure TFrmCFOP.DBGrid1DblClick(Sender: TObject);
begin
   PageControl.ActivePage := Tab_Editar;
end;

end.
