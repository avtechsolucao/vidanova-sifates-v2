{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEtiquetaProdutosConfigurar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FFrameBotoes, FFrameBarra,
  Vcl.StdCtrls, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  Vcl.ExtCtrls, Vcl.Buttons, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, Vcl.Mask;

type
  TFrmEtiquetaProdutosConfigurar = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    ds_EtiquetasLayout: TDataSource;
    db_EtiquetasLayout: TFDQuery;
    Grupo1: TGroupBox;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    EditNome: TDBEdit;
    Label2: TLabel;
    Grupo2: TGroupBox;
    DBAdvOfficeRadioGroup1: TDBRadioGroup;
    EditLocalImpressora: TDBEdit;
    Locate_EtiquetasLayout: TIDBEditDialog;
    ScrollBoxCampos: TScrollBox;
    grpColuna1: TGroupBox;
    GrupoDescricao1: TGroupBox;
    DBAdvSpinEdit2: TcxDBSpinEdit;
    DBAdvSpinEdit3: TcxDBSpinEdit;
    DBAdvSpinEdit4: TcxDBSpinEdit;
    DBCheckBox1: TDBCheckBox;
    GrupoCBarra1: TGroupBox;
    DBAdvSpinEdit5: TcxDBSpinEdit;
    DBAdvSpinEdit6: TcxDBSpinEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    GrupoCor1: TGroupBox;
    DBAdvSpinEdit8: TcxDBSpinEdit;
    DBAdvSpinEdit9: TcxDBSpinEdit;
    DBAdvSpinEdit10: TcxDBSpinEdit;
    DBCheckBox3: TDBCheckBox;
    GrupoTamanho1: TGroupBox;
    DBAdvSpinEdit11: TcxDBSpinEdit;
    DBAdvSpinEdit12: TcxDBSpinEdit;
    DBAdvSpinEdit13: TcxDBSpinEdit;
    DBCheckBox4: TDBCheckBox;
    GrupoPrecos1: TGroupBox;
    DBAdvSpinEdit14: TcxDBSpinEdit;
    DBAdvSpinEdit15: TcxDBSpinEdit;
    DBAdvSpinEdit16: TcxDBSpinEdit;
    DBCheckBox5: TDBCheckBox;
    grpColuna2: TGroupBox;
    GrupoDescricao2: TGroupBox;
    DBAdvSpinEdit17: TcxDBSpinEdit;
    DBAdvSpinEdit18: TcxDBSpinEdit;
    DBAdvSpinEdit19: TcxDBSpinEdit;
    DBCheckBox7: TDBCheckBox;
    GrupoCBarra2: TGroupBox;
    DBAdvSpinEdit20: TcxDBSpinEdit;
    DBAdvSpinEdit21: TcxDBSpinEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GrupoCor2: TGroupBox;
    DBAdvSpinEdit22: TcxDBSpinEdit;
    DBAdvSpinEdit23: TcxDBSpinEdit;
    DBAdvSpinEdit24: TcxDBSpinEdit;
    DBCheckBox10: TDBCheckBox;
    GrupoTamanho2: TGroupBox;
    DBAdvSpinEdit25: TcxDBSpinEdit;
    DBAdvSpinEdit26: TcxDBSpinEdit;
    DBAdvSpinEdit27: TcxDBSpinEdit;
    DBCheckBox11: TDBCheckBox;
    GrupoPrecos2: TGroupBox;
    DBAdvSpinEdit28: TcxDBSpinEdit;
    DBAdvSpinEdit29: TcxDBSpinEdit;
    DBAdvSpinEdit30: TcxDBSpinEdit;
    DBCheckBox12: TDBCheckBox;
    GrupoCodigoProduto: TGroupBox;
    DBAdvSpinEdit31: TcxDBSpinEdit;
    DBAdvSpinEdit32: TcxDBSpinEdit;
    DBAdvSpinEdit33: TcxDBSpinEdit;
    DBCheckBox13: TDBCheckBox;
    AdvGroupBox1: TGroupBox;
    DBAdvSpinEdit34: TcxDBSpinEdit;
    DBAdvSpinEdit35: TcxDBSpinEdit;
    DBAdvSpinEdit36: TcxDBSpinEdit;
    DBCheckBox14: TDBCheckBox;
    grpColuna3: TGroupBox;
    AdvGroupBox2: TGroupBox;
    DBAdvSpinEdit37: TcxDBSpinEdit;
    DBAdvSpinEdit38: TcxDBSpinEdit;
    DBAdvSpinEdit39: TcxDBSpinEdit;
    DBCheckBox15: TDBCheckBox;
    AdvGroupBox3: TGroupBox;
    DBAdvSpinEdit40: TcxDBSpinEdit;
    DBAdvSpinEdit41: TcxDBSpinEdit;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    AdvGroupBox4: TGroupBox;
    DBAdvSpinEdit42: TcxDBSpinEdit;
    DBAdvSpinEdit43: TcxDBSpinEdit;
    DBAdvSpinEdit44: TcxDBSpinEdit;
    DBCheckBox18: TDBCheckBox;
    AdvGroupBox5: TGroupBox;
    DBAdvSpinEdit45: TcxDBSpinEdit;
    DBAdvSpinEdit46: TcxDBSpinEdit;
    DBAdvSpinEdit47: TcxDBSpinEdit;
    DBCheckBox19: TDBCheckBox;
    AdvGroupBox6: TGroupBox;
    DBAdvSpinEdit48: TcxDBSpinEdit;
    DBAdvSpinEdit49: TcxDBSpinEdit;
    DBAdvSpinEdit50: TcxDBSpinEdit;
    DBCheckBox20: TDBCheckBox;
    AdvGroupBox7: TGroupBox;
    DBAdvSpinEdit51: TcxDBSpinEdit;
    DBAdvSpinEdit52: TcxDBSpinEdit;
    DBAdvSpinEdit53: TcxDBSpinEdit;
    DBCheckBox21: TDBCheckBox;
    GroupBox1: TGroupBox;
    AdvDBComboBox1: TDBComboBox;
    DBAdvSpinEdit7: TcxDBSpinEdit;
    DBAdvSpinEdit54: TcxDBSpinEdit;
    DBAdvSpinEdit55: TcxDBSpinEdit;
    DBAdvSpinEdit1: TcxDBSpinEdit;
    GrupoOP1: TGroupBox;
    DBAdvSpinEdit56: TcxDBSpinEdit;
    DBAdvSpinEdit57: TcxDBSpinEdit;
    DBAdvSpinEdit58: TcxDBSpinEdit;
    DBCheckBox22: TDBCheckBox;
    GrupoLote1: TGroupBox;
    DBAdvSpinEdit59: TcxDBSpinEdit;
    DBAdvSpinEdit60: TcxDBSpinEdit;
    DBAdvSpinEdit61: TcxDBSpinEdit;
    DBCheckBox23: TDBCheckBox;
    GrupoOP2: TGroupBox;
    DBAdvSpinEdit62: TcxDBSpinEdit;
    DBAdvSpinEdit63: TcxDBSpinEdit;
    DBAdvSpinEdit64: TcxDBSpinEdit;
    DBCheckBox24: TDBCheckBox;
    GrupoLote2: TGroupBox;
    DBAdvSpinEdit65: TcxDBSpinEdit;
    DBAdvSpinEdit66: TcxDBSpinEdit;
    DBAdvSpinEdit67: TcxDBSpinEdit;
    DBCheckBox25: TDBCheckBox;
    GrupoOP3: TGroupBox;
    DBAdvSpinEdit68: TcxDBSpinEdit;
    DBAdvSpinEdit69: TcxDBSpinEdit;
    DBAdvSpinEdit70: TcxDBSpinEdit;
    DBCheckBox26: TDBCheckBox;
    GrupoLote3: TGroupBox;
    DBAdvSpinEdit71: TcxDBSpinEdit;
    DBAdvSpinEdit72: TcxDBSpinEdit;
    DBAdvSpinEdit73: TcxDBSpinEdit;
    DBCheckBox27: TDBCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure db_EtiquetasLayoutAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_EtiquetasLayoutBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiquetaProdutosConfigurar: TFrmEtiquetaProdutosConfigurar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmEtiquetaProdutosConfigurar.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_EtiquetasLayout;
   ScrollBoxCampos.VertScrollBar.Position := 0;
   db_EtiquetasLayout.open;

end;

procedure TFrmEtiquetaProdutosConfigurar.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_PRIOR THEN
   Begin
      ScrollBoxCampos.VertScrollBar.Position :=
        ScrollBoxCampos.VertScrollBar.Position - 20;
   End;

   IF Key = VK_NEXT THEN
   Begin
      ScrollBoxCampos.VertScrollBar.Position :=
        ScrollBoxCampos.VertScrollBar.Position + 20;
   End;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditNome.Setfocus;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbProcurarClick(
  Sender: TObject);
begin

   if Locate_EtiquetasLayout.Execute then
   begin
      db_EtiquetasLayout.Cancel;
      db_EtiquetasLayout.close;
      db_EtiquetasLayout.ParamByName('CODIGO').Clear;
      db_EtiquetasLayout.ParamByName('CODIGO').AsInteger := Locate_EtiquetasLayout.ResultFieldAsInteger('CODIGO');
      db_EtiquetasLayout.Open;
      EditNome.Setfocus;

   end;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  db_EtiquetasLayout.Refresh;

end;

procedure TFrmEtiquetaProdutosConfigurar.SpeedButton1Click(Sender: TObject);
begin
  EditLocalImpressora.Text :='\\expedicao01\ArgoxOS_214';
end;

procedure TFrmEtiquetaProdutosConfigurar.db_EtiquetasLayoutAfterPost(
  DataSet: TDataSet);
begin
   db_EtiquetasLayout.ParamByName('CODIGO').AsInteger := db_EtiquetasLayout.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmEtiquetaProdutosConfigurar.db_EtiquetasLayoutBeforePost(
  DataSet: TDataSet);
begin

   if db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsInteger<=0 then
      db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsInteger    :=1;

   if db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsInteger<=0 then
      db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsInteger    :=1;

end;

procedure TFrmEtiquetaProdutosConfigurar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_EtiquetasLayout.open;
   action :=Cafree;
end;


end.
