﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit App.IniFiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles;

Type
  TInfFile = Class
  Private
     FIniConfiguracao: TIniFile;
  Public
    procedure CarregarINI;
    procedure GravarINI;
    function  LerItemINI(strSessao, strChave: String; ValueDefault:Variant): Variant;
    procedure GravarItemINI(strSessao, strChave: String; ValueDefault:Variant);

  End;


implementation

uses Classe.Global, App.Constantes;



procedure TInfFile.CarregarINI;
begin
   try
     FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
     FBancoDados.BancoDados          := FIniConfiguracao.ReadString('PARAMETROS',    'Database',      _DATABASE_NOME);
     FBancoDados.Endereco            := FIniConfiguracao.ReadString('PARAMETROS',    'Server',        _DATABASE_SERVIDOR);
     FBancoDados.Porta               := FIniConfiguracao.ReadInteger('PARAMETROS',   'porta',         _DATABASE_PORTA);
     FBancoDados.Usuario             := _DATABASE_USUARIO;
     FBancoDados.Senha               := _DATABASE_SENHA;
   finally
     FIniConfiguracao.Free;
   end;
end;

procedure TInfFile.GravarINI;
begin
   try
     FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
     FIniConfiguracao.WriteInteger('PARAMETROS', 'EMPRESA',      1        );
     FIniConfiguracao.WriteString('PARAMETROS',  'Server',   FBancoDados.Endereco);
     FIniConfiguracao.WriteString('PARAMETROS',  'Database', LowerCase(FBancoDados.BancoDados));
   finally
     FIniConfiguracao.Free;
   end;
end;

function TInfFile.LerItemINI(strSessao, strChave: String; ValueDefault:Variant): Variant;
begin
   try
     FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
     Result           := FIniConfiguracao.ReadInteger(strSessao, strChave, ValueDefault );
   finally
     FIniConfiguracao.Free;
   end;
end;

procedure TInfFile.GravarItemINI(strSessao, strChave: String;
  ValueDefault: Variant);
begin
   try
     FIniConfiguracao := TIniFile.create(FSistema.ArquivoCFG);
     FIniConfiguracao.WriteInteger(strSessao, strChave, ValueDefault);
   finally
     FIniConfiguracao.Free;
   end;
end;




end.
