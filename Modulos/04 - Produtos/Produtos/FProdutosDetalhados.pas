{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}


unit FProdutosDetalhados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Vcl.ExtDlgs,
  FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra, FFrameBotoes,
  GradeProduto;

type
   TFrmProdutosDetalhados = class(TForm)
      Panel1: TPanel;
      DS_Referencia: TDataSource;
      CB_Copiar: TCheckBox;
      db_ChecarExistencia: TFDQuery;
      db_referencias: TFDQuery;
      db_SituacaoTributaria: TFDQuery;
      ds_SituacaoTributaria: TDataSource;
      db_CountEstoque: TFDQuery;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      db_TipoProduto: TFDQuery;
      DS_TipoProduto: TDataSource;
      OpenPictureDialog1: TOpenPictureDialog;
      ds_referencia_Fotos: TDataSource;
      db_referencia_Fotos: TFDQuery;
      db_referenciasCODIGO: TIntegerField;
      db_referenciasEMPRESA: TIntegerField;
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
      db_referenciasSITUACAO_TRIBUTARIA: TStringField;
      db_referenciasGERAR_CODBARRA: TStringField;
      db_referenciasCOMPOSICAO_DESCRICAO: TStringField;
      db_referenciasCODIGO_BARRA: TStringField;
      db_referenciasCODIGO_FABRICANTE: TStringField;
      db_referenciasUNIDADE: TStringField;
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
      db_referenciasPRC_CUSTO: TFloatField;
      db_referenciasPRC_VENDA: TFloatField;
      db_referenciasLUCRO_LIQUIDO: TFloatField;
      db_referenciasDETALHES: TStringField;
      db_referenciasPRODUCAO_TEMPO: TFloatField;
      db_referenciasPRODUCAO_CUSTOS: TFloatField;
      db_referenciasCOR: TStringField;
      db_referenciasTAMANHO: TStringField;
      db_referenciasFORNECEDOR: TIntegerField;
    db_referenciasOZ: TFloatField;
    db_referenciasDESCRICAOREDUZIDA: TStringField;
    db_referenciasPRC_CUSTOPRODUCAO: TFloatField;
    db_referenciasREFERENCIAREDUZIDA: TStringField;
    dbProcurarFichaTecnica: TIDBEditDialog;
    db_referenciasFASE: TIntegerField;
    db_referenciasMARKUPID: TIntegerField;
    db_referenciasCFOPDENTROESTADO: TIntegerField;
    db_referenciasCFOPFORAESTADO: TIntegerField;
    db_referenciasDATA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_COMPRA: TSQLTimeStampField;
    db_referenciasDT_ULTIMA_VENDA: TSQLTimeStampField;
    db_referenciasDT_VALIDADE: TSQLTimeStampField;
    db_referenciasHORAS: TTimeField;
    db_referenciasGRADEUTILIZAR: TStringField;
    db_GradeLista: TFDQuery;
    db_GradeListaCODIGO: TIntegerField;
    db_GradeListaID_TAMANHO: TIntegerField;
    db_GradeListaORDEM: TStringField;
    db_GradeListaDESCRICAO: TStringField;
    db_GradeListaNometamanho: TStringField;
    db_GradeListaTAMANHO: TStringField;
    ds_GradeLista: TDataSource;
    dbEditPesquisarCores: TIDBEditDialog;
    ds_Cores_Modelos: TDataSource;
    db_Cores_Modelos: TFDQuery;
    db_Cores_ModelosCODIGO: TIntegerField;
    db_Cores_ModelosID_COR: TIntegerField;
    db_Cores_ModelosNOME: TStringField;
    db_referenciasCICLO: TStringField;
    dbOrigem: TFDQuery;
    dsOrigem: TDataSource;
    dbFabricacao: TFDQuery;
    dsbFabricacao: TDataSource;
    dbSituacao: TFDQuery;
    dsSituacao: TDataSource;
    dsSeguimento: TDataSource;
    dbSeguimento: TFDQuery;
    db_referenciasORIGEM: TIntegerField;
    db_referenciasFABRICACAO: TIntegerField;
    db_referenciasSITUACAO: TIntegerField;
    db_referenciasSEGUIMENTO: TIntegerField;
    dbLinha: TFDQuery;
    dsLinha: TDataSource;
    db_referenciasLINHA: TIntegerField;
    db_referenciasRESTRICAO_VENDEDORTIPO: TStringField;
    db_referenciasRESTRICAO_VENDATIPO: TStringField;
    db_referenciasCEST: TStringField;
    dsANP: TDataSource;
    QryANP: TFDQuery;
    db_referenciasANP: TStringField;
    PageControl1: TPageControl;
    Tab0: TTabSheet;
    Panel2: TPanel;
    Label12: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    EditTipProduto: TDBLookupComboBox;
    EditCodigo: TDBEdit;
    EditData: TDBEdit;
    DBEditDescricao: TDBEdit;
    EditUnidade: TDBEdit;
    DBEdit_CodigoBarra: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    GroupBox3: TGroupBox;
    FotoReferencia: TImage;
    Panel4: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel5: TPanel;
    pgDetalhes: TPageControl;
    TabFiscal: TTabSheet;
    gpbImpostos: TGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label24: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label37: TLabel;
    Label28: TLabel;
    DBEdit3: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit15: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    dbEditPesquisar: TIDBEditDialog;
    EditNomeNCM: TEdit;
    EditCFOP: TIDBEditDialog;
    NomeCFOP: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    Edit3: TEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabEstoque: TTabSheet;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    EditQtde: TDBEdit;
    gpGrades: TGroupBox;
    GradeProduto1: TGradeProduto;
    TabPrecos: TTabSheet;
    painelPrecos: TGroupBox;
    Label26: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit_PrcCusto: TDBEdit;
    DBEdit_MLucro: TDBEdit;
    DBEdit_PrcVenda: TDBEdit;
    EditMarkup: TDBEdit;
    TabGrade: TTabSheet;
    TabOutrosDados: TTabSheet;
    GroupBox9: TGroupBox;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit5: TDBEdit;
    EditOZ: TDBEdit;
    GroupBox1: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit2: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox4: TGroupBox;
    Label39: TLabel;
    DBEdit19: TDBEdit;
    grpCabecalho: TGroupBox;
    Label27: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    IDBEditDialog2: TIDBEditDialog;
    EditNomeFornecedor: TEdit;
    EditGrupo: TIDBEditDialog;
    Edit1: TEdit;
    EditSubGrupo: TIDBEditDialog;
    Edit2: TEdit;
    EditGrife: TIDBEditDialog;
    EditNomeGrife: TEdit;
    EditEtiquetas: TIDBEditDialog;
    EditNomeEtiqueta: TEdit;
    EditNomeGenero: TEdit;
    EditGradeTamanhos: TIDBEditDialog;
    EditNomeGrade: TEdit;
    rdCiclo: TDBRadioGroup;
    rdUtilizaGrade: TDBRadioGroup;
    EditColecao: TIDBEditDialog;
    EditNomeColecao: TEdit;
    EditCodigoFabricante: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    EditGenero: TIDBEditDialog;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox16: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox6: TGroupBox;
    GridGradeCores: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    db_referenciasBALANCA: TStringField;
    db_referenciasPROMOCAODESCONTO: TFloatField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure FormShow(Sender: TObject);
      procedure db_referenciasMG_LUCROChange(Sender: TField);

      procedure CalculaCustos;
      procedure db_referenciasPERC_FRETEChange(Sender: TField);
      procedure db_referenciasICMS_ALIQChange(Sender: TField);
      procedure db_referenciasICMS_REDChange(Sender: TField);
      procedure db_referenciasICMS_SUBST_TRIBChange(Sender: TField);
      procedure db_referenciasMARKUPChange(Sender: TField);
      procedure EditCodigoExit(Sender: TObject);
      procedure db_referenciasQTD_TOTALChange(Sender: TField);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure SpeedButton1Click(Sender: TObject);
      procedure db_referenciasAfterPost(DataSet: TDataSet);
      procedure db_referenciasBeforePost(DataSet: TDataSet);
      procedure db_referenciasNewRecord(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure db_referenciasIPIChange(Sender: TField);
      procedure db_referenciasICMSChange(Sender: TField);
      procedure db_referenciasPISChange(Sender: TField);
      procedure db_referenciasPESO_M2Change(Sender: TField);
      procedure db_referenciasPESO_LIQUIDOChange(Sender: TField);
      procedure db_referenciasPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_referenciasDeleteError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_referenciasEditError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
      procedure db_referenciasPRC_CUSTOChange(Sender: TField);
      procedure db_referenciasPRC_VENDAChange(Sender: TField);
      procedure BtnGradesClick(Sender: TObject);
      procedure SpeedButton6Click(Sender: TObject);
      procedure Atualizar_Foto;
      procedure db_referencia_FotosBeforePost(DataSet: TDataSet);
      procedure SpeedButton7Click(Sender: TObject);
    procedure db_referenciasPRC_CUSTOBRUTOChange(Sender: TField);
    procedure db_referenciasAfterScroll(DataSet: TDataSet);
    procedure db_referenciasBeforeOpen(DataSet: TDataSet);
    procedure db_referenciasDESCRICAOChange(Sender: TField);
    procedure db_referenciasESTOQUESALDOChange(Sender: TField);
    procedure EditGradeTamanhosChange(Sender: TObject);
    procedure GridGradeCoresEditButtonClick(Sender: TObject);
    procedure GridGradeCoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridGradeCoresKeyPress(Sender: TObject; var Key: Char);
    procedure rdCicloClick(Sender: TObject);
    procedure rdUtilizaGradeClick(Sender: TObject);
    procedure rdCicloChange(Sender: TObject);
    procedure rdUtilizaGradeChange(Sender: TObject);
    procedure db_Cores_ModelosID_CORChange(Sender: TField);
    procedure db_Cores_ModelosBeforePost(DataSet: TDataSet);
    procedure TabEstoqueShow(Sender: TObject);
    procedure db_referenciasNCMChange(Sender: TField);
    procedure db_referenciasGRUPOChange(Sender: TField);
    procedure db_referenciasSUBGRUPOChange(Sender: TField);

   private
      { Private declarations }
      FCodigo : String;
      nESTOQUESALDO, nPESO_LIQUIDO, nPESO_M2, NPRC_CUSTOBRUTO, nTOTAL: Double;
      nTeste: Double;
    procedure GridQuantidades;
    procedure MontarCodigoReferencia;

   public
      { Public declarations }
   end;

var

   FrmProdutosDetalhados: TFrmProdutosDetalhados;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FBaseDados,
  MovProdutos;

{$R *.dfm}

procedure TFrmProdutosDetalhados.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Referencia;
   db_referencias.close;
   db_referencias.Open;
   db_referencia_Fotos.Open;
   db_SituacaoTributaria.Open;
   db_TipoProduto.Open;
   dbOrigem.Open;
   dbFabricacao.Open;
   dbSituacao.Open;
   dbSeguimento.Open;
   dbLinha.Open;
   QryANP.Open;

   // A=autom�tico (numerico)     /    M=manual (at� 30 caracteres)
   db_cores_Modelos.Open;
   db_GradeLista.Open;
end;

procedure TFrmProdutosDetalhados.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FUsuario.LogUsuario('controle de estoque', 'Finalizou o uso do m�dulo controle de estoque' );

   db_referencias.close;
   db_referencia_Fotos.close;

   db_SituacaoTributaria.close;
   db_TipoProduto.close;

   dbOrigem.close;
   dbFabricacao.close;
   dbSituacao.close;
   dbSeguimento.close;
   dbLinha.close;
   QryANP.close;

   //FreeAndNil(FrmProdutosDetalhados);
   action :=Cafree;

end;

// o processo de editar e gravar atualia varios campos padronizados do estoque
procedure TFrmProdutosDetalhados.FormShow(Sender: TObject);
begin
   if FParametros.Quantificar = 'NORMAL' then
   begin
     grpCabecalho.Height := 125;
     EditCodigo.Enabled  := FParametros.Produto.Codificacao = 'MANUAL';
   end
   else
   begin
     grpCabecalho.Height := 180;
   end;
   FUsuario.LogUsuario('controle de estoque','Acessou o m�dulo controle de estoque');
end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   EditCodigo.Enabled := FParametros.Produto.Codificacao = 'MANUAL';
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   If FParametros.Produto.Codificacao = 'MANUAL' Then
   begin

      Wtexto[3] := ZeroEsquerda(db_referencias.FieldByName('CODIGO').AsString,FParametros.Produto.Produto);

      db_referencias.FieldByName('REFERENCIA').AsString := Wtexto[3];
      db_referencias.ParamByName('REFERENCIA').AsString := Wtexto[3];
      Wtexto[3] := '';

   End;

   if CB_Copiar.Checked then
   begin
      db_referencias.FieldByName('LOCALIZACAO').AsString := Achar[00];
      db_referencias.FieldByName('GRUPO').AsString := Achar[01];
      db_referencias.FieldByName('SUBGRUPO').AsString := Achar[02];
      db_referencias.FieldByName('DESCRICAO').AsString := Achar[03];
      db_referencias.FieldByName('UNIDADE').AsString := Achar[04];
      db_referencias.FieldByName('CODIGO_FABRICANTE').AsString := Achar[06];

   end;
   EditTipProduto.SetFocus;

end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   Atualizar_Foto;
end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   db_referencias.ParamByName('REFERENCIA').Clear;
   Atualizar_Foto;
end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
var
  mReferencia : String;
begin
   mReferencia := '';
   dbProcurarFichaTecnica.SearchQuery.Clear;
   dbProcurarFichaTecnica.SearchQuery.Add(' SELECT * FROM VIEW_REFERENCIAS');
   dbProcurarFichaTecnica.SearchQuery.Add(' WHERE');
   dbProcurarFichaTecnica.SearchQuery.Add(' EMPRESA='+IntToStr(FSistema.Empresa));
   dbProcurarFichaTecnica.SearchQuery.Add(' AND');
   dbProcurarFichaTecnica.SearchQuery.Add(' %WHERE%');
   dbProcurarFichaTecnica.SearchQuery.Add(' ORDER BY DESCRICAO');

   if dbProcurarFichaTecnica.Execute then
   begin
      mReferencia := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
      db_referencias.Close;
      db_referencias.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
      db_referencias.ParamByName('REFERENCIA').AsString := mReferencia;
      db_referencias.open;
      Atualizar_Foto;
   end
   else
     exit;

   if (mReferencia>'') and (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA') then
   begin
     GradeProduto1.Visible := True;
     GradeProduto1.IDEmpresa          :=FSistema.Empresa;
     GradeProduto1.Produto.Referencia :=mReferencia;
     GradeProduto1.CriarEdits;
   end
   else
   begin
     GradeProduto1.GradeLimpar;
     GradeProduto1.Visible := False;
   end;


   //GridQuantidades;

end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);
end;

procedure TFrmProdutosDetalhados.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  if not (db_referencias.state in [dsEdit,dsInsert]) then
     exit;
  if Trim(db_referencias.FieldByname('REFERENCIA').AsString)=''  Then
  begin
      if FParametros.Produto.Codificacao<>'AUTO' then
      begin
        TratarErros('Informe o campo C�digo (Refer�ncia).');
        if EditCodigo.Enabled then
           EditCodigo.SetFocus;
        Abort;
      end;
  end;
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  Atualizar_Foto;

  db_referencias.Edit;
  MontarCodigoReferencia(); // For�ar montagem correta dos codigos
  db_referencias.Post;

   //----------------------------------------------------------------------
   // Criar grade produtos
   //----------------------------------------------------------------------
   if (Trim(db_referencias.FieldByname('REFERENCIA').AsString)>'') and (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA') then
   begin
     try
         GradeProduto1.Visible := true;
         GradeProduto1.IDEmpresa          := FSistema.Empresa;
         GradeProduto1.Produto.IDProduto  := db_referencias.FieldByName('CODIGO').AsInteger;
         GradeProduto1.Produto.Referencia := db_referencias.FieldByname('REFERENCIA').AsString;
         GradeProduto1.CriarEdits;
         if GradeProduto1.GetTotalQuantidade<1 then
         begin
           GradeProduto1.GradeGravar;
         end;
     finally
       GradeProduto1.Visible := False;
     end;
   end;


end;

procedure TFrmProdutosDetalhados.GridGradeCoresEditButtonClick(Sender: TObject);
begin
   if dbEditPesquisarCores.Execute then
   begin
      if not(ds_Cores_Modelos.DataSet.State in [dsEdit, dsInsert]) then
         ds_Cores_Modelos.DataSet.Edit;

      ds_Cores_Modelos.DataSet.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
   End;
end;

procedure TFrmProdutosDetalhados.GridGradeCoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin


     if dbEditPesquisarCores.Execute then
     begin
        if not(ds_Cores_Modelos.DataSet.State in [dsEdit, dsInsert]) then
           ds_Cores_Modelos.DataSet.Edit;

        ds_Cores_Modelos.DataSet.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
     End;

   end;
end;

procedure TFrmProdutosDetalhados.GridGradeCoresKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmProdutosDetalhados.db_referenciasMG_LUCROChange(Sender: TField);
begin

   db_referencias.FieldByName('PRC_VENDA').AsFloat := 0;
   CalculaCustos;

   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou a margem de lucro do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasNCMChange(Sender: TField);
begin
  db_referencias.FieldByName('CEST').AsString := GetNCMCEST(db_referencias.FieldByName('NCM').AsString);
end;

procedure TFrmProdutosDetalhados.db_referenciasNewRecord(DataSet: TDataSet);
begin
   db_referencias.FieldByName('DATA').AsDateTime  := Date;
   db_referencias.FieldByName('ATIVO').AsString   := 'S';
   db_referencias.FieldByName('UNIDADE').AsString := 'UN';
   db_referencias.FieldByName('CODIGO_BARRA').AsString := 'SEM GTIN';
end;

procedure TFrmProdutosDetalhados.db_referenciasAfterPost(DataSet: TDataSet);
begin
   strReferencia := db_referencias.FieldByName('REFERENCIA').AsString;
   db_referencias.ParamByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_referencias.ParamByName('REFERENCIA').AsString := db_referencias.FieldByName('REFERENCIA').AsString;

   Achar[00] := db_referencias.FieldByName('LOCALIZACAO').AsString;
   Achar[01] := db_referencias.FieldByName('GRUPO').AsString;
   Achar[02] := db_referencias.FieldByName('SUBGRUPO').AsString;
   Achar[03] := db_referencias.FieldByName('DESCRICAO').AsString;
   Achar[04] := db_referencias.FieldByName('UNIDADE').AsString;
   Achar[06] := db_referencias.FieldByName('CODIGO_FABRICANTE').AsString;

end;

procedure TFrmProdutosDetalhados.db_referenciasAfterScroll(DataSet: TDataSet);
begin
   strReferencia := db_referencias.FieldByName('REFERENCIA').AsString;
end;

procedure TFrmProdutosDetalhados.db_referenciasBeforeOpen(DataSet: TDataSet);
begin
   db_referencias.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmProdutosDetalhados.db_referenciasBeforePost(DataSet: TDataSet);
begin
   strReferencia := db_referencias.FieldByName('REFERENCIA').AsString;

   if (db_referencias.FieldByName('PRC_CUSTO').AsFloat <= 0) and
     (db_referencias.FieldByName('PRC_VENDA').AsFloat > 0) then
   begin
      db_referencias.FieldByName('PRC_CUSTO').AsFloat :=
        db_referencias.FieldByName('PRC_VENDA').AsFloat;
   end;

   wCampo[0] := 'DESCRICAO';
   wCampo[1] := 'GRUPO';
   wCampo[2] := 'SUBGRUPO';

   MontarCodigoReferencia();


   If Empty(db_referencias.FieldByName('UNIDADE').AsString) then
      db_referencias.FieldByName('UNIDADE').AsString := 'UN';

   If FParametros.Produto.Codificacao <> 'AUTO' Then
   begin
      If Empty(db_referencias.FieldByName('REFERENCIA').AsString) then
      begin
        TratarErros('Informe o campo C�digo (Refer�ncia).');
        if EditCodigo.Enabled then
           EditCodigo.SetFocus;
         Abort;
      End;
   end;

   If Empty(db_referencias.FieldByName('TIPO_PRODUTO').AsString) then
   begin
      Informar('Tipo de produto � obrigatorio');
      EditTipProduto.SetFocus;
      Abort;
   End;

   if Empty(db_referencias.FieldByName('CODIGO_BARRA').AsString) or
   (db_referencias.FieldByName('CODIGO_BARRA').AsString = '0')   then
      db_referencias.FieldByName('CODIGO_BARRA').AsString := 'SEM GTIN';

   if Valida_EAN(GetProdutoCampo(strReferencia,'CODIGO_BARRA'))=false Then
      db_referencias.FieldByName('CODIGO_BARRA').AsString := 'SEM GTIN';


   if (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACA')       or
      (db_referencias.FieldByName('TIPO_PRODUTO').AsString='ACABADO')   then
   Begin
      if db_referencias.FieldByName('NCM').AsString='' Then
         db_referencias.FieldByName('NCM').AsString := BuscaNCMPadrao;
   End;


   CalculaCustos;

end;

procedure TFrmProdutosDetalhados.MontarCodigoReferencia;
var
  mCodigoReferencia, NovoCodProduto : String;
begin
  if not (db_referencias.state in [dsedit,dsinsert]) then
    exit;
  if FParametros.Produto.Codificacao<>'AUTO' then
    exit;

  if StrToInt(db_referencias.FieldByName('CODIGO').AsString) < 1 then
  begin
    NovoCodProduto := IntToStr(GetUltimoCodProduto);
  end
  else
  begin
    NovoCodProduto := db_referencias.FieldByName('CODIGO').AsString;
  end;

  mCodigoReferencia := MontarCodigoProduto(db_referencias.FieldByName('GRUPO').AsString,
                                           db_referencias.FieldByName('SUBGRUPO').AsString,
                                           NovoCodProduto);
  db_referencias.FieldByName('REFERENCIA').AsString := mCodigoReferencia;
end;

procedure TFrmProdutosDetalhados.db_referenciasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmProdutosDetalhados.db_referenciasDESCRICAOChange(Sender: TField);
begin
   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou a descri��o do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmProdutosDetalhados.db_referenciasESTOQUESALDOChange(Sender: TField);
begin
   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou a quantidade em estoque do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasGRUPOChange(Sender: TField);
begin
  MontarCodigoReferencia();
end;

procedure TFrmProdutosDetalhados.BtnGradesClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If Empty(db_referencias.FieldByName('REFERENCIA').AsString) then
   begin
      TratarErros('Informe o campo C�digo (Refer�ncia).');
      if EditCodigo.Enabled then
         EditCodigo.SetFocus;
      Abort;
   End;
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmProdutosDetalhados.CalculaCustos;

begin


   wFloat[0] := 0;
   wFloat[1] := 0;
   wFloat[2] := 0;
   wFloat[3] := 0;
   wFloat[4] := 0;
   wFloat[99] := 0;

   // Calcular fra��o do rolo de tecido

   nPESO_LIQUIDO    :=db_referencias.FieldByName('PESO_LIQUIDO').AsFloat;
   nPESO_M2         :=db_referencias.FieldByName('PESO_M2').AsFloat;


   NPRC_CUSTOBRUTO  :=db_referencias.FieldByName('PRC_CUSTOBRUTO').AsFloat;


   // Peso liquido do rolo do tecido
   if wFloat[110]<=0 then
   wFloat[110] :=1;

   // Peso do metro quadrado do tecido
   if nPESO_M2<=0 then
   begin
   nPESO_M2 :=1;
   end;


   nESTOQUESALDO  := (nPESO_LIQUIDO / nPESO_M2);

   if nESTOQUESALDO<=0 then
   begin
   nESTOQUESALDO :=1;
   nPESO_M2      :=0;
   end;


   nTOTAL := NPRC_CUSTOBRUTO / nESTOQUESALDO;

   if nPESO_M2<=0 then
   begin
      nESTOQUESALDO :=0;
   end;

   //db_referencias.FieldByName('PRC_CUSTO').AsFloat     := nTOTAL;

   // db_referencias.FieldByName('ESTOQUESALDO').AsFloat  := nESTOQUESALDO;


   if db_referencias.FieldByName('MG_LUCRO').AsFloat <= 0 then
   Begin

      nTeste := 0;
      nTeste := DescobrirPercentual(db_referencias.FieldByName('PRC_CUSTO')
        .AsFloat, db_referencias.FieldByName('PRC_VENDA').AsFloat);

      if nTeste > 0 then
         db_referencias.FieldByName('MG_LUCRO').AsFloat := nTeste;

   End
   else
   begin
      nTeste := db_referencias.FieldByName('MG_LUCRO').AsFloat;
   end;

   // IPI
   wFloat[1] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('IPI').AsFloat);

   // Frete
   wFloat[2] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('PERC_FRETE').AsFloat);

   // ICMS
   wFloat[3] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('ICMS').AsFloat);

   // MARKUP
   wFloat[4] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('MARKUP').AsFloat);

   wFloat[0] := fncGeraPercentual(db_referencias.FieldByName('PRC_CUSTO').AsFloat,
     db_referencias.FieldByName('MG_LUCRO').AsFloat);

   db_referencias.FieldByName('LUCRO_LIQUIDO').AsFloat := wFloat[0];

   wFloat[97] := db_referencias.FieldByName('PRC_VENDA').AsFloat;
   wFloat[98] := ArrendondarDecimais(db_referencias.FieldByName('PRC_CUSTO').AsFloat);

   wFloat[99] := ArrendondarDecimais(wFloat[0] + wFloat[1] + wFloat[2] + wFloat[3] +
     wFloat[4]);

   wFloat[100] := wFloat[98] + wFloat[99];

   wFloat[100] := ArrendondarDecimais(wFloat[100]);

   db_referencias.FieldByName('PRC_VENDA').AsFloat := wFloat[100];

   nTeste := 0;

