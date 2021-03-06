﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}


unit FCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ShellAPI, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, frxClass, frxDBSet,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtDlgs, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
  FFrameBarra,
  CoreTableClass,
  Classe.Global, dxDateRanges;

type
    TFrmClientes = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    db_Pedido: TFDQuery;
    ds_Pedido: TDataSource;
    db_PedidoEMPRESA: TIntegerField;
    db_PedidoCODIGO: TIntegerField;
    db_PedidoDATA: TSQLTimeStampField;
    db_PedidoDATA_FATURAMENTO: TSQLTimeStampField;
    db_PedidoDATA_ENTREGA: TSQLTimeStampField;
    db_PedidoVENDEDOR_NOME: TStringField;
    db_PedidoFORMA_PAGTO_NOME: TStringField;
    db_PedidoTIPOPAGAMENTO: TStringField;
    db_PedidoQTDE_TOTAL: TIntegerField;
    db_PedidoVLR_TOTAL: TFloatField;
    db_PedidoSTATUS: TStringField;
    db_ctareceber: TFDQuery;
    ds_ctareceber: TDataSource;
    db_PedidoSum: TFDQuery;
    db_ctareceberSum: TFDQuery;
    frdb_Pedido: TfrxDBDataset;
    frdb_ctareceber: TfrxDBDataset;
    frdb_Clientes: TfrxDBDataset;
    frxReportCliente: TfrxReport;
    db_ViewCliente: TFDQuery;
    PopupImprimir: TPopupMenu;
    ImprimirPedidocomvalores1: TMenuItem;
    ImprimirPedidosemvalores1: TMenuItem;
    frxClienteFicha: TfrxReport;
    EditClienteLocalizar: TIDBEditDialog;
    OpenDialogArquivos: TOpenDialog;
    pmEnderecos: TPopupMenu;
    pMnuEnderecoCadastrado: TMenuItem;
    DS_Clientes: TDataSource;
    db_Clientes: TFDQuery;
    dbClienteCobrancas: TFDQuery;
    dsClienteCobrancas: TDataSource;
    PgClientes: TPageControl;
    Tab_PFisica: TTabSheet;
    Pg_CadastroF: TPageControl;
    Tab_FBasicos: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Spb_email1: TSpeedButton;
    Label61: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    Label60: TLabel;
    RgSexo: TDBRadioGroup;
    DBEdit2: TDBEdit;
    EditCPF: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit_cxpostal: TDBEdit;
    EditcodRegiao1: TIDBEditDialog;
    EditVendedor1: TEdit;
    DBEdit66: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    EditRegiao1: TEdit;
    EditCodevendedor: TIDBEditDialog;
    GroupBox9: TGroupBox;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBImage1: TDBImage;
    GroupBox2: TPanel;
    Label52: TLabel;
    Label18: TLabel;
    Label51: TLabel;
    Label56: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    EditCEP0: TDBEdit;
    EditEndereco1: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit52: TDBEdit;
    EditBairro1: TDBEdit;
    EditCodCidade1: TDBEdit;
    EditCidade1: TDBEdit;
    EditUF1: TDBEdit;
    BtnComplemento: TButton;
    DBEdit9: TDBEdit;
    Tab_FImportantes: TTabSheet;
    Label57: TLabel;
    Label13: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    RDGCredito: TDBRadioGroup;
    DBEdit39: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    Tab_PJuridica: TTabSheet;
    Pg_CadastroJ: TPageControl;
    Tab_JBasico: TTabSheet;
    Label68: TLabel;
    Label69: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label70: TLabel;
    Label40: TLabel;
    Label33: TLabel;
    Label43: TLabel;
    Label4: TLabel;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    EditNome: TDBEdit;
    EdFantasia: TDBEdit;
    EdRGInscrEst: TDBEdit;
    EditCNPJ: TDBEdit;
    DBEdit59: TDBEdit;
    EditcodRegiao2: TIDBEditDialog;
    EditRegiao2: TEdit;
    DBEdit24: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    grpEnderecoPJ: TGroupBox;
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    EditAtividade: TIDBEditDialog;
    EditNomeAtividade: TEdit;
    EditCodigo: TDBEdit;
    rgpAtivo: TDBRadioGroup;
    EditPlanoPagamentoPadrao: TEdit;
    EditPagamento: TIDBEditDialog;
    TabPerfil: TTabSheet;
    Splitter4: TSplitter;
    GroupBox8: TGroupBox;
    GroupBox18: TGroupBox;
    IDBEditDialog1: TIDBEditDialog;
    Edit1: TEdit;
    IDBEditDialog2: TIDBEditDialog;
    Edit2: TEdit;
    IDBEditDialog4: TIDBEditDialog;
    Edit4: TEdit;
    gbTipoComercializacao: TGroupBox;
    DBRadioGroup2: TDBRadioGroup;
    rgFormaComercializar: TDBRadioGroup;
    rgTipoComercializar: TDBRadioGroup;
    Tab_JImportantes: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox5: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    rgpSerasa: TDBRadioGroup;
    gbCobranca: TGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    TabSheet3: TTabSheet;
    Splitter2: TSplitter;
    gbAnexosObservacao: TGroupBox;
    DBRichEdit2: TDBRichEdit;
    Panel6: TPanel;
    gbAnexos: TGroupBox;
    TabSheet5: TTabSheet;
    GroupBox20: TGroupBox;
    DBRichEdit1: TDBRichEdit;
    Tab_Historico: TTabSheet;
    Panel2: TPanel;
    Splitter1: TSplitter;
    GroupBox4: TGroupBox;
    GridPedidos: TDBGrid;
    GroupBox6: TGroupBox;
    GridFinanceiro: TDBGrid;
    Panel4: TPanel;
    LblVendas: TLabel;
    LblReceber: TLabel;
    LblPago: TLabel;
    LblSaldoReceber: TLabel;
    LblQuantidade: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    Label31: TLabel;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    btnAbrir: TBitBtn;
    QryAnexos: TFDQuery;
    dsAnexos: TDataSource;
    cxGrid1: TcxGrid;
    cxGridAnexo: TcxGridDBTableView;
    cxGridAnexoArquivo: TcxGridDBColumn;
    cxGridAnexoUsuario: TcxGridDBColumn;
    cxGridAnexoDataAnexo: TcxGridDBColumn;
    cxGridAnexoTipoArquivo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    IDBEditDialog3: TIDBEditDialog;
    Edit3: TEdit;
    GroupBox10: TGroupBox;
    Label12: TLabel;
    Label42: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    DBEdit26: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit41: TDBEdit;
    rgBloqueio: TDBRadioGroup;
    btnLiberarCredito: TButton;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure Iniciar;
      procedure GridComerciaisKeyPress(Sender: TObject; var Key: Char);
      procedure GridBancosKeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid12KeyPress(Sender: TObject; var Key: Char);
      procedure Spb_email1Click(Sender: TObject);
      procedure Spb_http1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure CodCidadeKeyPress(Sender: TObject; var Key: Char);
      procedure BitBtn2Click(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure BtnComplementoClick(Sender: TObject);
    procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tab_HistoricoShow(Sender: TObject);
    procedure Tab_HistoricoExit(Sender: TObject);
    procedure db_PedidoAfterOpen(DataSet: TDataSet);
    procedure GridFinanceiroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure db_PedidoBeforeOpen(DataSet: TDataSet);
    procedure db_ctareceberBeforeOpen(DataSet: TDataSet);
    procedure db_ctareceberSumBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoSumBeforeOpen(DataSet: TDataSet);
    procedure ImprimirPedidocomvalores1Click(Sender: TObject);
    procedure ImprimirPedidosemvalores1Click(Sender: TObject);
    procedure pMnuEnderecoCadastradoClick(Sender: TObject);
    procedure dbPesquisarEnderecoClose(Sender: TObject);
    procedure dbPesquisarEnderecoChange(Sender: TObject);
    procedure rgBloqueioClick(Sender: TObject);
    procedure btnLiberarCreditoClick(Sender: TObject);
    procedure rgTipoComercializarClick(Sender: TObject);
    procedure db_ClientesAfterPost(DataSet: TDataSet);
    procedure db_ClientesBeforePost(DataSet: TDataSet);
    procedure db_ClientesNewRecord(DataSet: TDataSet);
    procedure dbClienteAnexosBeforePost(DataSet: TDataSet);
    procedure dbClienteCobrancasBeforePost(DataSet: TDataSet);
    procedure db_ClientesUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure EditCodevendedorChange(Sender: TObject);
    procedure EditCNPJExit(Sender: TObject);
    procedure EditCPFExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure cxGridAnexoDblClick(Sender: TObject);
    procedure cxGridAnexoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdRGInscrEstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAtividadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdFantasiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

   private
      { Private declarations }
    FCoreTables : TCoreTables;
    procedure RefreshTabelas;
    procedure HabilitarCampos;
    procedure TelaEnderecos;
    procedure DadosEndereco;
    Function ChecarCliente(const aTipo, aDocumento : String) : Boolean;

   public
      { Public declarations }

   end;

var
   FrmClientes: TFrmClientes;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  FClientesComplementos, FBaseDados, Classe.Usuarios,
  App.Funcoes, FEnderecoCliente, Classe.CEP, Classe.Cliente, App.Constantes;

{$R *.dfm}

procedure TFrmClientes.BtnComplementoClick(Sender: TObject);
begin
   FrmClientesComplementos := TFrmClientesComplementos.Create(self);
   FrmClientesComplementos.ShowModal;
end;

procedure TFrmClientes.btnLiberarCreditoClick(Sender: TObject);
var
  mAcaousuario : string;
begin
  mAcaousuario :='Autorizou liberação de crédito para o Cliente: '+sLineBreak+
                 'CÓDIGO: '+  db_Clientes.FieldByName('CODIGO').AsString+sLineBreak+
                 'NOME:'+db_Clientes.FieldByName('NOME').AsString;

  if FUsuario.Autenticar=False then
    Exit;

  if not (db_Clientes.State in [dsEdit,dsInsert]) then
    DS_Clientes.DataSet.Edit;

  db_Clientes.FieldByName('BLOQUEADO').AsString:='N';
  btnLiberarCredito.Enabled :=False;
  rgBloqueio.Enabled :=True;

  FUsuario.LogUsuario(Screen.ActiveForm.Caption,mAcaousuario);
end;

procedure TFrmClientes.btnRemoverClick(Sender: TObject);
begin
  if  QryAnexos.IsEmpty then
    exit;
  if not pergunta('Confirma exclusão do registro?') then
    exit;
  QryAnexos.Delete;
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.actCadastrosPessoaJuridica.Enabled := True;
//   FrmPrincipal.actCadastrosPessoaFisica.Enabled := True;
   { abrir tabelas complementares }
   FCoreTables.Fechar([db_Clientes,
                       QryAnexos,
                       dbClienteCobrancas] );
   FCoreTables.Free;
   Action := cafree;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
  FrmFrameBotoes1.DataSource := DS_Clientes;
  FrmFrameBotoes1.DataSource.DataSet := DS_Clientes.DataSet;
end;

procedure TFrmClientes.Iniciar;
begin

   db_Clientes.Close;
   // quando cadastro de clientes for acionado via BOTÃO
   If ViaMenu = False Then
      strCliente := BaseDados.db_Parametros.FieldByName('TIPO_CLIENTE').Asstring;

//   FrmPrincipal.actCadastrosPessoaJuridica.Enabled := False;
//   FrmPrincipal.actCadastrosPessoaFisica.Enabled := False;

   If (strCliente = 'J') then
   Begin

      // Definir clientes Pessoas Juridicas
      db_Clientes.SQL.clear;
      db_Clientes.SQL.add('SELECT *  FROM CAD_CLIENTES');
      db_Clientes.SQL.add('WHERE');
      db_Clientes.SQL.add('CODIGO=:CODIGO');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('CLASSIFICACAO=''J''');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('TIPO=''CLIENTE'' ');
      db_Clientes.SQL.add('ORDER BY NOME  ');

      FrmFrameBarra1.LblBarraTitulo.Caption := 'Cadastro de Clientes - Pessoa Juridica';
      PgClientes.Pages[0].Destroy; { }
      PgClientes.ActivePage := Tab_PJuridica; { }
      strTipoPessoa := 'J'; { salvar o tipo de cliente automaticamente }
   End;

   If (strCliente = 'F') then
   Begin

      // Definir clientes Pessoas Fisicas
      db_Clientes.SQL.clear;
      db_Clientes.SQL.add('SELECT *  FROM CAD_CLIENTES');
      db_Clientes.SQL.add('WHERE');
      db_Clientes.SQL.add('CODIGO=:CODIGO');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('CLASSIFICACAO=''F''');
      db_Clientes.SQL.add('AND');
      db_Clientes.SQL.add('TIPO=''CLIENTE'' ');
      db_Clientes.SQL.add('ORDER BY NOME  ');

      FrmFrameBarra1.LblBarraTitulo.Caption := 'Cadastro de Clientes - Pessoa Fisica';
      PgClientes.Pages[1].Destroy;
      PgClientes.ActivePage := Tab_PFisica;
      strTipoPessoa := 'F';

   End;

   db_Clientes.ParamByName('CODIGO').DataType  := ftInteger;
   db_Clientes.ParamByName('CODIGO').ParamType := ptInput;
   db_Clientes.Open; { abrir tabelas clientes }

   If (strCliente = 'F') then
     db_Clientes.FieldByName('CPF_CNPJ').EditMask := '999.999.999-99';

   If (strCliente = 'J') then
     db_Clientes.FieldByName('CPF_CNPJ').EditMask := '99.999.999/9999-99' { CNPJ };


End;

procedure TFrmClientes.pMnuEnderecoCadastradoClick(Sender: TObject);
begin
  TelaEnderecos;
end;

procedure TFrmClientes.GridComerciaisKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.GridFinanceiroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   {
   if Column.Field=db_ctareceberQUITADO then
   begin
     // Desenha o check sobre o quadrado quando ativo = ‘S’
     If (db_ctareceber.FieldByName('QUITADO').AsString = 'S') Then
     Begin
       GridFinanceiro.Canvas.Font.Color := clRed;
       GridFinanceiro.Canvas.TextOut(Rect.Left+2,Rect.Top,Field.AsString);
       GridFinanceiro.Canvas.FillRect(Rect);
     End;
   end;
   }

   If (Column.Field.FieldName ='QUITADO') and (db_ctareceber.FieldByName('QUITADO').AsString = 'NAO') Then
   Begin
     GridFinanceiro.Canvas.FillRect(Rect);
     GridFinanceiro.Canvas.Font.Color := clRed;
     //GridFinanceiro.Canvas.TextOut(Rect.Left+(Column.Width div 2)-10,Rect.Top, Column.Field.AsString);
     GridFinanceiro.Canvas.TextOut(Rect.Left+(Column.Width div 2)-10,Rect.Top, Column.Field.AsString);
   End;

end;

procedure TFrmClientes.GridBancosKeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmClientes.db_ClientesAfterPost(DataSet: TDataSet);
begin
   if not (db_Clientes.State in [dsedit,dsinsert]  ) then
     exit;
  db_Clientes.ParamByname('CODIGO').AsInteger := db_Clientes.FieldByName('CODIGO').AsInteger;
  //db_Clientes.Refresh;
end;

procedure TFrmClientes.db_ClientesBeforePost(DataSet: TDataSet);
begin
   if not (db_Clientes.State in [dsedit,dsinsert]  ) then
     exit;
   db_Clientes.ParamByname('CODIGO').AsInteger :=  db_Clientes.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmClientes.db_ClientesNewRecord(DataSet: TDataSet);
begin
   if not (db_Clientes.State in [dsedit,dsinsert]  ) then
     exit;
   db_Clientes.FieldByName('DATA').AsDateTime           := Date;
   db_Clientes.FieldByName('CLASSIFICACAO').AsString    := UpperCase(strTipoPessoa);
   db_Clientes.FieldByName('BLOQUEADO').AsString        := 'N';
   db_Clientes.FieldByName('TIPO').AsString             := 'CLIENTE';
   db_Clientes.FieldByName('ATIVO').AsString            := 'S';
   db_Clientes.FieldByName('IDCIDADE').AsInteger        := FParametros.Empresa.IDCidade;
   db_Clientes.FieldByName('CODIGOUF').AsInteger        := FParametros.Empresa.IDUF;
   db_Clientes.FieldByName('NOMECIDADE').AsString       := FParametros.Empresa.Cidade;
   db_Clientes.FieldByName('UF').AsString               := FParametros.Empresa.UF;
end;

procedure TFrmClientes.db_ClientesUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  if (db_Clientes.FieldByName('ATIVO').NewValue<>db_Clientes.FieldByName('ATIVO').OldValue) then
    db_Clientes.FieldByName('ATIVODATA').AsDateTime :=Date;

   strCNPJ := '';
   if strTipoPessoa = 'F' then
   begin
      If CPF(db_Clientes.FieldByName('CPF_CNPJ').AsString) = False Then
      Begin
         BeepCritica;
         db_Clientes.FieldByName('CPF_CNPJ').AsString := '';
         Atencao('CPF inválido ');
         FrmClientes.EditCPF.SetFocus;
         Exit;

      End;

      strCNPJ := FrmClientes.EditCPF.Text;
      If (db_Clientes.state in [dsEdit, dsInsert]) then
      Begin

         If fncCliente_cnpj(strCNPJ) then
         begin
            FrmClientes.FrmFrameBotoes1.SpbCancelar.Click;
            BeepCritica;
            db_Clientes.Cancel;
            strTipoCadastro :=GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ ),'TIPO');

            AvisoSistemaErro('Já existe cadastro com esse documento: '
                              +strCNPJ
                              +sLineBreak
                              +'Está Localizado no cadastro de: '+strTipoCadastro
                              +sLineBreak
                              +'Tipo de Pessoa: '+fncTipoPessoa( GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ ),'CLASSIFICACAO') )

                             );

            db_Clientes.close;
            db_Clientes.ParamByname('CODIGO').Clear;
            db_Clientes.ParamByname('CODIGO').AsInteger := fncCliente_ID_CNPJ(strCNPJ );
            db_Clientes.open;

            Atencao('CPF já está cadastrado');
            FrmClientes.EditCPF.SetFocus;

         end;
      End;

   end;

   if strTipoPessoa = 'J' then
   begin

      If CNPJ(db_Clientes.FieldByName('CPF_CNPJ').AsString) = False Then
      Begin
         BeepCritica;
         db_Clientes.FieldByName('CPF_CNPJ').Clear;
         Atencao('CNPJ inválido ');
         FrmClientes.EditCNPJ.SetFocus;
         Exit;
      End;

      strCNPJ := FrmClientes.EditCNPJ.Text;
      If (db_Clientes.state in [dsEdit, dsInsert]) then
      Begin

         If fncCliente_cnpj(strCNPJ) then
         begin
            FrmClientes.FrmFrameBotoes1.SpbCancelar.Click;
            BeepCritica;
            db_Clientes.Cancel;

            strTipoCadastro :=GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ ),'TIPO');
            AvisoSistemaErro('Já existe cadastro com esse documento: '
                              +strCNPJ
                              +sLineBreak
                              +'Está Localizado no cadastro de: '+strTipoCadastro
                              +sLineBreak
                              +'Tipo de Pessoa: '+fncTipoPessoa( GetClienteCampo(fncCliente_ID_CNPJ(strCNPJ ),'CLASSIFICACAO') )

                             );

            db_Clientes.close;
            db_Clientes.ParamByname('CODIGO').AsInteger := fncCliente_ID_CNPJ(strCNPJ );
            db_Clientes.open;
            db_Clientes.Refresh;

         end;
      End;

   End;

