{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit MovProdutos;

interface


Function MontarCodigoProduto(Grupo, Subgrupo, Codigo: String): String;

implementation

uses Biblioteca, Classe.Global;


Function MontarCodigoProduto(Grupo, Subgrupo, Codigo: String): String;
var
   mGrupo      : string;
   mSubgrupo   : string;
   mCodigo     : string;
   mSeparador  : String;
begin
   mSeparador := FParametros.Produto.Separador;
   mGrupo    := ZeroEsquerda(Grupo,     FParametros.Produto.Grupo);
   mSubgrupo := ZeroEsquerda(Subgrupo,  FParametros.Produto.Subgrupo);
   mCodigo   := ZeroEsquerda(Codigo,    FParametros.Produto.Produto);
   Result    := mGrupo + mSeparador + mSubgrupo + mSeparador + mCodigo;

end;

End.
