{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
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

