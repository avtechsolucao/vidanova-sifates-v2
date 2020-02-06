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

unit FFaseProducaoPerda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,  FireDAC.Comp.Client, DBCtrls,
  ComCtrls, jpeg, Classe.Global;

type
  TFrmFaseProducaoPerda = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    db_Perda: TFDQuery;
    ProgressBar1: TProgressBar;
    ds_Perda: TDataSource;
    gbxFaseSeguinte: TGroupBox;
    Label2: TLabel;
    EditData: TDBEdit;
    dbEditPesquisarFasesDestino: TIDBEditDialog;
    EditNomeFaseProxima: TEdit;
    EditTerceirizado: TIDBEditDialog;
    EditNomeTerceirizado: TEdit;
    Edit1: TEdit;
    EditDefeito: TIDBEditDialog;
    Label5: TLabel;
    LabeledEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    lblCor: TLabel;
    lblTamanho: TLabel;
    Label4: TLabel;
    db_PerdaEMPRESA: TIntegerField;
    db_PerdaCODIGO: TIntegerField;
    db_PerdaAPROVADO: TStringField;
    db_PerdaDATA: TSQLTimeStampField;
    db_PerdaREFERENCIA: TStringField;
    db_PerdaDATAREGISTRO: TSQLTimeStampField;
    db_PerdaCOR_ID: TIntegerField;
    db_PerdaCOR: TStringField;
    db_PerdaTAMANHO_ID: TIntegerField;
    db_PerdaTAMANHO: TStringField;
    db_PerdaORDEM_GRADE: TStringField;
    db_PerdaQTDEPERDAS: TIntegerField;
    db_PerdaTERCEIRIZADO: TIntegerField;
    db_PerdaFASE: TIntegerField;
    db_PerdaCELULA: TIntegerField;
    db_PerdaMAQUINA: TIntegerField;
    db_PerdaOPERADOR: TIntegerField;
    db_PerdaPROCESSO: TIntegerField;
    db_PerdaTURNO: TIntegerField;
    db_PerdaQUALIDADE: TIntegerField;
    db_PerdaDEFEITO: TIntegerField;
    db_PerdaOBSERVACAO: TStringField;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_PerdaBeforeOpen(DataSet: TDataSet);
    procedure db_PerdaBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure db_PerdaQTDEPERDASChange(Sender: TField);
  private
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoPerda: TFrmFaseProducaoPerda;

  lbPermiteDeletar  : Boolean;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoPerda.BtnCancelarClick(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   close;

end;

procedure TFrmFaseProducaoPerda.BtnOkClick(Sender: TObject);
begin
   prcSalvar;

   if pergunta('Deseja realmente concluir a Transferencia de fase?')=false then
      exit;


   lbPermiteDeletar :=False;
   nQuantidadeDigitada :=db_Perda.FieldByName('QTDEPERDAS').AsInteger;

   AvisoSistema('Transferencia concluida com sucesso');

   close;

end;

procedure TFrmFaseProducaoPerda.db_PerdaBeforeOpen(
  DataSet: TDataSet);
begin
   db_Perda.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_Perda.ParamByName('CODIGO').AsInteger  :=nOrdemProducao;
end;

procedure TFrmFaseProducaoPerda.db_PerdaBeforePost(
  DataSet: TDataSet);
begin
   db_Perda.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Perda.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Perda.FieldByName('APROVADO').AsString   :=  prcOrdemProducao_retCampo(nOrdemProducao,'APROVADO');
   db_Perda.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducao_retCampo(nOrdemProducao,'DATA') );
end;

procedure TFrmFaseProducaoPerda.db_PerdaQTDEPERDASChange(Sender: TField);
begin
   if (db_Perda.FieldByName('QTDEPERDAS').AsInteger > FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger) then
   begin
      Erro('A quantidade que voce esta tentando informar como perda � maior que a quantidade disponivel.');
      db_Perda.Cancel;
      Abort;
   end;

end;

procedure TFrmFaseProducaoPerda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  {Clicando no bot�o "Gravar..." a variavel lbPermiteDeletar � configurada
   para False (do qual nao permitir� deletar o registro ao sair do formulario)
   Mas se clicar em Cancelar ou no X do formulario, significa que o usu�rio
  desistou e deseja cancelar/deletar o que fez.}

  if lbPermiteDeletar then
  begin
     nQuantidadeDigitada :=0;

     if not db_Perda.IsEmpty then
         db_Perda.Delete;
  end;

  db_Perda.Close;


  Action :=Cafree;

end;

procedure TFrmFaseProducaoPerda.FormCreate(Sender: TObject);
begin
   lblCor.Caption       := '['+UpperCase( FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString)+']';
   lblTamanho.Caption   := '['+UpperCase(  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString)+']';
   db_Perda.Open;
end;

procedure TFrmFaseProducaoPerda.FormShow(Sender: TObject);
begin

   lbPermiteDeletar :=True;

   if not db_Perda.Active then
      db_Perda.Open;

   db_Perda.Append;
   db_Perda.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Perda.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Perda.FieldByName('APROVADO').AsString   :=  prcOrdemProducao_retCampo(nOrdemProducao,'APROVADO');
   db_Perda.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducao_retCampo(nOrdemProducao,'DATA') );
   db_Perda.FieldByName('FASE').AsInteger      :=  nFaseOrigem;
   db_Perda.FieldByName('REFERENCIA').AsString :=  strReferencia;

   db_Perda.FieldByName('COR_ID').AsInteger     :=  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger;
   db_Perda.FieldByName('TAMANHO_ID').AsInteger :=  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger;

   db_Perda.FieldByName('COR').AsString        :=   FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   db_Perda.FieldByName('TAMANHO').AsString    :=   FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;
   db_Perda.FieldByName('DATAREGISTRO').AsDateTime  :=  Date;

   db_Perda.Post;

   EditData.SetFocus;

end;

procedure TFrmFaseProducaoPerda.prcSalvar;
begin
   if (db_Perda.State in [dsedit,dsinsert]) then
      db_Perda.Post;
end;



end.
