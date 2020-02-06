{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtDlgs, FFrameBotoes,
  FFrameBarra, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Vcl.Mask, Vcl.Buttons,
  Vcl.ComCtrls, Winapi.ShellApi;

type
   TFrmEmpresa = class(TForm)
      Panel2: TPanel;
      OpenPictureDialog1: TOpenPictureDialog;
      PgParametros: TPageControl;
      Tab_DadosEmpresa: TTabSheet;
      GroupBox1: TGroupBox;
      Tab_Financeiro: TTabSheet;
      GroupBox18: TGroupBox;
      Label28: TLabel;
      Label29: TLabel;
      Label30: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label36: TLabel;
      Label37: TLabel;
      Label41: TLabel;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit15: TDBEdit;
      DBEdit16: TDBEdit;
      DBEdit19: TDBEdit;
      Label4: TLabel;
      Label14: TLabel;
      DBEdit3: TDBEdit;
      Tab_Configurar: TTabSheet;
      GroupBox3: TGroupBox;
      DS_Parametros: TDataSource;
      DBCheckBox11: TDBCheckBox;
      TabSheet1: TTabSheet;
      GroupBox6: TGroupBox;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      GroupBox5: TGroupBox;
      Label21: TLabel;
      Label22: TLabel;
      Label23: TLabel;
      GrpPreV: TGroupBox;
      GrpPreview: TLabel;
      DBRadioGroup9: TDBRadioGroup;
      FrmFrameBarra1: TFrmFrameBarra;
      DBRadioGroup1: TDBRadioGroup;
      GroupBox8: TGroupBox;
      Label17: TLabel;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      Tab_Producao: TTabSheet;
      GroupBox12: TGroupBox;
      Label24: TLabel;
      DBLookupComboBox3: TDBLookupComboBox;
      Label42: TLabel;
      DBLookupComboBox2: TDBLookupComboBox;
      DBComboBox1: TDBComboBox;
      Label27: TLabel;
      Tab_NFE: TTabSheet;
      OpenDialog1: TOpenDialog;
      GroupBox14: TGroupBox;
      DBEdit35: TDBEdit;
      Label7: TLabel;
      DBEdit36: TDBEdit;
      Label18: TLabel;
      DBEdit37: TDBEdit;
      Label58: TLabel;
      DBEdit38: TDBEdit;
      Label62: TLabel;
    EditNCM: TDBEdit;
    Label65: TLabel;
    GroupBox15: TGroupBox;
    Label67: TLabel;
    DBEdit41: TDBEdit;
    Label38: TLabel;
    EditAliquota: TDBEdit;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox13: TGroupBox;
    db_Estados: TFDQuery;
    ds_Estados: TDataSource;
    DBGrid1: TDBGrid;
    editComissaoNomeContaCaixa: TEdit;
    editComissaoNomeCentroCusto: TEdit;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    EstSearchDialogZeos1: TIDBEditDialog;
    IDBEditDialog1: TIDBEditDialog;
    GroupBox20: TGroupBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    IDBEditDialog3: TIDBEditDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    IDBEditDialog4: TIDBEditDialog;
    GroupBox19: TGroupBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    IDBEditDialog2: TIDBEditDialog;
    ContaProcurar: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    EditNomePlanoContasReceber: TEdit;
    GroupBox21: TGroupBox;
    Edit4: TEdit;
    DbEditCFOP: TIDBEditDialog;
    IDBEditDialog5: TIDBEditDialog;
    Edit3: TEdit;
    GroupBox22: TGroupBox;
    IDBEditDialog6: TIDBEditDialog;
    Edit5: TEdit;
    IDBEditDialog7: TIDBEditDialog;
    Edit6: TEdit;
    Panel5: TPanel;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    Edit7: TEdit;
    IDBEditDialog8: TIDBEditDialog;
    DBRadioGroup16: TDBRadioGroup;
    TabSheet2: TTabSheet;
    GroupBox23: TGroupBox;
    DBRadioGroup13: TDBRadioGroup;
    GroupBox24: TGroupBox;
    EditCliente: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditVendedor1: TEdit;
    EditCodevendedor: TIDBEditDialog;
    GroupBox25: TGroupBox;
    Label70: TLabel;
    DBEdit42: TDBEdit;
    Label69: TLabel;
    Edit8: TEdit;
    IDBEditDialog9: TIDBEditDialog;
    Edit9: TEdit;
    IDBEditDialog10: TIDBEditDialog;
    Edit10: TEdit;
    IDBEditDialog11: TIDBEditDialog;
    Tab_Operacionais: TTabSheet;
    GroupBox10: TGroupBox;
    db_EstadosSIGLA: TStringField;
    db_EstadosNOME: TStringField;
    db_EstadosICMS: TFloatField;
    db_EstadosICMS_PFISICA: TFloatField;
    db_EstadosISS: TFloatField;
    db_EstadosIPI: TFloatField;
    db_EstadosIR: TFloatField;
    db_EstadosRETER_PIS: TStringField;
    db_EstadosRETER_COFINS: TStringField;
    db_EstadosRETER_CSLL: TStringField;
    db_EstadosRETER_INSS: TStringField;
    Label20: TLabel;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label26: TLabel;
    Label35: TLabel;
    DBComboBox4: TDBComboBox;
    Label39: TLabel;
    DBComboBox5: TDBComboBox;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label40: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup20: TDBRadioGroup;
    FrmFrameBotoes1: TFrmFrameBotoes;
    db_Parametros: TFDQuery;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label48: TLabel;
    Label25: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    BtnLogoRelatorios: TSpeedButton;
    BtnLogomarca: TSpeedButton;
    Label6: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    EditRUA: TDBEdit;
    EditBAIRRO: TDBEdit;
    EditCEP: TDBEdit;
    EditCIDADE: TDBEdit;
    EditUF: TDBEdit;
    EditNUM_FONE: TDBEdit;
    EditULT_VISITA: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    Panel1: TPanel;
    IMGLogomarca: TImage;
    Panel3: TPanel;
    IMGLogoRelatorios: TImage;
    DBEdit4: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit5: TDBEdit;
    EditNOME: TDBEdit;
    editDataBase: TDBEdit;
    DBEdit7: TDBEdit;
    dbEditPesquisarEmpresa: TIDBEditDialog;
      procedure ButtonGroup1Items3Click(Sender: TObject);
      procedure ButtonGroup1Items1Click(Sender: TObject);
      procedure ButtonGroup1Items0Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditJornSTKeyPress(Sender: TObject; var Key: Char);
      procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
      procedure BtnLogomarcaClick(Sender: TObject);
      procedure BtnLogoRelatoriosClick(Sender: TObject);
      procedure IMGLogomarcaDblClick(Sender: TObject);
      procedure IMGLogoRelatoriosDblClick(Sender: TObject);
      procedure db_Parametros_cdsBeforePost(DataSet: TDataSet);
      procedure FormShow(Sender: TObject);
      procedure DBComboBox1ContextPopup(Sender: TObject; MousePos: TPoint;
        var Handled: Boolean);
      procedure db_ParametrosNewRecord(DataSet: TDataSet);
      procedure Button1Click(Sender: TObject);
      procedure db_ParametrosAfterScroll(DataSet: TDataSet);
      procedure db_ParametrosPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEdit1Click(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);

   private
      { Private declarations }

      Procedure MontarMascara;

   public
      { Public declarations }
   end;

var
   FrmEmpresa: TFrmEmpresa;

implementation

uses Biblioteca, FBaseDados, Global,
   Clientes, FPrincipal, MovProdutos,
   Biblioteca_pcp, FBaseDados_PCP, SQLServer,
  FControleCaixa, FControleBancario;

{$R *.DFM}

procedure TFrmEmpresa.FormCreate(Sender: TObject);
var
  mVerOperacional : Boolean;
begin
  FrmFrameBotoes1.DataSource := DS_Parametros;
  FrmFrameBotoes1.DataSource.DataSet := DS_Parametros.DataSet;

   mVerOperacional :=false;
   mVerOperacional :=(fncUsuario_retCampo(nUsuario,'NIVEL')='GESTORSISTEMA') or
                     (fncUsuario_retCampo(nUsuario,'NIVEL')='ADMINISTRADOR') or
                     (fncUsuario_retCampo(nUsuario,'NIVEL')='GERENCIAL');
   if not mVerOperacional then
     Tab_Operacionais.Free;

   BtnLogomarca.Caption := 'Definir Logotipo' + #13 + #10 +'Papel de parede do Sistema';
   BtnLogoRelatorios.Caption := 'Logotipo NF-e' + #13 + #10 +'(Nota Fiscal Eletrônica)';

   db_Parametros.Close;
   db_Parametros.Open;

   db_Estados.Open;

end;

procedure TFrmEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   db_Estados.Close;
   db_Parametros.close;
   BaseDados.db_Parametros.close;
   BaseDados.db_Parametros.open;

end;

procedure TFrmEmpresa.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

   If (db_Estados.state in [dsedit, dsinsert]) then
   Begin
      db_Estados.Post;
   End;

end;

procedure TFrmEmpresa.db_ParametrosNewRecord(DataSet: TDataSet);
begin
   db_Parametros.FieldByName('ESTOQUENEGATIVO').AsString := 'S';
   db_Parametros.FieldByName('PED_BAIXAESTOQUE').AsString := 'N';
   db_Parametros.FieldByName('IDPAIS').AsInteger := 1058;
   db_Parametros.FieldByName('NOMEPAIS').AsString := 'BRASIL';
end;

procedure TFrmEmpresa.db_ParametrosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   raise Exception.Create(E.Message);

end;

procedure TFrmEmpresa.EditJornSTKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;
End;

procedure TFrmEmpresa.Button1Click(Sender: TObject);
begin
   db_Parametros.Edit;
end;

procedure TFrmEmpresa.ButtonGroup1Items0Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_DadosEmpresa;
end;

procedure TFrmEmpresa.ButtonGroup1Items1Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_Configurar;

end;

procedure TFrmEmpresa.ButtonGroup1Items3Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_Financeiro;
end;

procedure TFrmEmpresa.cxDBSpinEdit1Click(Sender: TObject);
begin
   MontarMascara;
end;

procedure TFrmEmpresa.DBComboBox1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
   MontarMascara;
end;

procedure TFrmEmpresa.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmEmpresa.DBEdit4KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmEmpresa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmEmpresa.FormShow(Sender: TObject);
begin
   MontarMascara;
   PgParametros.ActivePageIndex := 0;
end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  editDataBase.SetFocus;
end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisarEmpresa.Execute then
   begin
      db_Parametros.Locate('EMPRESA', dbEditPesquisarEmpresa.ResultFieldAsInteger('EMPRESA'), []);
   End;
end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmEmpresa.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmEmpresa.IMGLogomarcaDblClick(Sender: TObject);
begin

   If not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;

   db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString := '';

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

   IMGLogomarca.Picture.LoadFromFile
     (db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString);

end;

procedure TFrmEmpresa.IMGLogoRelatoriosDblClick(Sender: TObject);
begin

   If not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;

   db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString := '';
   IMGLogoRelatorios.Picture.LoadFromFile
     (db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString);

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

end;

procedure TFrmEmpresa.MontarMascara;
begin

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;
   db_Parametros.Refresh;

   GrpPreview.Caption := MontarCodigoProduto('X', 'X', 'X');

   Update;

end;

procedure TFrmEmpresa.BtnLogomarcaClick(Sender: TObject);
begin

   If OpenPictureDialog1.Execute then
   begin

      If not(db_Parametros.state in [dsEdit]) then
         db_Parametros.Edit;

      db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString :=
        OpenPictureDialog1.FileName;

      If (db_Parametros.state in [dsEdit, dsInsert]) then
      Begin
         db_Parametros.Post;
      End;

      db_Parametros.close;
      db_Parametros.open;

   End;

end;

procedure TFrmEmpresa.BtnLogoRelatoriosClick(Sender: TObject);
begin

   If OpenPictureDialog1.Execute then
   begin
      If not(db_Parametros.state in [dsEdit]) then
         db_Parametros.Edit;

      db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString :=
        OpenPictureDialog1.FileName;

      If (db_Parametros.state in [dsEdit, dsInsert]) then
      Begin
         db_Parametros.Post;
      End;

      db_Parametros.close;
      db_Parametros.open;

   end;

end;

procedure TFrmEmpresa.db_ParametrosAfterScroll(DataSet: TDataSet);
begin

//   SpnDigitosGrupo.Value := db_Parametros.FieldByName('GRUPO').AsInteger;
//   SpnDigitosSubGrupo.Value := db_Parametros.FieldByName('SUBGRUPO').AsInteger;
//   SpnDigitosProduto.Value := db_Parametros.FieldByName('PRODUTO').AsInteger;

   GrpPreview.Caption := MontarCodigoProduto('X', 'X', 'X');

   if FileExists(db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString) then
     IMGLogomarca.Picture.LoadFromFile(db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString);

   if FileExists(db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString) then
     IMGLogoRelatorios.Picture.LoadFromFile(db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString);

end;

procedure TFrmEmpresa.db_Parametros_cdsBeforePost(DataSet: TDataSet);
begin

   if (db_Parametros.FieldByName('ESTOQUENEGATIVO').AsString = 'N') or
     (db_Parametros.FieldByName('ESTOQUENEGATIVO').IsNull) Then
   begin
      BeepCritica;
      FormMensagem('Você está permitindo venda sem estoque. Cuidado!' + #13 +
        #10 + #13 + #10 + 'Verifique na guia "Estoque"');
   end;

end;

end.
