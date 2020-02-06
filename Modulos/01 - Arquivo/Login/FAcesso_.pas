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

unit FAcesso;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   DB, ExtCtrls, StdCtrls, pngimage, FFrameBarra,
   App.Constantes,   Classe.Global,
   FPrincipal, Vcl.DBCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxGDIPlusClasses;


type

   TFrmAcesso = class(TForm)
    PanelBottom_x: TPanel;
    BtnCancelar: TSpeedButton;
    lblVersao: TLabel;
    BtnAcessar: TSpeedButton;
    pnLogin: TPanel;
    EditSenha: TLabeledEdit;
    EditUsuario: TLabeledEdit;
    Label1: TLabel;
    Image1: TImage;
    QryUsuario: TFDQuery;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
   private
      { Private declarations }
      fechar: Boolean;
   public
      { Public declarations }
   end;

var
   FrmAcesso: TFrmAcesso;

implementation

uses Biblioteca, Global, FBaseDados;

{$R *.dfm}

procedure TFrmAcesso.BtnCancelarClick(Sender: TObject);
begin
   fechar := True;
   blnUsuarioAutorizado := false;
   FProsseguir :=False;
   Application.Terminate;
end;

procedure TFrmAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if fechar = false then
    abort;
end;

procedure TFrmAcesso.FormCreate(Sender: TObject);
var
  mFilial : Integer;
begin

  mFilial:=FInfFile.LerItemINI('PARAMETROS', 'Empresa' , 1 );

  nUsuario :=0;
  if FileExists(_ARQUIVOAUTENTICASENHA) then
  Begin
     EditUsuario.text := 'Admin';
     EditSenha.text := '1';
  end;

  fechar := false;
  blnUsuarioAutorizado := false;

  QryUsuario.Open;

end;

procedure TFrmAcesso.BtnAcessarClick(Sender: TObject);
begin
   // QryUsuario.close;
   nUsuario :=0;

   FUsuario.Nome := UpperCase(EditUsuario.text);
   FUsuario.Senha   := UpperCase(EditSenha.text);

   if empty(FUsuario.Nome) then
   Begin
      fechar := false;
      blnUsuarioAutorizado := false;
      BeepCritica;
      Informar('Você esqueceu de informar o seu nome de Login');
      EditUsuario.SetFocus;
      abort;
   end;

   if empty(FUsuario.Senha) then
   Begin
      fechar := false;
      blnUsuarioAutorizado := false;
      BeepCritica;
      Informar('Você esqueceu de informar a sua senha Login');
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

         // checar se usuario está autorizado
         if QryUsuario.FieldByName('BLOQUEAR').AsString='S' then
         begin
            BeepCritica;
            AvisoSistemaErro('Prezado(a) '+FUsuario.Nome+', '+#13+#10+
             'Você está cadastrado no sistema, porém seu acesso não está autorizado.'+#13+#10+
             'Por favor, informe o administrador do sistema.'

             );

            fechar := false;
            blnUsuarioAutorizado := false;
            EditUsuario.SetFocus;
            abort;
         end;


         // marcar usuário como online;
         If not(QryUsuario.state in [dsEdit, dsInsert]) then
            QryUsuario.Edit;

         QryUsuario.FieldByName('ONLINE').AsString := 'S';
         QryUsuario.Post;


         FUsuario.ID := QryUsuario.FieldByname('ID').AsInteger;
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
         Informar('Usuário "' + FUsuario.Nome + '" não foi reconhecido pelo sistema.'
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

   If Key = VK_RETURN then
      BtnAcessarClick(Sender);

   If Key = VK_ESCAPE then
      BtnCancelarClick(Sender);


end;

end.