end;

procedure TFrmProdutosDetalhados.db_referenciasPERC_FRETEChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.db_referenciasPESO_LIQUIDOChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.db_referenciasPESO_M2Change(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.db_referenciasPISChange(Sender: TField);
begin
   CalculaCustos;

end;

procedure TFrmProdutosDetalhados.db_referenciasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   FormularioErro(E);

end;

procedure TFrmProdutosDetalhados.db_referenciasPRC_CUSTOBRUTOChange(Sender: TField);
begin
//  CalculaCustos;
end;

Procedure TFrmProdutosDetalhados.db_referenciasPRC_CUSTOChange(Sender: TField);
begin
   CalculaCustos;
   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou o pre�o de custo do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasPRC_VENDAChange(Sender: TField);
begin

   if (db_referencias.FieldByName('PRC_CUSTO').AsFloat <= 0) and
     (db_referencias.FieldByName('PRC_VENDA').AsFloat > 0) then
   begin
      db_referencias.FieldByName('PRC_CUSTO').AsFloat :=
        db_referencias.FieldByName('PRC_VENDA').AsFloat;
   end;

   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou o pre�o de venda do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasICMSChange(Sender: TField);
begin
   CalculaCustos;
   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou icms do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasICMS_ALIQChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.db_referenciasICMS_REDChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.db_referenciasICMS_SUBST_TRIBChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.db_referenciasIPIChange(Sender: TField);
begin
   CalculaCustos;
   if (db_referencias.state in [dsEdit]) then
      FUsuario.LogUsuario('controle de estoque', 'alterou ipi do produto '+strReferencia );

end;

procedure TFrmProdutosDetalhados.db_referenciasMARKUPChange(Sender: TField);
begin
   CalculaCustos;
end;

procedure TFrmProdutosDetalhados.rdCicloChange(Sender: TObject);
begin
  EditColecao.Enabled :=(rdCiclo.ItemIndex=1);
end;

procedure TFrmProdutosDetalhados.rdCicloClick(Sender: TObject);
begin
//  EditColecao.Enabled :=(rdCiclo.ItemIndex=0);
end;

procedure TFrmProdutosDetalhados.rdUtilizaGradeChange(Sender: TObject);
begin
  EditGradeTamanhos.Enabled :=(rdUtilizaGrade.ItemIndex=0);
end;

procedure TFrmProdutosDetalhados.rdUtilizaGradeClick(Sender: TObject);
begin
//  EditGradeTamanhos.Enabled :=(rdUtilizaGrade.ItemIndex=0);
end;

procedure TFrmProdutosDetalhados.EditCodigoExit(Sender: TObject);
begin

   FCodigo := db_referencias.FieldByName('REFERENCIA').AsString;
   db_ChecarExistencia.close;
   db_ChecarExistencia.ParamByName('REFERENCIA').AsString :=
     db_referencias.FieldByName('REFERENCIA').AsString;
   db_ChecarExistencia.Open;

   If (db_referencias.state in [dsEdit, dsInsert]) then
   Begin
      If db_ChecarExistencia.FieldByName('REGISTROS').AsInteger > 0 then
      Begin
         FrmFrameBotoes1.SpbCancelarClick(Sender);

         db_referencias.close;
         db_referencias.ParamByName('REFERENCIA').AsString := FCodigo;
         db_referencias.Open;

         Informar('Produto ' + db_referencias.FieldByName('REFERENCIA').AsString + ' j� est� cadastrado');
         if EditCodigo.Enabled then
            EditCodigo.SetFocus;

      End;
   end;

   db_ChecarExistencia.close;
   FCodigo := '';

end;

procedure TFrmProdutosDetalhados.db_referenciasQTD_TOTALChange(Sender: TField);
begin

   If db_referencias.FieldByName('QTD_MAX').AsFloat > 0 then
   begin

      If db_referencias.FieldByName('QTD_TOTAL').AsFloat >
        db_referencias.FieldByName('QTD_MAX').AsFloat then
      begin

         BeepCritica;
         Informar('Estoque atual n�o pode ser maior que Estoque M�ximo permitido ');
         db_referencias.FieldByName('QTD_TOTAL').AsFloat := 0;
         EditQtde.SetFocus;
         Abort;

      end;

   end;

end;

procedure TFrmProdutosDetalhados.db_referenciasSUBGRUPOChange(Sender: TField);
begin
  MontarCodigoReferencia();
end;

procedure TFrmProdutosDetalhados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_F5 then
   begin
      if (db_referencias.state in [dsBrowse]) then
         db_referencias.Refresh;
   end;
end;

procedure TFrmProdutosDetalhados.db_referencia_FotosBeforePost(DataSet: TDataSet);
begin

   db_referencia_Fotos.FieldByName('CODIGO').AsInteger :=
     db_referencias.FieldByName('CODIGO').AsInteger;

   db_referencia_Fotos.FieldByName('REFERENCIA').AsString :=
     db_referencias.FieldByName('REFERENCIA').AsString;


end;

procedure TFrmProdutosDetalhados.EditGradeTamanhosChange(Sender: TObject);
begin
   db_GradeLista.Close;
   db_GradeLista.ParamByName('GRADE').Clear;;
   db_GradeLista.ParamByName('GRADE').AsInteger := StrToIntDef(EditGradeTamanhos.Text,0);
   db_GradeLista.open;
   db_GradeLista.Refresh;
end;

procedure TFrmProdutosDetalhados.SpeedButton1Click(Sender: TObject);
begin

   AvisoSistema(' Voc� poder� liberar ou bloquear o campo "C�digo do Produto" '
     + #13 + #10 + #13 + #10 + 'Procedimentos: ' + #13 + #10 +
     'A) Acesse o menu Configura��es->Parametros de Sistema   ' + #13 + #10 +
     #13 + #10 + 'B) Clique no Icone SISTEMA   ' + #13 + #10 + #13 + #10 +
     'C) Na caixa "codifica��o dos produtos" selecione uma das op��es abaixo   '
     + #13 + #10 + #13 + #10 +
     '  1) Sequencial 6 digitos: Bloqueia o campo "C�digo do Produto" e gera codigos automaticamente '
     + #13 + #10 + #13 + #10 +
     '  2) Alfanumerico: Libera o campo "C�digo do Produto"  mas voc� ter� de informar o c�digo do produto manualmente ');

end;

procedure TFrmProdutosDetalhados.SpeedButton6Click(Sender: TObject);
begin

   if Empty(db_referencias.FieldByName('REFERENCIA').AsString) Then
   begin
      TratarErros('N�o h� produto na tela para vincular foto.');
      Exit;
   end;

   if OpenPictureDialog1.Execute then
   begin

      db_referencia_Fotos.close;
      db_referencia_Fotos.open;

      if not (db_referencia_Fotos.state in [dsEdit, dsInsert]) then
         db_referencia_Fotos.Edit;

         db_referencia_Fotos.FieldByName('FOTO_PATH').AsString :=  (OpenPictureDialog1.FileName);

      if (db_referencia_Fotos.state in [dsEdit, dsInsert]) then
         db_referencia_Fotos.Post;

   end;

   Atualizar_Foto;

end;

procedure TFrmProdutosDetalhados.SpeedButton7Click(Sender: TObject);
begin

   if Empty(db_referencias.FieldByName('REFERENCIA').AsString) Then
   begin
      TratarErros('N�o h� produto na tela para excluir foto.');
      Exit;
   end;

   if not(db_referencias.state in [dsEdit, dsInsert]) then
   begin

      db_referencia_Fotos.close;
      db_referencia_Fotos.open;

      db_referencia_Fotos.Edit;
      db_referencia_Fotos.FieldByName('FOTO_PATH').Clear;
      db_referencia_Fotos.Post;

   end;

   Atualizar_Foto;

end;

procedure TFrmProdutosDetalhados.TabEstoqueShow(Sender: TObject);
begin
  GridQuantidades;
end;

procedure TFrmProdutosDetalhados.GridQuantidades;
begin

  strProduto :=db_referencias.FieldByName('REFERENCIA').AsString;
  if strProduto='' then
    exit;




//
//  //  StringGridOpcoes.ClearAll;
//  //if not (pgDetalhes.ActivePage.PageControl.Pages[pgDetalhes.ActivePageIndex]=TabEstoque)  then
//  //  exit;
//
//  GradeProduto_Montar(strProduto, StringGridOpcoes);
//
//  CadProduto_EstoqueCarregar(db_referencias.FieldByName('CODIGO').AsInteger,
//                                  strProduto,
//                                  StringGridOpcoes);
end;


procedure TFrmProdutosDetalhados.Atualizar_Foto;
begin
  try
    db_referencia_Fotos.close;
    db_referencia_Fotos.open;

    // foto principal
    if fileexists(db_referencia_Fotos.FieldByName('FOTO_PATH').AsString) then
    Begin
      FotoReferencia.Picture := Nil;
      FotoReferencia.Picture.LoadFromFile(db_referencia_Fotos.FieldByName('FOTO_PATH').AsString);
    End
    Else
    Begin
       FotoReferencia.Picture := Nil;
    End;

  finally
    db_referencia_Fotos.close;
  end;

  Update;
end;

procedure TFrmProdutosDetalhados.db_Cores_ModelosBeforePost(DataSet: TDataSet);
begin
   db_Cores_Modelos.FieldByName('CODIGO').AsInteger := db_referencias.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmProdutosDetalhados.db_Cores_ModelosID_CORChange(Sender: TField);
begin
   // envia uma requisi��o para o servidor checar se o PRODUTO digitado na grade
   // j� existe em outra linha da mesma grade

   If ExisteCor(db_referencias.FieldByName('CODIGO').AsInteger,
                db_Cores_Modelos.FieldByName('ID_COR').AsInteger) then
   begin
      BeepCritica;
      Aviso('Cor ' + db_Cores_Modelos.FieldByName('ID_COR').AsString + ' j� est� inclu�do na grade.');
      db_Cores_Modelos.Cancel;
      exit;
   end;

   db_Cores_Modelos.FieldByName('NOME').AsString := BuscaNomeCor(db_Cores_Modelos.FieldByName('ID_COR').AsInteger);

end;

end.
