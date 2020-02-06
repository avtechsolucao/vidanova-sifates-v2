{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit Classe.Cliente;

interface

uses
  {$I units.rtl.inc}, {$I units.vcl.inc},  {$I units.db.inc};

type
  TEndereco = Class
  private
    { Private declarations }
    FID          : Integer;
    FNome        : String;
  public
    { Public declarations }
    constructor Create;
    Class Procedure SetCEPCliente(mQuery: TFDQuery;const aValue:String);
    Class Procedure SetCEPEndereco(mQuery: TFDQuery;const aValue:String);
    property ID          : Integer        read FID         Write FID;
    property Nome        : String         read FNome       Write FNome;
  end;

implementation

{ TEndereco }

uses SQLServer, Classe.CEP;

constructor TEndereco.Create;
begin
  FID    :=0;
  FNome  :='';
end;

class procedure TEndereco.SetCEPCliente(mQuery: TFDQuery;const aValue:String);
var
  mCEP : TCEP;
begin
  if aValue='' then
    exit;
  try
    mCEP:=TCEP.Create;
    mCEP:=GetCEPDados(aValue);
    mQuery.FieldByName('ENDERECO').AsString       :=mCEP.Tipo+' '+mCEP.Endereco;
    mQuery.FieldByName('BAIRRO').AsString         :=mCEP.Bairro;
    mQuery.FieldByName('IDCIDADE').AsInteger      :=mCEP.IDCidade;
    mQuery.FieldByName('NOMECIDADE').AsString     :=mCEP.Cidade;
    mQuery.FieldByName('CODIGOUF').AsInteger      :=mCEP.IDUF;
    mQuery.FieldByName('ESTADO').AsString         :=mCEP.UF;
  finally
    mCEP.Free;
  end;
end;

class procedure TEndereco.SetCEPEndereco(mQuery: TFDQuery;const aValue: String);
var
  mCEP : TCEP;
begin
  if aValue='' then
    exit;
  try
    mCEP:=TCEP.Create;
    mCEP:=GetCEPDados(aValue);
    mQuery.FieldByName('ENDERECO').AsString   :=mCEP.Tipo+' '+mCEP.Endereco;
    mQuery.FieldByName('BAIRRO').AsString     :=mCEP.Bairro;
    mQuery.FieldByName('IDCIDADE').AsInteger  :=mCEP.IDCidade;
    mQuery.FieldByName('NOMECIDADE').AsString :=mCEP.Cidade;
    mQuery.FieldByName('CODIGOUF').AsInteger  :=mCEP.IDUF;
    mQuery.FieldByName('ESTADO').AsString     :=mCEP.UF;
  finally
    mCEP.Free;
  end;
end;

end.

