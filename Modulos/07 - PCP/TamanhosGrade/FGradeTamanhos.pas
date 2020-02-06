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

unit FGradeTamanhos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, cxClasses, Vcl.StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, Vcl.ExtCtrls, Vcl.DBCtrls, FFrameBarra,
  FFrameBotoes, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.ComCtrls, dxDateRanges;

type
   TFrmGradeTamanhos = class(TForm)
      GroupBox1: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      Navegador: TDBNavigator;
    dbEditPesquisar: TIDBEditDialog;
    dbEditPesquisarTamanho: TIDBEditDialog;
    pgCtrlGradeTamanhos: TPageControl;
    TabRegistros: TTabSheet;
    TabEditar: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    EditNome: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
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
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure DBGrid1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDadosDblClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmGradeTamanhos: TFrmGradeTamanhos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmGradeTamanhos.FormCreate(Sender: TObject);
begin

//   FrmPrincipal.Mnu_PCP_GradeTamanho.Enabled := False;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_Grade;
   BaseDados_PCP.db_Grade.Open;
   BaseDados_PCP.db_GradeLista.Open;
   pgCtrlGradeTamanhos.ActivePageIndex :=0;

   OrdemGradeTamanho := 0;

end;

procedure TFrmGradeTamanhos.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#27 then
     close;

end;

procedure TFrmGradeTamanhos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   FrmPrincipal.Mnu_PCP_GradeTamanho.Enabled := True;
   BaseDados_PCP.db_Grade.Close;
   BaseDados_PCP.db_GradeLista.Close;
   FreeAndNil(FrmGradeTamanhos);
end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   pgCtrlGradeTamanhos.ActivePageIndex :=1;
   EditNome.SetFocus;

end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   pgCtrlGradeTamanhos.ActivePageIndex :=0;
end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   pgCtrlGradeTamanhos.ActivePageIndex :=0;
end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmGradeTamanhos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      BaseDados_PCP.db_Grade.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmGradeTamanhos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmGradeTamanhos.cxGridDadosDblClick(Sender: TObject);
begin
  pgCtrlGradeTamanhos.ActivePageIndex :=1;
  EditNome.SetFocus;
end;

procedure TFrmGradeTamanhos.DBGrid1Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmGradeTamanhos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_F8 then
   begin
     if dbEditPesquisarTamanho.Execute then
     begin
        BaseDados_PCP.db_GradeLista.Edit;
        BaseDados_PCP.db_GradeLista.FieldByName('ID_TAMANHO').AsInteger :=           dbEditPesquisarTamanho.ResultFieldAsInteger('CODIGO');
        BaseDados_PCP.db_GradeLista.FieldByName('TAMANHO').AsString :=               dbEditPesquisarTamanho.ResultFieldAsString('TAMANHO');
     End;
   end;
end;

end.
