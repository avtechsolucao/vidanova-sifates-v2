{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}


Unit FTabelaNCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.DBCtrls, cxClasses,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Mask,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, dxDateRanges;

type
  TFrmTabelaNCM = class(TFrmCrudSimples)
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    cxGridDadosColumn1: TcxGridDBColumn;
    IDBEditDialog1: TIDBEditDialog;
    EditNomeSegmento: TEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure tabDetalheShow(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabelaNCM: TFrmTabelaNCM;

implementation

{$R *.dfm}

procedure TFrmTabelaNCM.FormCreate(Sender: TObject);
begin
  inherited;
  ValidarCampoNome :=False;

end;

procedure TFrmTabelaNCM.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  inherited;

  if (EditCodigo.Visible) and (EditCodigo.Enabled) then
    EditCodigo.SetFocus;

end;

procedure TFrmTabelaNCM.tabDetalheShow(Sender: TObject);
begin
  inherited;

  if (EditCodigo.Visible) and (EditCodigo.Enabled) then
    EditCodigo.SetFocus;

end;

end.
