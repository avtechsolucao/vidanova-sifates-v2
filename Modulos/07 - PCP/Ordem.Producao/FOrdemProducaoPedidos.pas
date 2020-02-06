{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Com�rcio em geral e industrias (vestu�rio)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Voc� n�o pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

unit FOrdemProducaoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FFrameBarra, StdCtrls, Buttons, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Mask;

type
  TFrmOrdemProducaoPedidos = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    BtnGerar: TBitBtn;
    BtnCancelar: TBitBtn;
    pnTitulo: TPanel;
    Panel2: TPanel;
    rgpSelecionar: TRadioGroup;
    rgpPrevisao: TGroupBox;
    EditPrevisao: TMaskEdit;
    dbEditLote: TIDBEditDialog;
    Label1: TLabel;
    EditLoteProducao: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure rgpSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MskDataFimChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdemProducaoPedidos: TFrmOrdemProducaoPedidos;

implementation

uses FPrincipal, Global, Biblioteca, FOrdemProducao, SQLServer;

{$R *.dfm}

procedure TFrmOrdemProducaoPedidos.BtnGerarClick(Sender: TObject);
begin
   if rgpSelecionar.ItemIndex<0 then
   begin
      avisosistema('Selecione como deve Gerar produ��o');
      Exit;
   end;
   lblnCancelar :=False;

   nLoteProducao :=StrToIntDef(dbEditLote.text,0);
   FrmOrdemProducao.FDataPrevisao := StrToDate(EditPrevisao.Text);

  //   if rgpSelecionar.ItemIndex=1 then
  //   begin
  //      if fncChecarPeriodoPedidosProduzir( dtDataIni,
  //                                       dtDataFim,
  //                                       StrToIntDef(strCliente,0),
  //                                       StrToIntDef(strVendedor,0)
  //                                      )=False then
  //      Begin
  //         Informar('N�o h� Pedidos de Vendas disponivel para produ��o dentro no periodo (ou cliente/vendedor) informado.');
  //         Abort;
  //      End;
  //   end;

   Close;

end;

procedure TFrmOrdemProducaoPedidos.BtnCancelarClick(Sender: TObject);
begin
   lblnCancelar :=True;
   Close;
end;

procedure TFrmOrdemProducaoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmOrdemProducaoPedidos.FormCreate(Sender: TObject);
begin
   // Se clicar no bot�o cancelar ou clicar no X do formulario
   lblnCancelar :=True;

   EditPrevisao.Text := DateToStr(Date+30);

end;

procedure TFrmOrdemProducaoPedidos.FormShow(Sender: TObject);
begin
   rgpSelecionarClick(Sender);
end;

procedure TFrmOrdemProducaoPedidos.MskDataFimChange(Sender: TObject);
begin
   dtDataIni          := Date;
   dtDataFim          := StrToDateTimeDef(EditPrevisao.text,date+20);
   EditPrevisao.Text  := DateToStr(dtDataFim);
end;

procedure TFrmOrdemProducaoPedidos.rgpSelecionarClick(Sender: TObject);
begin
   case rgpSelecionar.ItemIndex of
      0,-1: Begin
             strNatureza                  :='MANUAL';
             EditPrevisao.SetFocus;
           End;
   end;
end;

end.