end;

procedure TFrmClientes.db_ctareceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctareceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmClientes.db_ctareceberSumBeforeOpen(DataSet: TDataSet);
begin
   db_ctareceberSum.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmClientes.db_PedidoAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(GridPedidos,self);
end;

procedure TFrmClientes.db_PedidoBeforeOpen(DataSet: TDataSet);
begin
  db_Pedido.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmClientes.db_PedidoSumBeforeOpen(DataSet: TDataSet);
begin
  db_PedidoSum.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmClientes.DadosEndereco;
Var
  mCEP   : TCEP;
begin
  if not db_Clientes.Active then
     Exit;

  if (db_Clientes.FieldByName('CODIGO').AsInteger<1) then
  begin
    Informar('Necessário haver dados do Cliente, para acessar endereços.');
    Exit;
  end;

  Try
    mCEP:=TCEP.Create;
    {
    mCEP:=GetEnderecoDados(StrToIntDef(dbPesquisarEndereco.Text,0),
                           db_Clientes.FieldByName('CODIGO').AsInteger);

    EditCEP.Text           :=mCEP.CEP;
    EditEndereco.Text      :=mCEP.Endereco;
    EditNumero.Text        :=mCEP.Numero;
    EditComplemento.Text   :=mCEP.Complemento;
    EditBairro.Text        :=mCEP.Bairro;
    EditCidade.Text        :=mCEP.Cidade;
    EditUF.Text            :=mCEP.UF;
    }
  Finally
    mCEP.Free;
  End;
