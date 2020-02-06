{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FTabelaPrecoOpcao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls;

type
   TFrmTabelaPrecoOpcao = class(TForm)
      BtnReal: TButton;
      BtnDolares: TButton;
      BtnEuros: TButton;
      BtnCancelar: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnRealClick(Sender: TObject);
      procedure BtnDolaresClick(Sender: TObject);
      procedure BtnEurosClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTabelaPrecoOpcao: TFrmTabelaPrecoOpcao;

implementation

uses Global, FTabelaPreco;

{$R *.dfm}

procedure TFrmTabelaPrecoOpcao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnCancelar.Click;
      close;
   end;

end;

procedure TFrmTabelaPrecoOpcao.BtnRealClick(Sender: TObject);
begin
   OpcaoTabela := 'R';
   close;
end;

procedure TFrmTabelaPrecoOpcao.BtnDolaresClick(Sender: TObject);
begin
   OpcaoTabela := 'D';
   close;

end;

procedure TFrmTabelaPrecoOpcao.BtnEurosClick(Sender: TObject);
begin
   OpcaoTabela := 'E';
   close;

end;

procedure TFrmTabelaPrecoOpcao.FormCreate(Sender: TObject);
begin
   OpcaoTabela := '';
end;

procedure TFrmTabelaPrecoOpcao.BtnCancelarClick(Sender: TObject);
begin
   OpcaoTabela := '';
   close;
end;

end.
