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

unit FColecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, cxClasses, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBarra, FFrameBotoes, dxDateRanges;

type
   TFrmColecao = class(TForm)
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
    dbEditPesquisar: TIDBEditDialog;
    pgCtrlColecao: TPageControl;
    TabRegistros: TTabSheet;
    TabEditar: TTabSheet;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    EditNome: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    rgStatus: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    cxGrid: TcxGrid;
    cxGridDados: TcxGridDBTableView;
    cxGridDadosCodigo: TcxGridDBColumn;
    cxGridDadosNome: TcxGridDBColumn;
    cxGridDadosStatus: TcxGridDBColumn;
    cxGridNivel: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDadosDblClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmColecao: TFrmColecao;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global,
   FBaseDados_PCP;

{$R *.dfm}

procedure TFrmColecao.FormCreate(Sender: TObject);
begin
   pgCtrlColecao.ActivePageIndex:=0;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_colecao;
//   FrmPrincipal.Mnu_PCP_Colecao.Enabled := False;
   BaseDados_PCP.db_colecao.Open;
end;

procedure TFrmColecao.cxGridDadosDblClick(Sender: TObject);
begin
   pgCtrlColecao.ActivePageIndex:=1;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   FrmFrameBotoes1.SpbEditarClick(Sender);
   EditNOME.SetFocus;
end;

procedure TFrmColecao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.Mnu_PCP_Colecao.Enabled := True;
   BaseDados_PCP.db_colecao.Close;

   FreeAndNil(FrmColecao);
end;

procedure TFrmColecao.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   pgCtrlColecao.ActivePageIndex:=1;
   EditNOME.SetFocus;

end;

procedure TFrmColecao.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmColecao.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   pgCtrlColecao.ActivePageIndex:=0;
end;

procedure TFrmColecao.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   pgCtrlColecao.ActivePageIndex:=0;
end;

procedure TFrmColecao.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
end;

procedure TFrmColecao.FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmColecao.FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmColecao.FrmFrameBotoes1SpbProximoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmColecao.FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

procedure TFrmColecao.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      BaseDados_PCP.db_colecao.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmColecao.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmColecao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
      Close;

end;

end.
