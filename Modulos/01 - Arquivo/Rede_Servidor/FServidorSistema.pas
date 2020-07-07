{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FServidorSistema;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs,  StdCtrls, ExtCtrls, Buttons, FileCtrl, DBCtrls, DB,
   IniFiles, Spin, Menus, jpeg, FFrameBarra, Classe.Global, FireDAC.Comp.Client,
   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmServidorSistema = class(TForm)
      PopupMenu1: TPopupMenu;
    MnuRestaurar: TMenuItem;
    FrmFrameBarra1: TFrmFrameBarra;
    pnTitulo: TPanel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    btnfechar: TButton;
    PainelMsg: TPanel;
    GroupBox1: TGroupBox;
    EditServidor: TLabeledEdit;
    BtnServidor: TBitBtn;
    pnServidor: TPanel;
    EditSenha: TLabeledEdit;
    EditPorta: TLabeledEdit;
    editUsurario: TLabeledEdit;
    EditLocalDB: TLabeledEdit;
    BtnTestar: TButton;
    BtnFirebird: TBitBtn;
    OpenDialog1: TOpenDialog;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnTestarClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure MnuRestaurarClick(Sender: TObject);
      procedure btnfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFirebirdClick(Sender: TObject);
   private
      { Private declarations }

      SQLConexaoTeste: TFDConnection;
      procedure CarregarCampos;
      procedure GravarCampos;

   public
      { Public declarations }
   end;

var
   FrmServidorSistema: TFrmServidorSistema;

implementation

uses Biblioteca, FPrincipal, Global, App.Constantes;

{$R *.dfm}

procedure TFrmServidorSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmServidorSistema.FormShow(Sender: TObject);
begin
  FInfFile.CarregarINI;
  CarregarCampos;
end;

procedure TFrmServidorSistema.MnuRestaurarClick(Sender: TObject);
begin
   EditServidor.Text  := _DATABASE_SERVIDOR;
   EditPorta.text     := _DATABASE_PORTA.ToString;
   editUsurario.text  := _DATABASE_USUARIO;
   EditSenha.text     := _DATABASE_SENHA;
   EditLocalDB.Text   := _DATABASE_NOME;
end;

procedure TFrmServidorSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SQLConexaoTeste.Free;
   Action := Cafree;
end;

procedure TFrmServidorSistema.FormCreate(Sender: TObject);
begin
   SQLConexaoTeste := TFDConnection.create(nil);
   SQLConexaoTeste.Params  := FrmPrincipal.DBConexao.Params;
end;

Procedure TFrmServidorSistema.CarregarCampos;
begin
   EditLocalDB.Text    := FBancoDados.BancoDados;
   EditServidor.Text   := FBancoDados.Endereco;
   EditPorta.Text      := IntToStr(FBancoDados.Porta);
   editUsurario.Text   := FBancoDados.Usuario;
   EditSenha.Text      := FBancoDados.Senha;
end;

Procedure TFrmServidorSistema.GravarCampos;
begin
   FBancoDados.Endereco    :=EditServidor.Text;
   FBancoDados.Porta       :=StrToIntDef((EditPorta.Text),1433);
   FBancoDados.Senha       :=EditSenha.Text;
   FBancoDados.BancoDados  :=EditLocalDB.Text;
end;

procedure TFrmServidorSistema.BtnTestarClick(Sender: TObject);
begin
   GravarCampos;

  SQLConexaoTeste.Close;
  SQLConexaoTeste.Params.Values['Database']        :=FBancoDados.BancoDados;
  SQLConexaoTeste.Params.Values['Server']          :=FBancoDados.Endereco;
  SQLConexaoTeste.Params.Values['User_Name']       :=FBancoDados.Usuario;
  SQLConexaoTeste.Params.Values['Password']        :=FBancoDados.Senha;

   PainelMsg.Caption := 'aguarde, conectando ao servidor remoto...';
   Update;
   Try
      SQLConexaoTeste.Open;

      PainelMsg.Caption := '';
      Aviso('Sucesso na conex�o com servidor');
      SQLConexaoTeste.Close;
   except
      SQLConexaoTeste.Close;
      AvisoSistema('Falha na conex�o com o servidor'+
           #13+#10+
           #13+#10+
           'verifique: '+
           #13+#10+
           '- nome ou IP do servidor'+
           #13+#10+
           '- firewall do Windows (liberar a porta 1433)'+
           #13+#10+
           '- nome do banco de dados'+
           #13+#10+
           '- Senha "sa" do servidor SQL Server'
      );
   end;
   PainelMsg.Caption := '';
   Update;

end;

procedure TFrmServidorSistema.btnfecharClick(Sender: TObject);
begin
   blTerminate := True;
   TerminarAplicacao;
end;

procedure TFrmServidorSistema.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmServidorSistema.BtnFirebirdClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    exit;
  EditLocalDB.Text :=OpenDialog1.FileName;
end;

procedure TFrmServidorSistema.BtnOkClick(Sender: TObject);
begin
   GravarCampos;
   FInfFile.GravarINI;
   AvisoSistema('O Sistema ser� fechado.' +
                sLineBreak+
                sLineBreak+
                'Execute-o novamente, para carregar as configura��es adequadas.');
   btnfecharClick(Sender);
end;


end.
