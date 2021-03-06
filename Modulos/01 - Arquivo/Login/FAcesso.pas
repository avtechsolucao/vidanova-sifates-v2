{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FAcesso;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   DB, ExtCtrls, StdCtrls, pngimage, Vcl.DBCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxGDIPlusClasses, Registry;

type
   TFrmAcesso = class(TForm)
    PanelBottom_x: TPanel;
    lb_versao: TLabel;
    BtnAcessar: TSpeedButton;
    pnLogin: TPanel;
    EditSenha: TLabeledEdit;
    EditUsuario: TLabeledEdit;
    Image1: TImage;
    QryUsuario: TFDQuery;
    lb_nome_sis: TLabel;
    lb_nome_sis2: TLabel;
    cb_salvarcredencial: TCheckBox;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }
      fechar: Boolean;
      Procedure LogOn;
      Procedure LogOff;
      Procedure GravarRegistro(Usuario, Senha : String);
      Procedure LerRegistro;
   public
      { Public declarations }
   end;
var
   FrmAcesso: TFrmAcesso;

implementation

{$R *.dfm}

uses  Biblioteca, Global, Classe.Global, FBaseDados, FFrameBarra,
      App.Funcoes, App.Constantes, FSplash, FPrincipal; //unt_Main;//unt_Main;

procedure TFrmAcesso.BtnCancelarClick(Sender: TObject);
begin
   fechar := True;
   blnUsuarioAutorizado := false;
   FProsseguir :=False;
   Application.Terminate;
end;

procedure TFrmAcesso.EditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BtnAcessarClick(Sender);
  end;
end;

procedure TFrmAcesso.EditUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fechar := True;
   If blnUsuarioAutorizado = false then
      Self.Close;
      //Application.Terminate;
end;

procedure TFrmAcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if fechar = false then
    QryUsuario.close;
end;

procedure TFrmAcesso.FormCreate(Sender: TObject);
var
  mFilial : Integer;
begin
  mFilial:=FInfFile.LerItemINI('PARAMETROS', 'Empresa' , 1 );

  nUsuario :=0;
  if FileExists(_ARQUIVOAUTENTICASENHA) then
  Begin
     //EditUsuario.text := 'Admin';
     //EditSenha.text := '1';
  end;

  fechar := false;
  blnUsuarioAutorizado := false;

  QryUsuario.Open;
  LerRegistro; //puxa das chaves de registro usuario e senha salvos na maquina
end;

