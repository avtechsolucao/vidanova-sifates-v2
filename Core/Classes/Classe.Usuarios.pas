﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit Classe.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  FireDAC.Comp.Client, Classe.Criptografia;


Type

   TUsuario = Class(TPersistent)
   Private
     FID                 : Integer;
     FNome	             : String;
     FSenha        			 : String;
     FBloquear		       : Boolean;
     FOnline			       : Boolean;
     FNivel	             : String;
     procedure SetUserName(const Value: String);
     function GetSenha: String;

     function GetUserName: String;
     procedure SetSenha(const Value: String);
   Public
     constructor Create;
     destructor  Destroy;
     class Function  Autenticar: Boolean;
     procedure LogUsuario(Modulo,AcaoUsuario: WideString);
     procedure Resetar;

     property ID                   : Integer       Read  FID	                Write  FID;
     property Nome                 : String        Read  GetUserName          Write  SetUserName;
     property Senha                : String        Read  GetSenha  	          Write  FSenha;
     property Bloquear		         : Boolean       Read  FBloquear            Write  FBloquear;
     property Online			         : Boolean       Read  FOnline	            Write  FOnline;
     property Nivel			           : String        Read  FNivel	              Write  FNivel;
   End;


implementation



uses  Classe.BancoDados, Classe.Global, FPrincipal;

{ TUsuarios }
class function TUsuario.Autenticar: Boolean;
Var
  mModalResult : Integer;
begin
  Result := False;
    Result :=mModalResult=mrOk;
end;

constructor TUsuario.Create;
begin
   FID	           :=0;
   FNome	         :='';
   FSenha	         :='';
   FBloquear		   :=False;
   FOnline			   :=False;
   FNivel	         :='';
end;

destructor TUsuario.Destroy;
begin
//
end;

function TUsuario.GetSenha: String;
begin
   Result := Trim(FSenha);
end;

function TUsuario.GetUserName: String;
begin
   Result := Trim(FNome);
end;

procedure TUsuario.LogUsuario(Modulo, AcaoUsuario: WideString);
var
  aDBQuery : TFDQuery;
begin
  if not FConexao.Connected then
    exit;
  if Screen.ActiveForm = Nil then
    exit;
  aDBQuery            := TFDQuery.Create(Application);
  aDBQuery.Connection := FrmPrincipal.DBConexao;
  Try
    FrmPrincipal.DBConexao.StartTransaction;
    aDBQuery.SQL.Clear;
    aDBQuery.SQL.Add('insert into USUARIOLOG  ( DATA, HORAS, ID, MODULO, FORMULARIO, ACAO )  values (:DATA,:HORAS,:ID,:MODULO,:FORMULARIO,:ACAO )');
    aDBQuery.ParamByName('DATA').AsDate          := Date;
    aDBQuery.ParamByName('HORAS').AsTime         := Time;
    aDBQuery.ParamByName('ID').AsInteger         := FID;
    aDBQuery.ParamByName('MODULO').AsString      := UpperCase(Modulo);
    aDBQuery.ParamByName('FORMULARIO').AsString  := Screen.ActiveForm.Name + ' ('+Screen.ActiveForm.Caption+')';
    aDBQuery.ParamByName('ACAO').AsString        := UpperCase(AcaoUsuario);
    try
      aDBQuery.ExecSQL;
      FrmPrincipal.DBConexao.Commit;
    except
      FrmPrincipal.DBConexao.Rollback;
    end;
  Finally
    aDBQuery.Free;
  End;
end;

procedure TUsuario.Resetar;
begin
   FID	           :=0;
   FNome	         :='';
   FSenha	         :='';
   FBloquear		   :=False;
   FOnline			   :=False;
   FNivel	         :='';
end;

procedure TUsuario.SetSenha(const Value: String);
begin
   FSenha := Trim(Value);
end;

procedure TUsuario.SetUserName(const Value: String);
begin
   FNome := Trim(Value);
end;

end.
