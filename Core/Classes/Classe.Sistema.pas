{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

Unit Classe.Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, App.Constantes,
  Data.DB,  Global;

type

   { TVarSystem }
   TSistema = Class(TPersistent)
   private
     { Private declarations }
     FEmpresa                     : Integer;
     FPastaDrive                  : WideString;
     FPastaPadrao                 : WideString;
     FPastaBinarios               : WideString;
     FArquivoCFG                  : String;
     FExeName                     : String;
     FPathPrograma                : WideString;

     function  GetArquivoCFG      : String;
     function  GetExeName         : String;
     function  GetPastaBinarios   : WideString;
     function  GetPastaDrive      : WideString;
     function  GetPastaPadrao     : WideString;
     procedure SetArquivoCFG(const Value: String);
     procedure SetExeName(const Value: String);
     procedure SetPastaBinarios(const Value: WideString);
     procedure SetPastaDrive(const Value: WideString);
     procedure SetPastaPadrao(const Value: WideString);
    function GetEmpresa: Integer;
    procedure SetEmpresa(const Value: Integer);
    function  GetPathPrograma: WideString;
   public
      { Public declarations }
      constructor Create;
      Procedure   Clear;

      property Empresa            : Integer             Read GetEmpresa        Write SetEmpresa;
      property PastaDrive         : WideString          read GetPastaDrive     write SetPastaDrive;
      property PastaPadrao        : WideString          read GetPastaPadrao    write SetPastaPadrao;
      property PastaBinarios      : WideString          read GetPastaBinarios  write SetPastaBinarios;
      property ArquivoCFG         : String              read GetArquivoCFG     write SetArquivoCFG;
      property ExeName            : String              read GetExeName        write SetExeName;
      property PathPrograma       : WideString          read GetPathPrograma   write FPathPrograma;

   end;


implementation

{ TVarSystem }

uses SQLServer, Biblioteca;

constructor TSistema.Create;
begin
  FPastaDrive      :='';
  FPastaPadrao     :='';
  FPastaBinarios   :='';
  FArquivoCFG      :='';
  FExeName         :='';

  FPastaPadrao    := Concat(_DRIVE,PASTA_SEPARADOR,_SISTEMA_NOME,PASTA_SEPARADOR);
  FPastaBinarios  := Concat(PASTA_BINARIO,PASTA_SEPARADOR);
  FArquivoCFG     := Concat(_DRIVE,PASTA_SEPARADOR,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_BINARIO,PASTA_SEPARADOR,CONFIG_INI );

end;

procedure TSistema.Clear;
begin
  FPastaDrive      :='';
  FPastaPadrao     :='';
  FPastaBinarios   :='';
  FArquivoCFG      :='';
  FExeName         :='';
end;

function TSistema.GetArquivoCFG: String;
begin
 Result  := FArquivoCFG;
end;

function TSistema.GetEmpresa: Integer;
begin
   if (FEmpresa>0) then
      Result := FEmpresa
   else
      Result := 1;
end;

function TSistema.GetExeName: String;
begin
 Result  := FExeName;
end;

function TSistema.GetPastaBinarios: WideString;
begin
 Result  := FPastaBinarios;
end;

function TSistema.GetPastaDrive: WideString;
begin
 Result  := FPastaDrive;
end;

function TSistema.GetPastaPadrao: WideString;
begin
 Result  := FPastaPadrao;
end;

function TSistema.GetPathPrograma: WideString;
begin
  Result := pchar(GetCurrentDir);
end;

procedure TSistema.SetArquivoCFG(const Value: String);
begin
  FArquivoCFG :=Value;
end;

procedure TSistema.SetEmpresa(const Value: Integer);
begin
   if (Value>0) then
      FEmpresa := Value
   else
      FEmpresa := 1;
end;

procedure TSistema.SetExeName(const Value: String);
begin
  FExeName :=Value;
end;

procedure TSistema.SetPastaBinarios(const Value: WideString);
begin
  FPastaBinarios :=Value;
end;

procedure TSistema.SetPastaDrive(const Value: WideString);
begin
  FPastaDrive :=Value;
end;

procedure TSistema.SetPastaPadrao(const Value: WideString);
begin
  FPastaPadrao :=Value;
end;

end.



