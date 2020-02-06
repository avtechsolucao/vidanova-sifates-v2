{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEnderecoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, Data.DB,  
   Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.ComCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmEnderecoCliente = class(TFrmCrudSimples)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    pnNomeCliente: TPanel;
    EditCEP: TIDBEditDialog;
    EditIDTipoEndereco: TIDBEditDialog;
    EditTipoEndereco: TEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EditCEPClose(Sender: TObject);
    procedure EditCEPValueValidate(Sender: TObject; value: string;
      var IsValid: Boolean);
    procedure EditCEPChange(Sender: TObject);
    procedure dbTabelaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FIDCliente    : Integer;
    FNomeCliente  : String;
    FCEPChange    : Boolean;
    procedure VerificarEndereco(aValue : String);
  public
    { Public declarations }
    property IDCliente   : Integer  read FIDCliente   Write FIDCliente;
    property NomeCliente : String   read FNomeCliente Write FNomeCliente;
  end;

var
  FrmEnderecoCliente: TFrmEnderecoCliente;

implementation

{$R *.dfm}

uses SQLServer, Biblioteca, Classe.CEP, Classe.Cliente;

procedure TFrmEnderecoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  FCEPChange :=False;
end;

procedure TFrmEnderecoCliente.dbTabelaBeforePost(DataSet: TDataSet);
begin
  dbTabela.FieldByName('IDCLIENTE').AsInteger :=FIDCliente;
end;

procedure TFrmEnderecoCliente.EditCEPChange(Sender: TObject);
begin
  FCEPChange :=True;
end;

procedure TFrmEnderecoCliente.EditCEPClose(Sender: TObject);
begin
  inherited;
  if not EditCEP.ResultFieldIsNull('CEP') then
    VerificarEndereco(EditCEP.ResultFieldAsString('CEP'));
end;

procedure TFrmEnderecoCliente.EditCEPValueValidate(Sender: TObject;
  value: string; var IsValid: Boolean);
begin
  if FCEPChange then
    VerificarEndereco(Trim(EditCEP.Text));
end;


procedure TFrmEnderecoCliente.VerificarEndereco(aValue : String);
begin
  TEndereco.SetCEPEndereco(dbTabela,aValue);
  FCEPChange :=False;
end;

end.
