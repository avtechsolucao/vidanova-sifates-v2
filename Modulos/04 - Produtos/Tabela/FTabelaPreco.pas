{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FTabelaPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxButtonEdit, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FFrameBarra, Vcl.ComCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, Vcl.ExtCtrls, Vcl.Mask, FFrameBotoes,
  Classe.Global, dxDateRanges;

type
   TFrmTabelaPreco = class(TForm)
    ds_TabelaPreco: TDataSource;
    db_ReferenciasImportar: TFDQuery;
      ds_ParametrosDescontos: TDataSource;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      EditData: TDBEdit;
      DBEdit1: TDBEdit;
      EditNome: TDBEdit;
      GroupBox1: TGroupBox;
      BoxGrupo: TRadioGroup;
      EditGrupoNome: TEdit;
      EditGrupo: TIDBEditDialog;
      GroupBox2: TGroupBox;
      BoxSubgrupo: TRadioGroup;
      EditSubGrupoNome: TEdit;
      EditSubgrupo: TIDBEditDialog;
      DB_ParametrosDescontos: TFDQuery;
      RDGPercentual: TDBRadioGroup;
      EditPercentualx: TDBEdit;
      GroupBox3: TGroupBox;
    dbGridComissoes: TDBGrid;
      LblPercentual: TLabel;
    rdGrupoMoeda: TDBRadioGroup;
      DB_ParametrosDescontosCODIGO: TIntegerField;
      DB_ParametrosDescontosQTDE1_PARAM: TIntegerField;
      DB_ParametrosDescontosQTDE2_PARAM: TIntegerField;
      DB_ParametrosDescontosDESCONTO: TFloatField;
      DB_ParametrosDescontosCOMISSAO: TFloatField;
    GroupBox4: TGroupBox;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    BtnImportar: TBitBtn;
    BtnRecalcular: TBitBtn;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    db_TabelaReferenciaDeletar: TFDQuery;
    ProgressBar1: TProgressBar;
    BtnCancelar: TBitBtn;
    BtnExcluirTudo: TBitBtn;
    GroupBox7: TGroupBox;
    BoxColecao: TRadioGroup;
    EditNomeColecao: TEdit;
    EditColecao: TIDBEditDialog;
    dbProcurarProduto: TIDBEditDialog;
    frx_dsTabela: TfrxDBDataset;
    frx_dsTabelaReferencias: TfrxDBDataset;
    frx_TabelaPrecos: TfrxReport;
    db_TabelaDetalhes: TFDQuery;
    LocalizaTabelaPreco: TIDBEditDialog;
    cxGridProdutos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridProdutosColumn1: TcxGridDBColumn;
    cxGridProdutosColumn2: TcxGridDBColumn;
    cxGridProdutosColumn3: TcxGridDBColumn;
    db_TabelaReferencia: TFDQuery;
    ds_TabelaReferencia: TDataSource;
    db_TabelaPreco: TFDQuery;
    cxGridProdutosColumn5: TcxGridDBColumn;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DB_ParametrosDescontosBeforePost(DataSet: TDataSet);
      procedure DB_ParametrosDescontosQTDE2_PARAMChange(Sender: TField);
      procedure FormShow(Sender: TObject);
    procedure db_TabelaReferenciaBeforePost(DataSet: TDataSet);
    procedure dbGridComissoesEnter(Sender: TObject);
    procedure BtnRecalcularClick(Sender: TObject);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirTudoClick(Sender: TObject);
    procedure db_TabelaReferenciaAfterScroll(DataSet: TDataSet);
    procedure GroupBox4Enter(Sender: TObject);
    procedure db_TabelaReferenciaBeforeDelete(DataSet: TDataSet);
    procedure db_TabelaPrecoNOMEChange(Sender: TField);
    procedure cxGridProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridProdutosColumn1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridProdutosColumn3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GroupBox6Enter(Sender: TObject);

   private

    bParar, bImportando : Boolean;

    procedure AtualizaData;
    procedure MontaValorTabela;
    procedure MontaRecalculoValorTabela;
    procedure BotoesImportacao(bHabilitar: Boolean);
    procedure BotoesRecalculo(bHabilitar: Boolean);
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmTabelaPreco: TFrmTabelaPreco;
   OpcaoTabela: String;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,  FImprimirTabela, Classe.Usuarios;

{$R *.dfm}

procedure TFrmTabelaPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FUsuario.LogUsuario('Tabela de Pre�os','Saiu do m�dulo Tabela de Pre�os');
//   FrmPrincipal.ActTabelaPrecos.Enabled := True;
   db_ReferenciasImportar.CLOSE;
   db_TabelaPreco.CLOSE;
   db_TabelaReferencia.close;

   Action := cafree;
end;

procedure TFrmTabelaPreco.FormCreate(Sender: TObject);
begin
   bImportando:=False;

   FrmFrameBotoes1.DataSource := ds_TabelaPreco;

end;

procedure TFrmTabelaPreco.FormShow(Sender: TObject);
begin
   FUsuario.LogUsuario('Tabela de Pre�os','Acessou o m�dulo Tabela de Pre�os');


   db_TabelaPreco.Open;
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   DB_ParametrosDescontos.Open;
   db_TabelaReferencia.Open;

   // deletar
   FrmFrameBotoes1.SpbSalvar.Enabled := true;
   FrmFrameBotoes1.SpbCancelar.Enabled := true;

   FrmFrameBotoes1.SpbSalvar.Visible := true;
   FrmFrameBotoes1.SpbCancelar.Visible := true;

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin

   DB_ParametrosDescontos.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FrmFrameBotoes1.SpbEditarClick(Sender);
   FUsuario.LogUsuario('Tabela de Pre�os','Clicou no bot�o Alterar. Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+']');

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   FUsuario.LogUsuario('Tabela de Pre�os','Deletou tabela de pre�o ['+IntToStr(nTabelaPreco)+']');

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   db_TabelaDetalhes.Close;
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   //FrmImprimirTabela := TFrmImprimirTabela.create(self);
   frx_TabelaPrecos.ShowReport;
   FUsuario.LogUsuario('Tabela de Pre�os','Imprimiu a tabela ['+IntToStr(nTabelaPreco)+']' );
   db_TabelaDetalhes.Close;


end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if LocalizaTabelaPreco.Execute then
   begin
      nTabelaPreco := LocalizaTabelaPreco.ResultFieldAsInteger('CODIGO');
      FUsuario.LogUsuario('Tabela de Pre�os','Procurou e colocalizou a tabela ['+IntToStr(nTabelaPreco)+']' );
      db_TabelaPreco.Locate('CODIGO', nTabelaPreco, []);
   end;
end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTabelaPreco.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;

   If (db_TabelaReferencia.State in [dsedit, dsinsert]) then
     db_TabelaReferencia.Post;

   If (DB_ParametrosDescontos.State in [dsedit, dsinsert]) then
     DB_ParametrosDescontos.Post;


   FUsuario.LogUsuario('Tabela de Pre�os','Clicou no bot�o Salvar. Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+']');

end;

procedure TFrmTabelaPreco.GroupBox4Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmTabelaPreco.GroupBox6Enter(Sender: TObject);
begin
   If (db_TabelaPreco.State in [dsedit, dsinsert]) then
   Begin
      db_TabelaPreco.Post;
   end;
end;

procedure TFrmTabelaPreco.BtnImportarClick(Sender: TObject);
begin

   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   bParar := False;

   if not db_TabelaReferencia.IsEmpty then
   begin
     if pergunta('H� itens na grade. '+ #13+#10+
                 'Este processo ir� excluir tudo '+
                 'e refazer a grade... Deseja continuar?')=false then
     begin
      FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+
              '], tentou gerar (bot�o "Gerar Tabela") grade de itens novamente... Mas foi impedido(a) pelo sistema porque ja havia itens da grade da tabela.' );
        exit;
     end;


   end;


   Try
     db_TabelaReferenciaDeletar.ExecSQL;
     db_TabelaReferencia.Refresh;

     db_ReferenciasImportar.close;
     db_ReferenciasImportar.SQL.Clear;

     db_ReferenciasImportar.SQL.Add('SELECT * FROM CAD_PRODUTOS');
     db_ReferenciasImportar.SQL.Add('WHERE');
     db_ReferenciasImportar.SQL.Add('TIPO_PRODUTO='+QuotedStr('ACA'));

     if BoxGrupo.ItemIndex=1 then
     begin
        db_ReferenciasImportar.SQL.Add('AND');
        db_ReferenciasImportar.SQL.Add('GRUPO='+QuotedStr(EditGrupo.Text));
     end;

     if BoxSubgrupo.ItemIndex=1 then
     begin
        db_ReferenciasImportar.SQL.Add('AND');
        db_ReferenciasImportar.SQL.Add('SUBGRUPO='+QuotedStr(EditSubgrupo.Text));
     end;

     if BoxColecao.ItemIndex=1 then
     begin
        db_ReferenciasImportar.SQL.Add('AND');
        db_ReferenciasImportar.SQL.Add('COLECAO='+QuotedStr(EditColecao.Text));
     end;


     db_ReferenciasImportar.SQL.Add('ORDER BY REFERENCIA');

     db_ReferenciasImportar.Open;
     ProgressBar1.Max        :=0;
     ProgressBar1.Position   :=0;

     ProgressBar1.Max        :=db_ReferenciasImportar.RecordCount;
     db_ReferenciasImportar.First;

     BtnCancelar.Visible :=True;
     BtnExcluirTudo.Enabled := False;
     bImportando := True;

     BotoesImportacao(false);
     While not db_ReferenciasImportar.eof do
     begin

        if bParar then
          Break;

        Application.ProcessMessages;

        db_TabelaReferencia.Append;
        db_TabelaReferencia.FieldByName('CODIGO').AsInteger    :=db_TabelaPreco.FieldByName('CODIGO').AsInteger;
        db_TabelaReferencia.FieldByName('REFERENCIA').AsString :=db_ReferenciasImportar.FieldByName('REFERENCIA').AsString;
        db_TabelaReferencia.FieldByName('DESCRICAO').AsString  :=db_ReferenciasImportar.FieldByName('DESCRICAO').AsString;
        db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=0;

        MontaValorTabela;

        db_TabelaReferencia.Post;
        ProgressBar1.Position   := ProgressBar1.Position + 1;

        Application.ProcessMessages;

        if bParar then
          Break;


        db_ReferenciasImportar.Next;
     end;

     FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+
              '], gerou uma nova grade de Itens (Referencias), clicando no bot�o "Gerar Tabela"' );

   Finally
      BotoesImportacao(true);
      ProgressBar1.Position   :=0;
      BtnCancelar.Visible :=false;
      bParar := False;
      db_TabelaReferencia.Refresh;
      AtualizaData;

      if bParar then
      begin
        FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+
              '], cancelou a gera��o de Itens (Referencias), clicando no bot�o "cancelar processo"' );

         Informar('Importa��o cancela pelo usu�rio')
      end
      else
         AvisoSistema('Importa��o concluida com sucesso');

      bParar  := False;
      bImportando := False;
   End;

