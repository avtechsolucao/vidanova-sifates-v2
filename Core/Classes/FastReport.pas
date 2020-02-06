{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}


unit FastReport;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB,

   frxExportPDF, frxDMPExport, frxOLE, frxDesgn, frxCross,
   frxRich, frxBarcode, frxExportText, frxExportImage, frxExportHTML,
   frxExportXLS, frxExportMail, frxClass, frxExportRTF,
   Classe.Global;

   Procedure prcFastReportEmailConfigurar(Destinatario: String);
   
implementation


uses fBaseComponentes, Global, SQLServer, Biblioteca;


Procedure prcFastReportEmailConfigurar(Destinatario: String);
Begin
   dmBaseComponentes.frxMailExport1.Address     := LowerCase(Destinatario);
   dmBaseComponentes.frxMailExport1.FromCompany :=FParametros.Empresa.NomeFantasia;
End;

end.
