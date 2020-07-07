{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit App.Funcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,   FireDAC.Comp.Client,
  System.StrUtils, Vcl.Grids, Vcl.DBGrids, System.Generics.Collections, Data.DB,
  Vcl.DBCtrls, System.Math, System.JSON, pcnConversaoNFe, pcnConversao, pcnNFe,
  ACBrValidador, ACBrUtil, ACBrDFeSSL, System.DateUtils, ACBrNFe, ACBrMail;

  procedure ObjetosHabilitar(const aObjetos : TArray<TWinControl>;aCondicao : Boolean);
  Procedure SetCertificadoDigital(aACBrNFe: TACBrNFe; const aTipoSSL: String);

implementation

uses SQLServer, Biblioteca, Classe.Global, App.Constantes;

Procedure ObjetosHabilitar(const aObjetos : TArray<TWinControl>;aCondicao : Boolean);
var
  I: Integer;
begin
  for I := Low(aObjetos) to High(aObjetos) do
    aObjetos[i].Enabled :=aCondicao;
end;

Procedure SetCertificadoDigital(aACBrNFe: TACBrNFe; const aTipoSSL: String);
begin
  //----------------------------------------------------------------------
  // Protocolo SSL
  //----------------------------------------------------------------------
  aACBrNFe.Configuracoes.Geral.SSLLib              := libNone;
  aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryNone;
  aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpNone;
  aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsNone;
  if aTipoSSL='OPENSSL' then
  begin
    aACBrNFe.Configuracoes.Geral.SSLLib              := libOpenSSL;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
    aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryOpenSSL;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
    aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpOpenSSL;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
    aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsXmlSec;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
  end
  else if aTipoSSL='CAPICOM' then
  begin
    aACBrNFe.Configuracoes.Geral.SSLLib              := libCapicom;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
    aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryCapicom;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
    aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpWinINet;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
    aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsMsXmlCapicom;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
  end
  else if (aTipoSSL='WINCRYPT') or (aTipoSSL='') then
  begin
    aACBrNFe.Configuracoes.Geral.SSLLib              := libWinCrypt;    // TSSLLib = (libNone, libOpenSSL, libCapicom, libCapicomDelphiSoap, libWinCrypt, libCustom);
    aACBrNFe.Configuracoes.Geral.SSLCryptLib         := cryWinCrypt;    // TSSLCryptLib = (cryNone, cryOpenSSL, cryCapicom, cryWinCrypt);
    aACBrNFe.Configuracoes.Geral.SSLHttpLib          := httpWinHttp;   // TSSLHttpLib = (httpNone, httpWinINet, httpWinHttp, httpOpenSSL, httpIndy);
    aACBrNFe.Configuracoes.Geral.SSLXmlSignLib       := xsMsXml;      // TSSLXmlSignLib = (xsNone, xsXmlSec, xsMsXml, xsMsXmlCapicom, xsLibXml2);
  end;
end;

end.
