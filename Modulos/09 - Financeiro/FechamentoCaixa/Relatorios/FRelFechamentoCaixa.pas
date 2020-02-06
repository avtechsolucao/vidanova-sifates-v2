{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DB,
     FrmRelatorios, 
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra;

type
  TFrmRelFechamentoCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSair: TBitBtn;
    Btn_Imprimir: TBitBtn;
    GrpPlanoContas: TGroupBox;
    chkPlanos: TCheckBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFim: TMaskEdit;
    RadioMovimentacao: TRadioGroup;
    RadioStatus: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    chkDepartamento: TCheckBox;
    EditDepartamento: TIDBEditDialog;
    EditDepartamentoNome: TEdit;
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure chkPlanosClick(Sender: TObject);
    procedure MskDataIniExit(Sender: TObject);
    procedure MskDataFimExit(Sender: TObject);
    procedure chkDepartamentoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFechamentoCaixa: TFrmRelFechamentoCaixa;

implementation

uses Biblioteca, Global, FBaseDados,
  FRelDemonstrativoAnalitico, FRelFechamentoCaixaAnalitico;

{$R *.DFM}


procedure TFrmRelFechamentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action :=cafree;
end;


procedure TFrmRelFechamentoCaixa.Btn_ImprimirClick(Sender: TObject);
begin

   FrmRelFechamentoCaixaAnalitico:=TFrmRelFechamentoCaixaAnalitico.create(self);
End;

procedure TFrmRelFechamentoCaixa.chkDepartamentoClick(Sender: TObject);
begin

  if chkDepartamento.Checked=true then
  Begin
    EditDepartamento.Enabled   :=False;
  End
  Else
  Begin
    EditDepartamento.Enabled   :=True;
  End;

end;

procedure TFrmRelFechamentoCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin

  If Key = #27 then
     Close;

end;

procedure TFrmRelFechamentoCaixa.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRelFechamentoCaixa.chkPlanosClick(Sender: TObject);
begin

  if chkPlanos.Checked=true then
  Begin
    DCodPlano.Enabled           :=False;
    EditNomePlanoContas.Enabled :=False;
  End
  Else
  Begin
    DCodPlano.Enabled           :=True;
    EditNomePlanoContas.Enabled :=True;
  End;


end;

procedure TFrmRelFechamentoCaixa.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text:=fncDataValidar(MskDataIni.text);
end;

procedure TFrmRelFechamentoCaixa.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text:=fncDataValidar(MskDataFim.text);

end;

end.
