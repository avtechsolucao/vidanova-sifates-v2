{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit Classe.Producao;

interface

uses
  {$I units.rtl.inc};

type

  TFaseQTD = Class
  private
    { Private declarations }
    FQtdeProduzir        : Integer;
    FQtdeTransferida     : Integer;
    FQtdePendente        : Integer;
    FQtdeDefeito         : Integer;
    FQtdePerda           : Integer;
  public
    Constructor Create;
    property QtdeProduzir        : Integer    read  FQtdeProduzir     write FQtdeProduzir;
    property QtdeTransferida     : Integer    read  FQtdeTransferida  write FQtdeTransferida;
    property QtdePendente        : Integer    read  FQtdePendente     write FQtdePendente;
    property QtdeDefeito         : Integer    read  FQtdeDefeito      write FQtdeDefeito;
    property QtdePerda           : Integer    read  FQtdePerda        write FQtdePerda;
  end;

implementation

{ TFaseQTD }

constructor TFaseQTD.Create;
begin
    FQtdeProduzir        := 0;
    FQtdeTransferida     := 0;
    FQtdePendente        := 0;
    FQtdeDefeito         := 0;
    FQtdePerda           := 0;
end;

end.