end;

procedure TFrmClientes.dbClienteAnexosBeforePost(DataSet: TDataSet);
begin
   QryAnexos.FieldByName('IDCLIENTE').AsInteger := db_Clientes.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmClientes.dbClienteCobrancasBeforePost(DataSet: TDataSet);
begin
  dbClienteCobrancas.FieldByName('IDCLIENTE').AsInteger := db_Clientes.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmClientes.dbPesquisarEnderecoChange(Sender: TObject);
begin
  DadosEndereco;
end;

procedure TFrmClientes.dbPesquisarEnderecoClose(Sender: TObject);
begin
  DadosEndereco;
end;

procedure TFrmClientes.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.DBGrid12KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmClientes.Spb_email1Click(Sender: TObject);
var
  eMail: String;
begin

  eMail := db_Clientes.FieldByName('EMAIL').Asstring;
  If not empty(eMail) Then
  Begin
     ShellExecute(GetDesktopWindow, 'open', pchar(eMail), nil, nil, sw_ShowNormal);
  End
  Else
     Erro('campo E-mail está vazio...' + chr(13) + 'Verifique.');

End;

procedure TFrmClientes.Spb_http1Click(Sender: TObject);
begin

   strURL := db_Clientes.FieldByName('SITE').Asstring;
   If not empty(strURL) Then
   Begin
      ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
      // ShellExecute(Handle, 'open', pchar(eMail), '', '',SW_SHOW);
   End
   Else
      Erro('o campo Site está vazio...' + chr(13) + 'Verifique.');

