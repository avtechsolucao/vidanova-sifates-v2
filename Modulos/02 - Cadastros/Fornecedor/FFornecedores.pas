{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

Unit FFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  ACBrBase, ACBrSocket, ACBrCEP, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDBEdit, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
  FFrameBarra,
  Winapi.ShellAPI;

type
   TFrmFornecedores = class(TForm)
      DS_Fornecedor: TDataSource;
      db_Fornecedor: TFDQuery;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
    LocalizaFornecedor: TIDBEditDialog;
    pgFornecedores: TPageControl;
    TabDados: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Spb_email2: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label70: TLabel;
    Label40: TLabel;
    Label49: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label22: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    EditUF: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    EdRGInscrEst: TDBEdit;
    EditNomeCidade2: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    EditcodRegiao1: TIDBEditDialog;
    EditRegiao1: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    DBEdit3: TDBEdit;
    DbEditCFOP: TIDBEditDialog;
    Edit1: TEdit;
    EstSearchDialogZeos1: TIDBEditDialog;
    Edit2: TEdit;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    EditCodCidade1: TDBEdit;
    Label17: TLabel;
    TabPerfil: TTabSheet;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    Label29: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    AdvDBComboBox1: TDBComboBox;
    AdvDBComboBox2: TDBComboBox;
    AdvDBComboBox3: TDBComboBox;
    gbLiberacoes: TGroupBox;
    dbTipoContrato: TFDQuery;
    dsTipoContrato: TDataSource;
    dbSeguimento: TFDQuery;
    dsSeguimento: TDataSource;
    dbRelacionamento: TFDQuery;
    dsRelacionamento: TDataSource;
    GroupBox10: TGroupBox;
    DBMemo2: TDBMemo;
    IDBEditDialog1: TIDBEditDialog;
    Edit3: TEdit;
    rgBloqueio: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    chkDepositoConta: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    editBanco: TDBEdit;
    editAgencia: TDBEdit;
    editConta: TDBEdit;
    Panel1: TPanel;
    btnLiberarPagamento: TButton;
    GroupBox5: TGroupBox;
    chkMensagens: TDBCheckBox;
    pnMensagens: TPanel;
    Label15: TLabel;
    Label25: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    rgTipo: TDBRadioGroup;
    Label1: TLabel;
    EditCNPJ: TcxDBMaskEdit;
    ACBrCEP1: TACBrCEP;
    Label8: TLabel;
    cbxTipo: TDBComboBox;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure EditUFExit(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure Spb_email2Click(Sender: TObject);
      procedure DBGrid_PrincipalDblClick(Sender: TObject);
      procedure db_FornecedorNewRecord(DataSet: TDataSet);
      procedure db_FornecedorCEPChange(Sender: TField);
      procedure db_FornecedorDeleteError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_FornecedorEditError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_FornecedorPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure db_FornecedorCPF_CNPJChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkDepositoContaClick(Sender: TObject);
    procedure btnLiberarPagamentoClick(Sender: TObject);
    procedure chkMensagensClick(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFornecedores: TFrmFornecedores;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, Classe.CEP,
  Classe.Cliente, Classe.Global, FBaseDados;

{$R *.DFM}

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
   pgFornecedores.ActivePageIndex :=0;
   gbLiberacoes.Enabled :=(fncUsuario_retCampo(nUsuario,'FORNEC_LIBERARPAGAMENTO')='S');
   FrmFrameBotoes1.DataSource := DS_Fornecedor;
   FrmFrameBotoes1.DataSource.DataSet := db_Fornecedor;
   db_Fornecedor.open;
   dbTipoContrato.open;
   dbSeguimento.Open;
   dbRelacionamento.Open;
   btnLiberarPagamento.Enabled :=(fncUsuario_retCampo(nUsuario,'NIVEL')='GERENCIAL') and (db_Fornecedor.FieldByName('LIBERARPAGAMENTO').AsString='N');
end;

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Fornecedor.close;
   dbTipoContrato.close;
   dbSeguimento.Close;
   dbRelacionamento.Close;
   Action := cafree;
end;

procedure TFrmFornecedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F5 then
   begin

      If (db_Fornecedor.state in [dsBrowse]) then
          db_Fornecedor.Refresh;
   end;


end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   rgTipo.SetFocus;

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaFornecedor.Execute then
   begin
      db_Fornecedor.close;
      db_Fornecedor.ParamByName('CODIGO').AsInteger :=LocalizaFornecedor.ResultFieldAsInteger('CODIGO');
      db_Fornecedor.open;
   end;

   rgBloqueio.Enabled := (db_Fornecedor.FieldByName('LIBERARPAGAMENTO').AsString='S');
end;

procedure TFrmFornecedores.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

//   if db_Fornecedor.FieldByName('PLANO_CONTAS').AsString='' then
//   begin
//      aviso('Informe um Plano de Contas para este fornecedor');
//      DCodPlano.Setfocus;
//      exit;
//   end;

   FrmFrameBotoes1.SpbSalvarClick(Sender);
   rgBloqueio.Enabled := (db_Fornecedor.FieldByName('LIBERARPAGAMENTO').AsString='S');
end;

procedure TFrmFornecedores.rgTipoChange(Sender: TObject);
begin
  if not (db_Fornecedor.state in [dsEdit,dsInsert]) then
    Exit;
  EditCNPJ.Clear;
  case rgTipo.ItemIndex of
    0 : EditCNPJ.Properties.EditMask:= '99.999.999/9999-99';
    1 : EditCNPJ.Properties.EditMask:= '999.999.999-99';
  end;
  EditCNPJ.SetFocus;
end;

procedure TFrmFornecedores.Btn_SairClick(Sender: TObject);
begin
   close;
end;


procedure TFrmFornecedores.db_FornecedorCEPChange(Sender: TField);
begin
  //TEndereco.SetCEPEndereco(db_Fornecedor,db_Fornecedor.FieldByName('CEP').AsString);
end;

procedure TFrmFornecedores.db_FornecedorCPF_CNPJChange(Sender: TField);
begin
//   db_Fornecedor.FieldByName('CPF_CNPJ').AsString :=Formata_CNPJ_CPF(db_Fornecedor.FieldByName('CPF_CNPJ').AsString);
end;

procedure TFrmFornecedores.db_FornecedorDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmFornecedores.db_FornecedorEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmFornecedores.db_FornecedorNewRecord(DataSet: TDataSet);
begin
   db_Fornecedor.FieldByName('DATA').AsDateTime      := Date;
   db_Fornecedor.FieldByName('TIPO').AsString        := 'FORNECEDOR';
   db_Fornecedor.FieldByName('IDCIDADE').AsInteger   := FParametros.Empresa.IDCidade;
   db_Fornecedor.FieldByName('CODIGOUF').AsInteger   := FParametros.Empresa.IDUF;
   db_Fornecedor.FieldByName('NOMECIDADE').AsString  := FParametros.Empresa.Cidade;
   db_Fornecedor.FieldByName('UF').AsString          := FParametros.Empresa.UF;

end;

procedure TFrmFornecedores.db_FornecedorPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmFornecedores.BtnCancelarClick(Sender: TObject);
begin

   // Cancelar edição CIDADE
   db_Fornecedor.Cancel;

end;

procedure TFrmFornecedores.BtnSalvarClick(Sender: TObject);
begin

   // SALVAR REGISTRO
   If (db_Fornecedor.state in [dsEdit, dsInsert]) then
   Begin
      // Gerar novo codigo para o CIDADE
      db_Fornecedor.Post;
   End;

end;

procedure TFrmFornecedores.btnLiberarPagamentoClick(Sender: TObject);
var
  mAcaousuario : string;
begin
  mAcaousuario :='Autorizou Liberações Gerenciais [Liberar Pagamento]: '+sLineBreak+
                 'CÓDIGO: '+  db_Fornecedor.FieldByName('CODIGO').AsString+sLineBreak+
                 'NOME:'+db_Fornecedor.FieldByName('NOME').AsString;

  if FUsuario.Autenticar=False then
    Exit;

  if not (db_Fornecedor.State in [dsEdit,dsInsert]) then
    db_Fornecedor.Edit;

  db_Fornecedor.FieldByName('LIBERARPAGAMENTO').AsString:='S';
  rgBloqueio.Enabled :=True;
  FUsuario.LogUsuario(Screen.ActiveForm.Caption,mAcaousuario);
end;

procedure TFrmFornecedores.BtnNovoClick(Sender: TObject);
begin
   // Gerar novo codigo para o CIDADE

   db_Fornecedor.Append;
   db_Fornecedor.FieldByName('DATA').AsDateTime := Date;

   rgTipo.SetFocus;

end;

Procedure TFrmFornecedores.EditUFExit(Sender: TObject);
begin

   If UF_Brasil(db_Fornecedor.FieldByName('UF').AsString) = false then
   Begin
      Aviso('Estado não exite');
      EditUF.SetFocus;
   End;

end;

procedure TFrmFornecedores.SpeedButton1Click(Sender: TObject);
begin

   strURL := db_Fornecedor.FieldByName('SITE').AsString;
   If not empty(strURL) Then
   Begin
      shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
   End
   Else
      Erro('o campo Site está vazio...' + chr(13) + 'Verifique.');

end;

procedure TFrmFornecedores.Spb_email2Click(Sender: TObject);
begin
   eMail := db_Fornecedor.FieldByName('EMAIL').AsString;
   If not empty(eMail) Then
   Begin
      shellexecute(GetDesktopWindow, 'open', pchar(eMail), nil, nil,
        sw_ShowNormal);
   End
   Else
      Erro('campo E-mail está vazio...' + chr(13) + 'Verifique.');

end;

procedure TFrmFornecedores.EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_HOME  then
   begin

     If pergunta('Acessar site do IBGE para Consulta de Município?')=false Then
        exit;

     strURL := 'http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm';
     ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);

   end;

end;

procedure TFrmFornecedores.chkDepositoContaClick(Sender: TObject);
begin
  editBanco.Enabled    :=chkDepositoConta.Checked;
  editAgencia.Enabled  :=chkDepositoConta.Checked;
  editConta.Enabled    :=chkDepositoConta.Checked;
end;

procedure TFrmFornecedores.chkMensagensClick(Sender: TObject);
begin
  pnMensagens.Enabled :=chkMensagens.Checked;
end;

procedure TFrmFornecedores.DBGrid_PrincipalDblClick(Sender: TObject);
begin
   If db_Fornecedor.IsEmpty then
   Begin
      Informar('Não há dados para editar');
      abort;
   end;

end;

end.
