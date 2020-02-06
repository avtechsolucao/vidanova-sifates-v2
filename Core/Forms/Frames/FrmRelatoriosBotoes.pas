{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FrmRelatoriosBotoes;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Buttons, ExtCtrls, StdCtrls;

type
   TFrameRelatoriosBotoes = class(TFrame)
      Panel1: TPanel;
    SpbImprimir: TBitBtn;
    SpbSair: TBitBtn;
    procedure SpbSairClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

implementation

{$R *.dfm}

procedure TFrameRelatoriosBotoes.SpbSairClick(Sender: TObject);
begin
   Screen.ActiveForm.Close;
end;

end.