end;

{ pessoa fisica }
procedure TFrmClientes.Tab_HistoricoExit(Sender: TObject);
begin
   db_Pedido.Close;
   db_ctareceber.Close;
   db_PedidoSum.Close;
   db_ctareceberSum.Close;
end;

procedure TFrmClientes.RefreshTabelas;
begin
   db_Pedido.Close;
   db_ctareceber.Close;
   db_PedidoSum.Close;
   db_ctareceberSum.Close;

   db_Pedido.Open;
   db_ctareceber.Open;
   db_PedidoSum.Open;
   db_ctareceberSum.Open;

   LblQuantidade.Caption    := 'Quantidade Vendida: '+ FormatFloat( '###,##0',db_PedidoSum.FieldByName('QTDE_TOTAL').AsFloat);
   LblVendas.Caption        := 'Total Vendas: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_PedidoSum.FieldByName('VLR_TOTAL').AsFloat);
   LblReceber.Caption       := 'A Receber: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_ctareceberSum.FieldByName('TOTALRECEBER').AsFloat);
   LblPago.Caption          := 'Recebidos: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_ctareceberSum.FieldByName('TOTALPAGO').AsFloat);
   LblSaldoReceber.Caption  := 'Saldo a Receber: '+FormatSettings.CurrencyString+' '+FormatFloat( '###,##0.00',db_ctareceberSum.FieldByName('SALSOFINAL').AsFloat);