procedure TFrmAcesso.BtnAcessarClick(Sender: TObject);
begin
   if cb_salvarcredencial.Checked then
   begin
      GravarRegistro(EditUsuario.Text,EditSenha.Text);
   end
   else
   begin
      GravarRegistro('','');
   end;

   // QryUsuario.close;
   nUsuario :=0;

   FUsuario.Nome := UpperCase(EditUsuario.text);
   FUsuario.Senha   := UpperCase(EditSenha.text);

   if empty(FUsuario.Nome) then
   Begin
      fechar := false;
      blnUsuarioAutorizado := false;
      BeepCritica;
      Informar('Voc� esqueceu de informar o seu nome de Login');
      EditUsuario.SetFocus;
      abort;
   end;

   if empty(FUsuario.Senha) then
   Begin
      fechar := false;
      blnUsuarioAutorizado := false;
      BeepCritica;
      Informar('Voc� esqueceu de informar a sua senha Login');
      EditSenha.SetFocus;
      abort;

   end;

   // primeiro, tentar esenha master
   If (UpperCase(FUsuario.Nome) = MASTER_USUARIO) and (UpperCase(FUsuario.Senha) = MASTER_SENHA) then
   begin
      blnUsuarioAutorizado := True;
      close;
   end;

   // abrir tabela

   If blnUsuarioAutorizado = false then
   begin

      QryUsuario.close;
      QryUsuario.ParamByName('USERNAME').AsString := UpperCase(FUsuario.Nome);
      QryUsuario.ParamByName('SENHA').AsString := UpperCase(FUsuario.Senha);
      QryUsuario.Open;

      // If QryUsuario.LOCATE('UserName;SENHA',VarArrayOf([FUsuario.UsuarioNome,FUsuario.UsuarioSenha]),[])=true then
      If not QryUsuario.IsEmpty then
      begin
         nUsuario :=QryUsuario.FieldByName('ID').AsInteger;

         // checar se usuario est� autorizado
         if QryUsuario.FieldByName('BLOQUEAR').AsString='S' then
         begin
            BeepCritica;
            AvisoSistemaErro('Prezado(a) '+FUsuario.Nome+', '+#13+#10+
             'Voc� est� cadastrado no sistema, por�m seu acesso n�o est� autorizado.'+#13+#10+
             'Por favor, informe o administrador do sistema.'

             );

            fechar := false;
            blnUsuarioAutorizado := false;
            EditUsuario.SetFocus;
            abort;
         end;


         // marcar usu�rio como online;
         If not(QryUsuario.state in [dsEdit, dsInsert]) then
            QryUsuario.Edit;

         QryUsuario.FieldByName('ONLINE').AsString := 'S';
         QryUsuario.Post;


         FUsuario.ID := QryUsuario.FieldByname('ID').AsInteger;
         FUsuario.Nivel := QryUsuario.FieldByname('NIVEL').AsString;
         ModalResult := mrOk;
         QryUsuario.First;
         blnUsuarioAutorizado := True;

         close;
      End
      else
      Begin
         fechar := false;
         blnUsuarioAutorizado := false;
         BeepCritica;
         Informar('Usu�rio "' + FUsuario.Nome + '" n�o foi reconhecido pelo sistema.'
           + #13 + 'Acesso negado');
         EditUsuario.SetFocus;
         abort;
      End;
   End;

   fechar := True;
end;

procedure TFrmAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //If Key = VK_RETURN then
   //   BtnAcessarClick(Sender);

   If Key = VK_ESCAPE then
      Application.Terminate;
end;

procedure TFrmAcesso.FormShow(Sender: TObject);
begin
   lb_versao.caption := app.Constantes.VERSAO;
   // ------------------------------------------------------------------------
   // Fechar formul�rio SPLASH depois que tudo foi carregado e configurado
   if FrmSplash<>Nil then begin
       FrmSplash.Free;
   end;
end;

procedure TFrmAcesso.LogOn;
begin
   //blnUsuarioAutorizado :=true;
   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      FProsseguir       :=False;
      TerminarAplicacao;
   end;

   if not FProsseguir then
    Exit;

   //if FProsseguir then
   // FParametrosAtualizaDados;

   // ------------------------------------------------------------------------
   // Definir dados na barra de status
   FUsuario.Nome:=fncPrimeiraLetra(FUsuario.Nome);
   //---------------FrmPrincipal.lb_username.caption := FUsuario.Nome;
   // ------------------------------------------------------------------------
   // Define acesso ao menus
   FUsuario.LogUsuario('Sistema','acessou sistema '+Application.Title);

   //mostra principal ao user,
   FrmPrincipal.ShowModal;//frm_main.ShowModal;
end;

procedure TFrmAcesso.LogOff;
begin
  FUsuario.Resetar;
  LogOn;
end;

procedure TFrmAcesso.GravarRegistro(Usuario, Senha : String);
const
  Raiz : String = 'Software\VidaNovaSGN';
var
  Registro : TRegistry;
begin
  // Chama o construtor do objeto
  Registro := TRegistry.Create;
  { Abre a chave (se o 2�. Par�metro for True, ele cria a chave caso ela ainda n�o exista. }
  Registro.OpenKey (Raiz, True);
  // Grava as informa��es do form
  Registro.WriteString ('Usuario', Usuario);
  Registro.WriteString ('Senha', Senha);
  // Fecha a chave e o objeto
  Registro.CloseKey;
  Registro.Free;
end;

procedure TFrmAcesso.LerRegistro;
const
  Raiz : String = 'Software\VidaNovaSGN';
var
  Registro : TRegistry;
begin
  // Chama o construtor do objeto
  Registro := TRegistry.Create;
  with Registro do
  begin
    // Somente abre se a chave existir
    if OpenKey (Raiz, False) then
    begin
      // Envia as informa��es ao form, vendo se os valores existem, primeiramente...
      if ValueExists ('Usuario') then
        EditUsuario.Text := ReadString('Usuario');
      if ValueExists ('Senha') then
        EditSenha.Text := ReadString('Senha');
    end;
  end;
  // Fecha a chave e o objeto
  Registro.CloseKey;
  Registro.Free;
end;

end.