end;

procedure TFrmTabelaPreco.BtnRecalcularClick(Sender: TObject);
Var
 vnValorVenda : Real;
begin

   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   vnValorVenda :=0;
   if pergunta('Deseja refazer todos os valores?')=false then
      exit;

   Try
      ProgressBar1.Max        :=0;
      ProgressBar1.Position   :=0;

      ProgressBar1.Max        :=db_TabelaReferencia.RecordCount;
      db_TabelaReferencia.First;

      BtnCancelar.Visible :=True;
      BtnExcluirTudo.Enabled := False;
      bImportando := True;

      BotoesRecalculo(false);
      While not db_TabelaReferencia.eof do
      begin

         if bParar then
           Break;

         Application.ProcessMessages;
         vnValorVenda := RetornaReferenciaPrecoVenda(db_TabelaReferencia.FieldByName('REFERENCIA').AsString);

         if ( vnValorVenda > 0 ) then
         begin

            db_TabelaReferencia.Edit;
            db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   := vnValorVenda;
            MontaRecalculoValorTabela;
            db_TabelaReferencia.Post;
         end;

         Application.ProcessMessages;

         if bParar then
           Break;

         ProgressBar1.Position   := ProgressBar1.Position + 1;
         db_TabelaReferencia.Next;

      end;
        FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+
              '], realculou o valor do itens Referencias), clicando no bot�o "Recalcular Pre�o"' );

   Finally
      BotoesRecalculo(true);
      ProgressBar1.Position   :=0;
      BtnCancelar.Visible :=false;
      bParar := False;
      db_TabelaReferencia.Refresh;
      AtualizaData;

      if bParar then
         Informar('Importa��o cancela pelo usu�rio')
      else
         AvisoSistema('Importa��o concluida com sucesso');

      bParar  := False;
      bImportando := False;

   End;