end;

procedure TFrmClientes.rgBloqueioClick(Sender: TObject);
begin
//  case rgBloqueio.ItemIndex of
//    0 : btnLiberarCredito.Enabled :=(fncUsuario_retCampo(nUsuario,'NIVEL')='GERENCIAL');
//    1 : btnLiberarCredito.Enabled :=False;
//  end;
end;

procedure TFrmClientes.rgTipoComercializarClick(Sender: TObject);
begin
  rgFormaComercializar.Enabled :=(rgTipoComercializar.ItemIndex=1);
end;

procedure TFrmClientes.Tab_HistoricoShow(Sender: TObject);
begin
   RefreshTabelas;
end;

procedure TFrmClientes.TelaEnderecos;
begin
  if not db_Clientes.Active then
     Exit;

  if (db_Clientes.FieldByName('CODIGO').AsInteger<1) then
  begin
    Informar('Necessário haver dados do Cliente, para acessar endereços.');
    Exit;
  end;
  {
  FrmEnderecoCliente:=TFrmEnderecoCliente.Create(Self);
  FrmEnderecoCliente.dbTabela.Close;
  FrmEnderecoCliente.FormStyle :=fsNormal;
  FrmEnderecoCliente.Visible :=False;
  FrmEnderecoCliente.Update;
  FrmEnderecoCliente.IDCliente   :=db_Clientes.FieldByName('CODIGO').AsInteger;
  FrmEnderecoCliente.NomeCliente :=db_Clientes.FieldByName('NOME').AsString;
  FrmEnderecoCliente.FrmFrameBarra1.LblBarraTitulo.Caption :='Endereço de Cliente';
  FrmEnderecoCliente.pnNomeCliente.Caption:='   '+Trim(EditNome.Text);
  FrmEnderecoCliente.dbTabela.ParamByName('IDCLIENTE').AsInteger :=FrmEnderecoCliente.IDCliente;
  FrmEnderecoCliente.dbTabela.open;
  FrmEnderecoCliente.ShowModal;

  dbPesquisarEndereco.Enabled:=DadosExistenteEndereco(db_Clientes.FieldByName('CODIGO').AsInteger);
  }

