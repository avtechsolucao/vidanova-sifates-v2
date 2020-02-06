{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

Unit FRegioes;

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
  TFrmRegioes = class(TFrmCrudSimples)
    procedure FormClose(Sender: TObject; var Action: TCloseAction); //Override;
    procedure GroupBox2Enter(Sender: TObject);
  private
    procedure SalvarRegistroMestre;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegioes: TFrmRegioes;

implementation

{$R *.dfm}

uses Biblioteca;

procedure TFrmRegioes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dbTabela.Close;
end;

procedure TFrmRegioes.GroupBox2Enter(Sender: TObject);
begin
  SalvarRegistroMestre;
end;

procedure TFrmRegioes.SalvarRegistroMestre;
begin
  if Trim(EditNome.Text)='' then
  begin
    Mensagem('Campo "'+lblNome.Caption+'" é obrigatório.');
    exit;
  end;

end;

end.
