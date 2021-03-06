﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FTabelaPrecoValor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, FFrameBarra;

type
  TFrmTabelaPrecoValor = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    EditReferencia: TLabeledEdit;
    EditReferenciaNome: TLabeledEdit;
    Panel2: TPanel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    EditTabelaNome: TLabeledEdit;
    EditTabela: TLabeledEdit;
    Panel3: TPanel;
    EditValor: TcxCurrencyEdit;
    Label1: TLabel;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabelaPrecoValor: TFrmTabelaPrecoValor;

implementation

uses Global;

{$R *.dfm}

procedure TFrmTabelaPrecoValor.BtnCancelarClick(Sender: TObject);
begin
   nValorDigitado :=0;
   close;
end;

procedure TFrmTabelaPrecoValor.BtnOkClick(Sender: TObject);
begin
  nValorDigitado := EditValor.Value;
end;

procedure TFrmTabelaPrecoValor.FormCreate(Sender: TObject);
begin
   nValorDigitado :=0;
end;

procedure TFrmTabelaPrecoValor.FormShow(Sender: TObject);
begin
   EditValor.SetFocus;
end;

end.