end;

procedure TFrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F7 then
   begin
     If strTipoPessoa = 'F' Then
     Begin
        BtnComplementoClick(Sender);
     End;
   end
   else if Key = VK_F5 then
   begin
     If (db_Clientes.state in [dsBrowse]) then
        db_Clientes.Refresh;
   end
   else If Key = VK_ESCAPE then
   begin
     if PgClientes.ActivePageIndex <> 0 then
     begin
        FrmFrameBotoes1.SpbCancelarClick(Sender);
     end
     else
     begin
        FrmFrameBotoes1SpbSairClick(Sender);
     end;
   End;
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  FrmFrameBotoes1.DataSource := DS_Clientes;
  FrmFrameBotoes1.DataSource.DataSet := DS_Clientes.DataSet;

  Pg_CadastroF.ActivePageIndex := 0;
  Pg_CadastroJ.ActivePageIndex := 0;
  ObjetosHabilitar([gbCobranca,gbAnexos,gbAnexosObservacao],False);


  //VertScrollBar.Range := 580; // set the range to an higher number
  //HorzScrollBar.Range := 10000; // set the range to an higher number
  //ShowScrollBar(Handle, SB_BOTH, True);
  //ShowScrollBar(Handle, SB_VERT, True);

  FCoreTables :=TCoreTables.Create;

  // iniciar de acordo com a escolha do usuário
  Iniciar;

  { abrir tabelas complementares }
  FCoreTables.Abrir([QryAnexos,
                     dbClienteCobrancas] );

  Top := 10;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   If (strCliente = 'J') then
   Begin
      PgClientes.ActivePage := Tab_PJuridica; { }
      Pg_CadastroJ.Enabled :=True;
   End;

   If (strCliente = 'F') then
   Begin
      PgClientes.ActivePage := Tab_PFisica;
      Pg_CadastroF.Enabled :=True;
   End;


   PgClientes.ActivePageIndex := 0;

   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
      EditCNPJ.SetFocus;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
      EditCPF.SetFocus;
   End;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   // db_Clientes.Append;
   db_Clientes.ParamByName('CODIGO').AsInteger :=
     db_Clientes.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   PgClientes.ActivePageIndex := 0;

   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

   FrmFrameBotoes1.SpbCancelarClick(Sender);
   FCoreTables.Cancelar([QryAnexos,
                         dbClienteCobrancas] );

   HabilitarCampos;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmClientes.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   if db_Clientes.IsEmpty then
   Begin
      aviso('Não há dados para excluir.');
      Exit;
   End;
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   HabilitarCampos;

