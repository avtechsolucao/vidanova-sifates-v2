{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FRelPlanoContas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios;

type
   TFrmRelPlanoContas = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      RadioG: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelPlanoContas: TFrmRelPlanoContas;

implementation

uses Biblioteca, Global, FRelPagar_Extrato, FRelPagar_Vencidas,
   FRelPagar_Quitadas,
   FRelPagar_Historico, FRelPagar_Pagar,
   FBaseDados, FRelChequesLancados, FRelPlanos;

{$R *.DFM}

procedure TFrmRelPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmRelPlanoContas.Btn_ImprimirClick(Sender: TObject);
begin
   // exibir relat�rio
   FrmRelPlanos := TFrmRelPlanos.create(self);
end;

procedure TFrmRelPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
      CLOSE;

end;

procedure TFrmRelPlanoContas.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

end.
