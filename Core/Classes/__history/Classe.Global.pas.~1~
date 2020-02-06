{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}


Unit Classe.Global;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles, FireDAC.Comp.Client,
  Classe.Sistema,
  Classe.EMail,
  Classe.Parametros,
  Classe.Usuarios,
  Classe.Criptografia,
  Classe.BancoDados,
  App.IniFiles,
  Classe.Beep;

  Procedure CriarObjetos;
  Procedure DestruirObjetos;
  Procedure SetParametrosAtualizaDados;

Var
   FMailConfig     : TEmail;
   FSistema        : TSistema;
   FParametros     : TParametros;
   FUsuario        : TUsuario;
   FCriptografia   : TCriptografia;
   //FConexao        : TFDConexao;
   FConexao        : TFDConnection;
   FBancoDados     : TBancoDados;
   FInfFile        : TInfFile;
   FAvisoSonoro    : TBTBeeper;

implementation

uses SQLServer;

procedure SetParametrosAtualizaDados;
begin
   GetParametros;
end;

Procedure CriarObjetos;
begin
   FConexao        := TFDConnection.Create(Application);
   FAvisoSonoro    := TBTBeeper.Create(Application);
   FParametros     := TParametros.Create;
   FMailConfig     := TEmail.Create;
   FSistema        := TSistema.Create;
   FUsuario        := TUsuario.Create;
   FCriptografia   := TCriptografia.Create;
   FBancoDados     := TBancoDados.Create;
   FInfFile        := TInfFile.Create;
end;

procedure DestruirObjetos;
begin
   if FParametros<>Nil then
       FParametros.Free;

   if Assigned(FMailConfig) then
      FMailConfig.Free;

   if Assigned(FSistema) then
      FSistema.Free;

   if Assigned(FUsuario) then
      FUsuario.Free;

   if Assigned(FCriptografia) then
      FCriptografia.Free;

   if Assigned(FBancoDados) then
      FBancoDados.Free;

   if Assigned(FConexao) then
      FConexao.Free;

   if Assigned(FInfFile) then
      FInfFile.Free;

   if Assigned(FAvisoSonoro) then
      FAvisoSonoro.Free;

end;


end.