end;

procedure TFrmClientes.ImprimirPedidocomvalores1Click(Sender: TObject);
begin
   FrmFrameBotoes1SpbImprimirClick(Sender);
end;

procedure TFrmClientes.ImprimirPedidosemvalores1Click(Sender: TObject);
begin

   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

   iAchar[0] := db_Clientes.FieldByName('CODIGO').AsInteger;

   If (strCliente = 'J') then
   Begin
      frxClienteFicha.ShowReport;
   End;

   If (strCliente = 'F') then
   Begin
      //frxReportFisica.
   End;

   db_ViewCliente.Close;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.ActivePageIndex := 0;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.ActivePageIndex := 0;
   End;

    iAchar[0] := db_Clientes.FieldByName('CODIGO').AsInteger;

   //If (strCliente = 'J') then
   //Begin
      frxReportCliente.ShowReport;
   //End;

   If (strCliente = 'F') then
   Begin
      //frxReportFisica.
   End;

   db_ViewCliente.Close;

end;

procedure TFrmClientes.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
var
  mID : Integer;
begin
   If (strCliente = 'J') then
   Begin
      Pg_CadastroJ.Enabled :=True;
   End;

   If (strCliente = 'F') then
   Begin
      Pg_CadastroF.Enabled :=True;
   End;

  EditClienteLocalizar.SearchQuery.Clear;
  EditClienteLocalizar.SearchQuery.Add('SELECT * FROM VIEW_CLIENTES');
  EditClienteLocalizar.SearchQuery.Add('WHERE');
  EditClienteLocalizar.SearchQuery.Add('TIPO='+QuotedStr('CLIENTE'));
  EditClienteLocalizar.SearchQuery.Add('AND');
  EditClienteLocalizar.SearchQuery.Add('CLASSIFICACAO='+QuotedStr(strCliente) );
  EditClienteLocalizar.SearchQuery.Add('AND');
  EditClienteLocalizar.SearchQuery.Add('%WHERE%');
  if not EditClienteLocalizar.Execute Then
    exit;
  mID :=EditClienteLocalizar.ResultFieldAsInteger('CODIGO');
  db_Clientes.Close;
  db_Clientes.ParamByName('CODIGO').AsInteger := mID;
  db_Clientes.Open;

  DadosEndereco;
  HabilitarCampos;

  RefreshTabelas;

end;

procedure TFrmClientes.HabilitarCampos;
Var
  mGerencial, mBloqueado : Boolean;
begin
  mGerencial :=False;
  mBloqueado :=False;


 if (strCliente = 'J') then
 begin
   if (db_Clientes.FieldByName('CODIGO').AsInteger>0) then
      ObjetosHabilitar([gbCobranca,gbAnexos,gbAnexosObservacao],True);
 end;

  if strCliente='J' then
  begin
    mGerencial                   :=((fncUsuario_retCampo(nUsuario,'NIVEL')='GERENCIAL') and (db_Clientes.FieldByName('BLOQUEADO').AsString='S') );
    mBloqueado                   :=(db_Clientes.FieldByName('BLOQUEADO').AsString='N');
    btnLiberarCredito.Enabled    :=mGerencial;
    rgBloqueio.Enabled           :=mBloqueado;
    rgFormaComercializar.Enabled :=(rgTipoComercializar.ItemIndex=1);
  end;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmClientes.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

  If (strCliente = 'J') then
  begin
      FCoreTables.Gravar([QryAnexos,
                       dbClienteCobrancas] );
  end;

  HabilitarCampos;

end;

procedure TFrmClientes.CodCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmClientes.cxGridAnexoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := _COR_HIGHLIGHT;
end;

procedure TFrmClientes.cxGridAnexoDblClick(Sender: TObject);
begin
  btnAbrirClick(Sender);
end;

Function TFrmClientes.ChecarCliente(const aTipo, aDocumento : String) : Boolean;
Var
  mID : Integer;
