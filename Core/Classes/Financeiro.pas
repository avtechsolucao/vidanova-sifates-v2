{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Com�rcio em geral e industrias (vestu�rio)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Voc� n�o pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}


unit Financeiro;

interface

uses   Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DB, DBCtrls, Grids, Menus, Dialogs,
   StdCtrls, Messages, Graphics, shellapi, BDE, Sysutils, Printers,
     Uni;

// Proximo Numero
function CalcularProximoNumero(Tbl_CtaReceber: TFDQuery;
  wProximoNumero: string): string;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;

Var

   TblVenda, TblCtaReceber, TblCtaPagar, TblCaixa, TblProdutos, TblPedido,
     TblCompra: TFDQuery;

implementation

uses Biblioteca, Global, Firebird, FPrincipal;

// Proximo Numero
function CalcularProximoNumero(Tbl_CtaReceber: TFDQuery;
  wProximoNumero: string): string;
begin

   wInteger[0] := StrToInt(wProximoNumero) + 1;

   if not(Tbl_CtaReceber.State in [dsedit]) then
      Tbl_CtaReceber.edit;

   Tbl_CtaReceber.FieldByName('NossoNumero').AsString :=
     Formatar(IntToStr(wInteger[0]), 13, // tamanho padr�o
     false, '0');
   Result := Tbl_CtaReceber.FieldByName('NossoNumero').AsString;

end;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
{
  OBJETIVO: Acrescentar caracteres � esquerda ou � direita do texto original para que a string resultante
  fique com o tamanho desejado

  Texto : Texto original
  TamanhoDesejado: Tamanho que a string resultante dever� ter
  AcrescentarADireita: Indica se o car�cter ser� acrescentado � direita ou � esquerda
  TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � direita
  Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
  FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � esquerda
  Se o tamanho do texto form MAIOR que o desejado, eliminar �ltimos caracteres do texto
}
var
   QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial: integer;

begin
   case CaracterAcrescentar of
      '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
         ; { N�o faz nada }
   else
      CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto, 1, TamanhoDesejado) +
        StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) +
        Copy(Texto, PosicaoInicial, TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

///
/// Criar recebimento parcial
///


end.
