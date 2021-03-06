{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FSplash;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, jpeg, StdCtrls,  pngimage, dxGDIPlusClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxProgressBar, Vcl.ComCtrls;

Type
   TFrmSplash = class(TForm)
    Panel1: TPanel;
    pnStatus: TPanel;
    imgLogo: TImage;
    lb_versao: TLabel;
    cxProgressBar1: TcxProgressBar;
    lb_progressbar: TLabel;
    Timer1: TTimer;
    lb_nome_sis: TLabel;
    lb_nome_sis2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      Procedure ConfigurarInicio;
      procedure StatusCarregar(aMensagem : String; progresso : double);
      procedure VerificaConfigs;
   end;
var
    FrmSplash: TFrmSplash;
    Cursor    : TCursor;

implementation

{$R *.dfm}

uses
  Global, Classe.Global, Biblioteca, SQLServer, Classe.GetConnect, App.Constantes,
  App.Funcoes, FBaseDados, FAcesso, FBaseComponentes,
  FPrincipal;

procedure TFrmSplash.VerificaConfigs;
begin
  // ------------------------------------------------------------------------
  FrmSplash.StatusCarregar('Checando configura��es...',10);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  FrmPrincipal.DBConexao.Close;
  //dmMain.DBConexao.Connected := False;

  FrmPrincipal.FErroConectaDB      :=False;
  //CriarObjetos; Movido para FBaseMain procedure TdatamoduleCreate

  if not FileExists(_LOCALINI) then
  begin
    FInfFile.GravarINI; // For�a criar um novo ".INI"
  end;

  FInfFile.CarregarINI;

  FProsseguir := True;
  // ------------------------------------------------------------------------
  // Configura��es do sistema (Windows)
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  FormatSettings.ShortTimeFormat := 'hh:mm:ss';
  FormatSettings.DecimalSeparator := ',';

  // ----------------------------------------------------------
  // Conex�o com banco de dados
  if FProsseguir then
  begin
    FrmPrincipal.CarregarEmpresa;
  end;

  // ----------------------------------------------------------
  // Conex�o com banco de dados
  if FProsseguir then begin
    FrmPrincipal.InstanciarDBFirebird;
  end;

  if FProsseguir then
  begin
    if FrmPrincipal.FErroConectaDB then
    begin
      FrmPrincipal.DBConexao.Close;
      FProsseguir :=False;
      TerminarAplicacao;
      Exit;
    end;
  end;

  // --------------------------------------------------------------------------
  // necessario para criar campo "SSL_TIPO" na tabela 'CONFIG_PARAMETROS'
  try
    FrmPrincipal.QryCriarCampo.Close;
    FrmPrincipal.QryCriarCampo.ExecSQL;
  finally
    FrmPrincipal.QryCriarCampo.Close;
  end;

  if FProsseguir then  begin
    SetParametrosAtualizaDados;
  end;

  if FProsseguir then
  begin
    FrmPrincipal.InstanciarDataModule();
    BaseDados.SetCertificados();
  end;

  FrmSplash.StatusCarregar('Iniciando...',20);
  FrmPrincipal.CriarPastas();

  FrmSplash.StatusCarregar('Checando conex�o com banco de dados...',40);
  FConexao := FrmPrincipal.DBConexao;
  FProsseguir :=True;

  Cursor :=crSQLWait;

  // se n�o for ambiente de desenvolvimento, dever� validar diretorio padr�o do sistema
  if not FileExists(_ARQUIVOAUTENTICASENHA) then
  begin
    if not FileExists(lowercase(_DATABASE_NOME)) then
    begin
      FProsseguir :=False;
      Erro('Banco de dados n�o encontrado.'+slinebreak+slinebreak+'['+lowercase(_DATABASE_NOME)+']');
      TerminarAplicacao;
    end;
  end;
  //----------------------------------------------------------------------
  // Checar licen�a  de uso do sistema
  // VerificarLicenca(); // Checar licen�a de uso do sistema

  //----------------------------------------------------------------------
  FrmSplash.StatusCarregar('Checando configura��es finais...',80);
  if FProsseguir then begin
    FrmSplash.ConfigurarInicio;
  end;
  //-------------------------------------------------------------------
  // Sendo ambinte de desenvolvimento n�o pedir� login no sistema
  // (do contrario, pedir� login)
  //if FProsseguir then

  if FProsseguir then
  begin
    FrmPrincipal.CarregarUltimaEtapa;
  end;

  if not FProgramador then
  begin
    FProsseguir := True;
    blnUsuarioAutorizado := True;

    if FProsseguir then
    begin
      FrmPrincipal.LogOn; // Solicitar Login
    end;
  end;
end;

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmSplash.FormCreate(Sender: TObject);
begin
  //FrmPrincipal.FDiasAtivar := 0;
  //dmMain.DBConexao.Connected := False;
  FGerarDANFE := False; // Saiba onde essa variavel � alterada, na unit FBaseDados o evento OnCreate (DataModuleCreate)
  FProgramador := FileExists(LowerCase(_DEVELOPER_)) ; // se "arquivo secreto" existir, retorna "True".
  blnUsuarioAutorizado := FProgramador;
end;

procedure TFrmSplash.FormShow(Sender: TObject);
begin
  lb_versao.caption := app.Constantes.VERSAO;
  Timer1.Enabled := True;
end;

procedure TFrmSplash.ConfigurarInicio;
//var
  //iActMenus  :  Integer;
  //ac: TAction;
begin
   //Application.OnShowHint    := ShowHintPersonalizado;
   FSistema.ExeName := Uppercase(ExtractName( Application.ExeName));

   if FProsseguir then begin
     StatusCarregar('Abrindo tela de Login...',100);
   end;

   //Update;
end;

procedure TFrmSplash.StatusCarregar(aMensagem: String; Progresso: double);
begin
  if not Assigned(FrmSplash) then
    exit;

  FrmSplash.lb_progressbar.Caption :=Trim(aMensagem);
  FrmSplash.cxProgressBar1.Position := Progresso;
  Application.ProcessMessages;
end;

procedure TFrmSplash.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;
  Application.ProcessMessages;
  VerificaConfigs;
end;

end.
