{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

Unit FBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FCrudSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Buttons, cxClasses,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBotoes,
  FFrameBarra, dxDateRanges;

type
  TFrmBancos = class(TFrmCrudSimples)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExemploBanco;
  public
    { Public declarations }
  end;

var
  FrmBancos: TFrmBancos;

implementation

{$R *.dfm}

uses Biblioteca;

procedure TFrmBancos.ExemploBanco;
begin
   informar(' Nº do Banco se refere a identificação do banco. ' + #13 + #10
     + #13 + #10 + 'Exemplos: ' + #13 + #10 + '001 - BANCO DO BRASIL  ' + #13 +
     #10 + '341 - ITAU   ' + #13 + #10 + 'e assim por diante...  ');
end;

procedure TFrmBancos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
  inherited;
  EditCodigo.SetFocus;
end;

procedure TFrmBancos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  EditNome.SetFocus;
  if dbTabela.FieldByName('CODIGO').AsInteger<1 then
  begin
    EditCodigo.SetFocus;
    raise Exception.Create('Necessário informar o Nº do Banco.');
  end;
  inherited;
end;

procedure TFrmBancos.SpeedButton1Click(Sender: TObject);
begin
  ExemploBanco;
end;

end.