end;

procedure TFrmTabelaPreco.cxGridProdutosColumn1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin

   if bImportando=False then
   begin
      db_TabelaReferencia.FieldByName('DESCRICAO').AsString  := fncReferenciaNome(db_TabelaReferencia.FieldByName('REFERENCIA').AsString);
      db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   := RetornaReferenciaPrecoVenda(db_TabelaReferencia.FieldByName('REFERENCIA').AsString);
      MontaRecalculoValorTabela;
   end;
end;

procedure TFrmTabelaPreco.cxGridProdutosColumn3PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
   exit;

   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   if bImportando=false then
      FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+'], alterou o pre�o da referencia: ['+db_TabelaReferencia.FieldByName('REFERENCIA').AsString+']' );
end;

procedure TFrmTabelaPreco.cxGridProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if bImportando=True then
      exit;

  strReferencia := UpperCase( Trim(db_TabelaReferencia.FieldByName('REFERENCIA').AsString) );
  nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;

   IF Key = VK_F8 Then
   begin
     if dbProcurarProduto.Execute then
     begin
         If not(db_TabelaReferencia.State in [dsedit]) then
            db_TabelaReferencia.edit;
         db_TabelaReferencia.FieldByName('REFERENCIA').AsString := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
         db_TabelaReferencia.Post;

     end;
   end;

   IF Key = VK_F9 Then
   begin
      if not(InputQuery('Localizar REFER�NCIA','Informe o c�digo da Refer�ncia', strReferencia)) then
         Exit;

      strReferencia := UpperCase( Trim(strReferencia) );
      db_TabelaReferencia.Locate('REFERENCIA', strReferencia, []);

   end;
