{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxClasses, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, dxDateRanges;

type
  TFrmConta = class(TFrmCrudSimples)
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    ContaProcurar: TIDBEditDialog;
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure dbTabelaNewRecord(DataSet: TDataSet);
    procedure dbTabelaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConta: TFrmConta;

implementation

{$R *.dfm}

procedure TFrmConta.dbTabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  dbTabela.FieldByName('DATAALTERACAO').AsDateTime := Now;
end;

procedure TFrmConta.dbTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  dbTabela.FieldByName('DATA').AsDateTime          := Now;
  dbTabela.FieldByName('DATAALTERACAO').AsDateTime := Now;
end;

procedure TFrmConta.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if ContaProcurar.Execute then
   begin
      dbTabela.Cancel;
      dbTabela.Locate('CODIGO', ContaProcurar.ResultFieldAsInteger('CODIGO'), []);
      EditNOME.SetFocus;
   end;
end;

end.
