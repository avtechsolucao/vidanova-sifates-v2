{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FNotaFiscalSituacaoSEFAZ;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls;

type
   TFrmNotaFiscalSituacaoSEFAZ = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      BitBtn1: TBitBtn;
      MemoDados: TMemo;
      procedure BitBtn1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmNotaFiscalSituacaoSEFAZ: TFrmNotaFiscalSituacaoSEFAZ;

implementation

{$R *.dfm}

procedure TFrmNotaFiscalSituacaoSEFAZ.BitBtn1Click(Sender: TObject);
begin
   close;
end;

end.
