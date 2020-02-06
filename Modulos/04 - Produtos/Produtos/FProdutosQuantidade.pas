{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **
***********************************************************************************}

unit FProdutosQuantidade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, FFrameBotoes, Grids, DBGrids, DB,
    ComCtrls, StdCtrls, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmProdutosQuantidade = class(TForm)
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      db_referencias: TFDQuery;
      DS_Referencia: TDataSource;
    db_referenciasEMPRESA: TIntegerField;
    db_referenciasCODIGO: TIntegerField;
    db_referenciasREFERENCIA: TStringField;
    db_referenciasGRUPO: TIntegerField;
    db_referenciasSUBGRUPO: TIntegerField;
    db_referenciasTIPO_PRODUTO: TStringField;
    db_referenciasGRIFE: TIntegerField;
    db_referenciasCOLECAO: TIntegerField;
    db_referenciasFAIXA_ETARIA: TIntegerField;
    db_referenciasESTILISTA: TIntegerField;
    db_referenciasETIQUETA: TIntegerField;
    db_referenciasGRADE: TIntegerField;
    db_referenciasEMBALAGEM: TIntegerField;
    db_referenciasCOMPOSICAO: TIntegerField;
    db_referenciasGENERO: TIntegerField;
    db_referenciasNCM: TStringField;
    db_referenciasDESCRICAO: TStringField;
    db_referenciasCLASSIFICAO_FISCAL: TStringField;
    db_referenciasSITUACAO_TRIBUTARIA: TStringField;
    db_referenciasDATA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField;
    db_referenciasDT_VALIDADE: TSQLTimeStampField;
    db_referenciasGERAR_CODBARRA: TStringField;
    db_referenciasCOMPOSICAO_DESCRICAO: TStringField;
    db_referenciasCODIGO_BARRA: TStringField;
    db_referenciasCODIGO_FABRICANTE: TStringField;
    db_referenciasUNIDADE: TStringField;
    db_referenciasOZ: TFloatField;
    db_referenciasPESO: TFloatField;
    db_referenciasPESO_LIQUIDO: TFloatField;
    db_referenciasPESO_M2: TFloatField;
    db_referenciasQTDE_TECIDOS: TFloatField;
    db_referenciasQTDE_OPCOES: TFloatField;
    db_referenciasPRAZOENTREGA: TIntegerField;
    db_referenciasLOTE: TStringField;
    db_referenciasNUM_SERIE: TStringField;
    db_referenciasCOMISSAO_VAREJO: TFloatField;
    db_referenciasCOMISSAO_ATACADO: TFloatField;
    db_referenciasCOMISSAO_REPRESENTANTE: TFloatField;
    db_referenciasREGISTROINPI: TStringField;
    db_referenciasVOLUME: TFloatField;
    db_referenciasPROMOCAO: TStringField;
    db_referenciasMARCA: TStringField;
    db_referenciasLOCALIZACAO: TStringField;
    db_referenciasATIVO: TStringField;
    db_referenciasINSTRUCOES: TStringField;
    db_referenciasTOTAL_RESERVA: TFloatField;
    db_referenciasTOTAL_ORDEMPRODUCAO: TFloatField;
    db_referenciasTOTAL_QTDEMATPRIMA: TFloatField;
    db_referenciasTOTAL_VLRMATPRIMA: TFloatField;
    db_referenciasTOTAL_PROCESSO_TEMPO: TFloatField;
    db_referenciasTOTAL_PROCESSO_CUSTOS: TFloatField;
    db_referenciasTOTAL_CUSTOS_PERCENTUAL: TFloatField;
    db_referenciasTOTAL_CUSTOS_VALOR: TFloatField;
    db_referenciasSALDO_IMPLANTACAO: TFloatField;
    db_referenciasESTOQUEMINIMO: TFloatField;
    db_referenciasESTOQUEMAXIMO: TFloatField;
    db_referenciasESTOQUESALDO: TFloatField;
    db_referenciasMG_LUCRO: TFloatField;
    db_referenciasIPI: TFloatField;
    db_referenciasICMS: TFloatField;
    db_referenciasPIS: TFloatField;
    db_referenciasCOFINS: TFloatField;
    db_referenciasPUBLICIDADE: TFloatField;
    db_referenciasINADIMPLENCIA: TFloatField;
    db_referenciasADMINISTRATIVO: TFloatField;
    db_referenciasIMPORTACAO: TFloatField;
    db_referenciasPERC_FRETE: TFloatField;
    db_referenciasFINANCEIRO: TFloatField;
    db_referenciasIMPOSTOS_OUTROS: TFloatField;
    db_referenciasMARKUP: TFloatField;
    db_referenciasIR: TFloatField;
    db_referenciasPRC_CUSTOBRUTO: TFloatField;
    db_referenciasPRC_CUSTOPRODUCAO: TFloatField;
    db_referenciasPRC_CUSTO: TFloatField;
    db_referenciasPRC_VENDA: TFloatField;
    db_referenciasLUCRO_LIQUIDO: TFloatField;
    db_referenciasDETALHES: TStringField;
    db_referenciasPRODUCAO_TEMPO: TFloatField;
    db_referenciasPRODUCAO_CUSTOS: TFloatField;
    db_referenciasCOR: TStringField;
    db_referenciasTAMANHO: TStringField;
    db_referenciasFORNECEDOR: TIntegerField;
    db_ProdutosGrade: TFDQuery;
    ProgressBar1: TProgressBar;
    EditPesquisa: TLabeledEdit;
    BitBtn1: TBitBtn;
    rdg_Produtos: TRadioGroup;
    dbGrid_Produtos: TDBGrid;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_referenciasBeforeDelete(DataSet: TDataSet);
      procedure db_referenciasNewRecord(DataSet: TDataSet);
    procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure rdg_ProdutosClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosQuantidade: TFrmProdutosQuantidade;
   bAlterouGrade : Boolean;