begin
  result := false;
  mID    := FConexao.ExecSQLScalar('select CODIGO  from cad_clientes where CLASSIFICACAO=:stipo and CPF_CNPJ=:sdocumento',[aTipo, Trim(aDocumento)]);

  if mID>0 then
  begin
    FrmFrameBotoes1SpbCancelarClick(self);
    db_Clientes.Close;
    db_Clientes.ParamByName('CODIGO').AsInteger := mID;
    db_Clientes.Open;
  end;
  result := mID>0;
end;

procedure TFrmClientes.EdFantasiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.EditAtividadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.EditCNPJExit(Sender: TObject);
begin
  ChecarCliente('J', EditCNPJ.Text);
end;

procedure TFrmClientes.EditCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.EditCodCidade1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmClientes.EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmClientes.EditCodevendedorChange(Sender: TObject);
begin
  if not (db_Clientes.State in [dsedit,dsinsert]  ) then
    exit;
   db_Clientes.FieldByName('REGIAO').AsInteger :=fncBuscaVendedorRegiao(db_Clientes.FieldByName('CODIGO').AsInteger);
end;

procedure TFrmClientes.EditCPFExit(Sender: TObject);
begin
  ChecarCliente('F', EditCPF.Text);
end;

procedure TFrmClientes.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.EdRGInscrEstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmClientes.BitBtn1Click(Sender: TObject);
begin

   If empty(db_Clientes.FieldByName('CODIGO').Asstring) then
      Exit;

   If OpenPictureDialog1.Execute = False then
      Exit;

   If not(db_Clientes.state in [dsEdit, dsInsert]) then
   Begin
      FrmFrameBotoes1.SpbEditarClick(Sender);
   End;

   db_Clientes.FieldByName('FOTO').clear;
   DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmClientes.BitBtn2Click(Sender: TObject);
begin

   If empty(db_Clientes.FieldByName('CODIGO').Asstring) then
      Exit;

   If pergunta('Deseja limpar a foto do(a) cliente?') = False then
      Exit;

   If not(db_Clientes.state in [dsEdit, dsInsert]) then
   Begin
      FrmFrameBotoes1.SpbEditarClick(Sender);
   End;

   db_Clientes.FieldByName('FOTO').clear;
   DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmClientes.btnAbrirClick(Sender: TObject);
Var
  mLocalArquivo : String;
begin
  if  QryAnexos.IsEmpty then
    exit;

  mLocalArquivo := _ARQUIVO_EXPORTAR+QryAnexos.FieldByName('NOMEARQUIVO').AsString;
  TBlobField(QryAnexos.FieldByName('ARQUIVOANEXO')).SaveToFile(mLocalArquivo);
  ShellExecute(handle, 'open', pChar(mLocalArquivo), '', '', SW_SHOWNORMAL);
end;

procedure TFrmClientes.btnAdicionarClick(Sender: TObject);
var
  fStream: TFileStream;
begin

  if not OpenDialogArquivos.Execute then
    exit;

  try
    fStream:= TFileStream.Create(OpenDialogArquivos.FileName, fmOpenRead);
    fStream.Position := 0;

    QryAnexos.Append;

    TBlobField(QryAnexos.FieldByName('ARQUIVOANEXO')).LoadFromStream(fStream);
    QryAnexos.FieldByName('IDCLIENTE').AsInteger       := db_Clientes.FieldByName('CODIGO').AsInteger;
    QryAnexos.FieldByName('NOMEARQUIVO').AsString      := ExtractFileName(OpenDialogArquivos.FileName);
    QryAnexos.FieldByName('TIPOARQUIVO').AsString      := ExtractFileExt(OpenDialogArquivos.FileName);
    QryAnexos.FieldByName('IDUSUARIO').AsInteger       := FUsuario.ID;
    QryAnexos.FieldByName('USUARIO').AsString          := FUsuario.Nome;
    QryAnexos.FieldByName('DATAALTERACAO').AsDateTime  := Date;

    if (QryAnexos.State in [dsedit,dsinsert]  ) then
      QryAnexos.Post;

    QryAnexos.Refresh;
  finally
    fStream.Free;

  end;

end;

procedure TFrmClientes.EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end
  else if Key = VK_F2 then
  begin
    FrmFrameBotoes1SpbAdicionarClick(Sender);
  end
  else if Key = VK_F3 then
  begin
    FrmFrameBotoes1SpbProcurarClick(Sender);
  end
  else if Key = VK_F5 then
  begin
    FrmFrameBotoes1SpbImprimirClick(Sender);
  end
  else if Key = VK_F11 then
  begin
    ShellExecute(0, nil, PChar('CALC.EXE'), nil, nil, SW_ShowNORMAL);
  end
  else if Key = VK_ESCAPE then
  begin
    FrmFrameBotoes1SpbSairClick(Sender);
  end;
end;


end.