end;

procedure TFrmTabelaPreco.BtnCancelarClick(Sender: TObject);
begin
   bParar := True;
   bImportando := False;
   Application.ProcessMessages;

end;

procedure TFrmTabelaPreco.BtnExcluirTudoClick(Sender: TObject);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   if not db_TabelaReferencia.IsEmpty then
   begin
     if pergunta('H� itens na grade. '+ #13+#10+
                 'Este processo ir� excluir tudo. '+
                 'Deseja continuar?')=false then
        exit;
   end;

   db_TabelaReferenciaDeletar.ExecSQL;
   db_TabelaReferencia.Refresh;

   FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+
         '], deletou todos os itens (Referencias), clicando no bot�o "Excluir Tudo"' );

end;

procedure TFrmTabelaPreco.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmTabelaPreco.dbGridComissoesEnter(Sender: TObject);
begin

   If (db_TabelaPreco.State in [dsedit, dsinsert]) then
   Begin
      db_TabelaPreco.Post;
   end;

end;

procedure TFrmTabelaPreco.DB_ParametrosDescontosBeforePost(DataSet: TDataSet);
begin

   DB_ParametrosDescontos.FieldByName('CODIGO').AsInteger :=
     db_TabelaPreco.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmTabelaPreco.DB_ParametrosDescontosQTDE2_PARAMChange
  (Sender: TField);
begin

   if (DB_ParametrosDescontos.FieldByName('QTDE1_PARAM').AsFloat >
     DB_ParametrosDescontos.FieldByName('QTDE2_PARAM').AsFloat) then
   begin
      BeepCritica;
      Informar('Quantidade minima n�o pode ser maior que quantidade maxima');
      DB_ParametrosDescontos.FieldByName('QTDE2_PARAM').AsFloat :=
        DB_ParametrosDescontos.FieldByName('QTDE1_PARAM').AsFloat;

   end;

end;

procedure TFrmTabelaPreco.db_TabelaReferenciaAfterScroll(DataSet: TDataSet);
begin
   if bImportando=True then
      exit;

   if not db_TabelaReferencia.IsEmpty then
   begin
     BtnExcluirTudo.Enabled := True;
     BtnRecalcular.Enabled := True;
   end
   else
   begin
     BtnExcluirTudo.Enabled := False;
     BtnRecalcular.Enabled := False;
   end;
