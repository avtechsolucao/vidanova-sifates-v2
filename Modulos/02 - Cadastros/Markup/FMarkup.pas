{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FMarkup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxClasses, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FFrameBotoes, Vcl.DBCtrls, FFrameBarra, Vcl.StdCtrls,
  Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ExtCtrls,
  Classe.Global, dxDateRanges;

type
  TFrmMarkup = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    db_Markup: TFDQuery;
    db_MarkupCODIGO: TIntegerField;
    db_MarkupMARKUP: TFloatField;
    db_MarkupOUTROSIMPOSTOS: TFloatField;
    db_MarkupICMS: TFloatField;
    db_MarkupIPI: TFloatField;
    db_MarkupPUBLICIDADE: TFloatField;
    db_MarkupINADIMPLENCIA: TFloatField;
    db_MarkupADMINISTRATIVO: TFloatField;
    db_MarkupFINANCEIRO: TFloatField;
    db_MarkupPIS: TFloatField;
    db_MarkupCOFINS: TFloatField;
    db_MarkupIR: TFloatField;
    db_MarkupIMPORTACAO: TFloatField;
    db_MarkupFRETE: TFloatField;
    db_MarkupMARGEMLUCRO: TFloatField;
    ds_Markup: TDataSource;
    db_MarkupEMPRESA: TIntegerField;
    db_MarkupNOME: TStringField;
    pgMarkup: TPageControl;
    TabRegistros: TTabSheet;
    TabEditar: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    EditNome: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Navegador: TDBNavigator;
    FrmFrameBotoes1: TFrmFrameBotoes;
    db_MarkupSTATUS: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    cxGrid: TcxGrid;
    cxGridDados: TcxGridDBTableView;
    cxGridDadosCodigo: TcxGridDBColumn;
    cxGridDadosNome: TcxGridDBColumn;
    cxGridDadosStatus: TcxGridDBColumn;
    cxGridNivel: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_MarkupBeforeOpen(DataSet: TDataSet);
    procedure db_MarkupBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure cxGridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMarkup: TFrmMarkup;

implementation

uses Biblioteca, Global, SQLServer;

{$R *.dfm}

procedure TFrmMarkup.cxGridDadosDblClick(Sender: TObject);
begin
  FrmFrameBotoes1SpbEditarClick(Sender);
end;

procedure TFrmMarkup.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmMarkup.db_MarkupBeforeOpen(DataSet: TDataSet);
begin
   db_Markup.ParamByName('EMPRESA').AsInteger:= FSistema.Empresa;

end;

procedure TFrmMarkup.db_MarkupBeforePost(DataSet: TDataSet);
begin
   db_Markup.FieldByName('EMPRESA').AsInteger:= FSistema.Empresa;
end;

procedure TFrmMarkup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_Markup.close;
   FreeAndNil(FrmMarkup);
end;

procedure TFrmMarkup.FormCreate(Sender: TObject);
begin
   pgMarkup.ActivePageIndex :=0;
   FrmFrameBotoes1.DataSource :=ds_Markup;
   db_Markup.open;
end;

procedure TFrmMarkup.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  pgMarkup.ActivePageIndex :=1;
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditNome.SetFocus;
end;

procedure TFrmMarkup.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);
  pgMarkup.ActivePageIndex :=0;

end;

procedure TFrmMarkup.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  pgMarkup.ActivePageIndex :=1;
  FrmFrameBotoes1.SpbEditarClick(Sender);
  EditNome.SetFocus;


end;

procedure TFrmMarkup.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmMarkup.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmMarkup.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  pgMarkup.ActivePageIndex :=0;

end;

end.