implementation

uses FPrincipal, Biblioteca, Classe.Global, Global,
    FProdutosQuantidadeGrade, FProdutosQuantidadeGradeEditar,
  FProdutosQuantidadeCodigoBarras, SQLServer;

{$R *.dfm}

procedure TFrmProdutosQuantidade.BitBtn1Click(Sender: TObject);
begin
   {
    db_referencias.Close;

   if EditPesquisa.Text='' then
      EditPesquisa.Text:='%';

   //db_referencias.SQL.Clear;
   //db_referencias.SQL.Add(ScriptSQL);
   db_referencias.ParamByName('Procurar').AsString := '%' + EditPesquisa.Text + '%';
   db_referencias.Open;

   dbGrid_Produtos.SetFocus;
   }

end;

procedure TFrmProdutosQuantidade.dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   // ativado somente se o cursor estive na coluna QUANTIDADE
   IF Key = VK_F2 Then
   begin
     if (FParametros.Quantificar='NORMAL') then
       exit;

      bAlterouGrade := False;

      // if dbGrid_Produtos.SelectedField=db_referenciasQTDE then
      if (dbGrid_Produtos.SelectedField = db_referenciasESTOQUESALDO) and
        not empty(db_referencias.FieldByName('REFERENCIA').AsString) then
      Begin
         strProduto :=db_referencias.FieldByName('REFERENCIA').AsString;

        if ValidarReferenciaCorTamanho(strProduto) Then
        begin
            FrmProdutosQuantidadeGradeEditar := TFrmProdutosQuantidadeGradeEditar.Create(self);
            FrmProdutosQuantidadeGradeEditar.ShowModal;
        end;
         strProduto :='';
      End;

   End;
   bAlterouGrade := False;

end;



procedure TFrmProdutosQuantidade.db_referenciasBeforeDelete(DataSet: TDataSet);
begin
   abort;
end;

procedure TFrmProdutosQuantidade.db_referenciasNewRecord(DataSet: TDataSet);
begin
   abort;
end;

procedure TFrmProdutosQuantidade.EditPesquisaChange(Sender: TObject);
var
 sstring : string;
begin
    db_referencias.Close;


   sstring :='';
   sstring :=EditPesquisa.Text;

   if sstring='' then
      sstring:='%';

   db_referencias.ParamByName('PROCURAR').AsString := '%' + sstring + '%';
   db_referencias.Open;

end;

procedure TFrmProdutosQuantidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_referencias.close;
   Action := Cafree;

end;

procedure TFrmProdutosQuantidade.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Referencia;
   db_referencias.close;
   db_referencias.Open;
   EditPesquisaChange(Sender);
   rdg_ProdutosClick(Sender);

   { TODO : Dar aten��o a este codigo comentado. }
   //if (fncUsuario_retCampo(nUsuario,'ESTOQUEINVENTARIO')='N') Then
   //   db_referencias.ReadOnly :=True;

end;

procedure TFrmProdutosQuantidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F9 Then
   begin
      if (fncUsuario_retCampo(nUsuario,'ESTOQUEINVENTARIO')='N') Then
      begin
         AvisoSistemaErro('Voc� n�o possui permiss�o para movimentar atualizar estoque via c�digo de barras');
         Abort;
      end;



      // vincular tecidos na referencia
      If (db_referencias.State in [dsedit, dsinsert]) then
      Begin
         db_referencias.Post;
      End;

      FrmProdutosQuantidadeCodigoBarras := TFrmProdutosQuantidadeCodigoBarras.Create(self);
      FrmProdutosQuantidadeCodigoBarras.ShowModal;

      db_referencias.Refresh;

   end;


   if Key = vk_escape then
      close;
end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbExcluirClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmProdutosQuantidade.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmProdutosQuantidade.rdg_ProdutosClick(Sender: TObject);
begin

   db_referencias.close;

   if rdg_Produtos.ItemIndex=0 then
      db_referencias.ParamByName('TIPO').AsString := '%';

   if rdg_Produtos.ItemIndex=1 then
      db_referencias.ParamByName('TIPO').AsString := 'ACA';

   if rdg_Produtos.ItemIndex=2 then
      db_referencias.ParamByName('TIPO').AsString := 'MAT';

   if rdg_Produtos.ItemIndex=3 then
      db_referencias.ParamByName('TIPO').AsString := 'TCD';

   db_referencias.open;
   EditPesquisaChange(Sender);

end;

end.