end;

procedure TFrmTabelaPreco.db_TabelaReferenciaBeforeDelete(DataSet: TDataSet);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+'], deletou a referencia: ['+db_TabelaReferencia.FieldByName('REFERENCIA').AsString+']' );

end;

procedure TFrmTabelaPreco.db_TabelaReferenciaBeforePost(DataSet: TDataSet);
begin
   db_TabelaReferencia.FieldByName('CODIGO').AsInteger      := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   db_TabelaReferencia.FieldByName('DTPRECOALTERADO').AsDateTime := Now;
end;

procedure TFrmTabelaPreco.db_TabelaPrecoNOMEChange(Sender: TField);
begin
   nTabelaPreco := db_TabelaPreco.FieldByName('CODIGO').AsInteger;
   FUsuario.LogUsuario('Tabela de Pre�os','Na Tabela de pre�o ['+IntToStr(nTabelaPreco)+'], alterou o nome da tabela.' );

end;

procedure TFrmTabelaPreco.AtualizaData;
begin
   If not (db_TabelaPreco.State in [dsedit, dsinsert]) then
      db_TabelaPreco.Edit;

   db_TabelaPreco.FieldByName('DATAREVISAO').AsDateTime := Date;

   If (db_TabelaPreco.State in [dsedit, dsinsert]) then
      db_TabelaPreco.Post;
end;

procedure TFrmTabelaPreco.MontaValorTabela;
begin
      if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='DESCONTO') and
         (db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat>0) Then
      begin
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=ValorComDesconto(db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat,db_TabelaPreco.FieldByName('AJUSTE_VALOR').AsFloat);
      end
      else
      if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='ACRESCIMO') and
         (db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat>0) Then
      begin
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=ValorComAcrescimo(db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat,db_TabelaPreco.FieldByName('AJUSTE_VALOR').AsFloat);
      end
      else
      if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='NAO') Then
      begin
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat;
      end;

      // Converter para moeda estrangeira, se necess�rio
      if (db_TabelaPreco.FieldByName('MOEDA').AsString='DOLAR') Then
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   := ConverteRealDolar(db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat,RetornaTaxaDolar);

      // Converter para moeda estrangeira, se necess�rio
      if (db_TabelaPreco.FieldByName('MOEDA').AsString='EURO') Then
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   := ConverteRealEuro(db_ReferenciasImportar.FieldByName('PRC_VENDA').AsFloat,RetornaTaxaEuro);

end;

procedure TFrmTabelaPreco.MontaRecalculoValorTabela;
begin
      if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='DESCONTO') and
         (db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat>0) Then
      begin
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=ValorComDesconto(db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat,db_TabelaPreco.FieldByName('AJUSTE_VALOR').AsFloat);
      end
      else
      if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='ACRESCIMO') and
         (db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat>0) Then
      begin
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=ValorComAcrescimo(db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat,db_TabelaPreco.FieldByName('AJUSTE_VALOR').AsFloat);
      end
      else
      if (db_TabelaPreco.FieldByName('AJUSTE_TIPO').AsString='NAO') Then
      begin
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat;
      end;

      // Converter para moeda estrangeira, se necess�rio
      if (db_TabelaPreco.FieldByName('MOEDA').AsString='DOLAR') Then
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   := ConverteRealDolar(db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat,RetornaTaxaDolar);

      // Converter para moeda estrangeira, se necess�rio
      if (db_TabelaPreco.FieldByName('MOEDA').AsString='EURO') Then
         db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   := ConverteRealEuro(db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat,RetornaTaxaEuro);

end;

Procedure TFrmTabelaPreco.BotoesImportacao(bHabilitar : Boolean );
begin
   BtnImportar.Enabled  :=bHabilitar;
   BtnRecalcular.Enabled  :=bHabilitar;
   BtnExcluirTudo.Enabled :=bHabilitar;
end;

Procedure TFrmTabelaPreco.BotoesRecalculo(bHabilitar : Boolean );
begin
   BtnImportar.Enabled  :=bHabilitar;
   BtnRecalcular.Enabled  :=bHabilitar;
   BtnExcluirTudo.Enabled :=bHabilitar;
end;

end.
