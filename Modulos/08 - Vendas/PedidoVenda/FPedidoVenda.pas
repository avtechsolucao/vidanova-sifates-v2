{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}
unit FPedidoVenda;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus, DB,
   Grids, DBGrids,   ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes, frxClass, frxDBSet,
    ComCtrls, FFrameBarra, ImgList, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, ISFEdit,
  ShellApi;

type
   TFrmPedidoVenda = class(TForm)
    grpPedidos: TGroupBox;
    grbTotais: TGroupBox;
      AdvGroupBox2: TGroupBox;
      AdvGroupBox4: TGroupBox;
      dbGrid_Produtos: TDBGrid;
       db_Pedido: TFDQuery;
      db_PedidoItens: TFDQuery;
      ds_Pedido: TDataSource;
      ds_PedidoItens: TDataSource;
      EditCliente: TIDBEditDialog;
      EditPagamento: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditNomeFormaPagto: TEdit;
      EditNomeTrasportadora: TEdit;
      EditData: TDBEdit;
      EditDataEntrega: TDBEdit;
      EditTransportadora: TIDBEditDialog;
      SP_CalculaPedido: TFDStoredProc;
      DBEdit5: TDBEdit;
      DBEdit1: TDBEdit;
      GroupBox1: TGroupBox;
      Panel1: TPanel;
      Label1: TLabel;
      Label2: TLabel;
      frx_dsPedido: TfrxDBDataset;
      frx_dsPedidosItens: TfrxDBDataset;
      frx_dsPedidoGrade: TfrxDBDataset;
      db_PedidoGrade: TFDQuery;
      DBRadioGroup2: TDBRadioGroup;
      DBRadioGroup1: TDBRadioGroup;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      db_PedidoCODIGO: TIntegerField;
      db_PedidoDATA: TSQLTimeStampField;
      db_PedidoCLIENTE: TIntegerField;
      db_PedidoVENDEDOR: TIntegerField;
      db_PedidoTABELA: TIntegerField;
      db_PedidoFORMAPAGTO: TIntegerField;
      db_PedidoTRANSPORTADORA: TIntegerField;
      db_PedidoTIPO: TStringField;
      db_PedidoDATA_FATURAMENTO: TSQLTimeStampField;
      db_PedidoDATA_ENTREGA: TSQLTimeStampField;
      db_PedidoPRIORIDADE: TStringField;
      db_PedidoORIGEM: TStringField;
      db_PedidoCONFERENCIA: TIntegerField;
      db_PedidoDOCUMENTO: TStringField;
      db_PedidoQTDE_DISPONIVEL: TIntegerField;
      db_PedidoQTDE_TOTAL: TIntegerField;
      db_PedidoQTDE_PRODUTOS: TIntegerField;
      db_PedidoQTDE_SERVICOS: TIntegerField;
      db_PedidoVLR_DESCONTO: TFloatField;
      db_PedidoVLR_SERVICOS: TFloatField;
      db_PedidoVLR_PRODUTOS: TFloatField;
      db_PedidoVLR_IMPOSTOS: TFloatField;
      db_PedidoVLR_TOTAL: TFloatField;
      db_PedidoFRETE: TStringField;
      db_PedidoIMPRESSO: TStringField;
      db_PedidoOBSERVACAO: TStringField;
      db_PedidoRESPONSAVEL: TStringField;
      db_PedidoAPROVADO: TStringField;
      db_PedidoSTATUS: TStringField;
      db_PedidoITENS_IMPORTADO: TStringField;
      EditTabela: TIDBEditDialog;
      EditTabelaNome: TEdit;
      db_PedidoItensCODIGO: TIntegerField;
      db_PedidoItensDATA: TSQLTimeStampField;
      db_PedidoItensCLIENTE: TIntegerField;
      db_PedidoItensVENDEDOR: TIntegerField;
      db_PedidoItensTABELA: TIntegerField;
      db_PedidoItensFORMAPAGTO: TIntegerField;
      db_PedidoItensTRANSPORTADORA: TIntegerField;
      db_PedidoItensTIPO: TStringField;
      db_PedidoItensDESCRICAO: TStringField;
      db_PedidoItensUND: TStringField;
      db_PedidoItensQTDE: TFloatField;
      db_PedidoItensVLR_UNIT: TFloatField;
      db_PedidoItensDESCONTO: TFloatField;
      db_PedidoItensVLR_DESCONTO: TFloatField;
      db_PedidoItensVLR_IMPOSTOS: TFloatField;
      db_PedidoItensVLR_TOTAL: TFloatField;
      db_PedidoItensQTDE_LIBERADA: TIntegerField;
      db_PedidoItensQTDE_FATURADA: TIntegerField;
      db_PedidoItensQTDE_CANCELADA: TIntegerField;
    EditVendedor: TIDBEditDialog;
    FrxPedidoVendaGrade: TfrxReport;
    db_PedidoItensAPROVADO: TStringField;
    db_PedidoVenda: TFDQuery;
    frx_PedidoVenda: TfrxDBDataset;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ProgressBar1: TProgressBar;
    db_PedidoENTREGAPARCIAL: TStringField;
    db_PedidoENTREGAPARCIALPERCENTUAL: TFloatField;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    db_PedidoEMPRESA: TIntegerField;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbeditPedidoProcurar: TIDBEditDialog;
    dbProcurarProduto: TIDBEditDialog;
    db_PedidoItensEMPRESA: TIntegerField;
    db_PedidoItensREFERENCIA: TStringField;
    db_PedidoItensREFERENCIATECIDO: TStringField;
    db_PedidoORDEMPRODUCAO: TIntegerField;
    db_PedidoItensORDEMPRODUCAO: TIntegerField;
    db_PedidoPRODUZINDO: TStringField;
    db_PedidoSELECIONADO: TStringField;
    db_PedidoItensPRODUZINDO: TStringField;
    db_PedidoItensSELECIONADO: TStringField;
    db_PedidoTRANSPORTEVOLUMES: TIntegerField;
    db_PedidoSTATUSPERCENTUAL: TFloatField;
    db_TabelaReferencia: TFDQuery;
    db_TabelaReferenciaCODIGO: TIntegerField;
    db_TabelaReferenciaREFERENCIA: TStringField;
    db_TabelaReferenciaDESCRICAO: TStringField;
    db_TabelaReferenciaPRC_VENDA: TFloatField;
    EditPedido: TDBEdit;
    Label10: TLabel;
    dbAndamentoPedido: TFDQuery;
    dsAndamentoPedido: TDataSource;
    db_PedidoFATURAMENTO_AGENDADO: TSQLTimeStampField;
    db_PedidoLOTE: TIntegerField;
    db_PedidoTIPOPRIODIDADE: TStringField;
    db_PedidoQTDE_TERCEIRIZADOS: TIntegerField;
    db_PedidoVLR_TERCEIRIZADOS: TFloatField;
    db_PedidoPROBLEMARELATADO: TStringField;
    db_PedidoPROBLEMASOLUCAO: TStringField;
    db_PedidoTIPODOCUMENTO: TIntegerField;
    db_PedidoIDANDAMENTO: TIntegerField;
    dsTipoDocumento: TDataSource;
    dbTipoDocumento: TFDQuery;
    db_PedidoItensIDX: TIntegerField;
    db_PedidoItensGRADE_TAMANHOS: TIntegerField;
    db_PedidoDESCONTO: TFloatField;
    db_PedidoCOMISSAO: TFloatField;
    BtnRecalcular: TBitBtn;
    db_TabelaReferenciaDTPRECOALTERADO: TSQLTimeStampField;
    FrxPedidoVendaSemGrade1: TfrxReport;
    CheckBox1: TCheckBox;
    EditObservacao: TDBEdit;
    Label4: TLabel;
    db_PedidoItensTIPO_PRODUTO: TStringField;
    db_PedidoItensCODIGO_BARRA: TStringField;
    db_PedidoItensKit: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField9: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    db_PedidoItensUnt: TFDQuery;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField22: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    frx_dsPedidosItensKit: TfrxDBDataset;
    FrxPedidoVendaSemGradeBKP: TfrxReport;
    FrxPedidoVendaSemGrade: TfrxReport;
    db_PedidoItensDoa: TFDQuery;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    SQLTimeStampField3: TSQLTimeStampField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    IntegerField34: TIntegerField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField35: TIntegerField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    StringField29: TStringField;
    StringField30: TStringField;
    frx_dsPedidosItensDoa: TfrxDBDataset;
    EditEnderecoEntrega: TDBEdit;
    EditNumeroEntrega: TDBEdit;
    Label5: TLabel;
    EditBairroEntrega: TDBEdit;
    EditContatosEntrega: TDBEdit;
    EditEmailEntrega: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    db_PedidoENTREGA_ENDERECO: TStringField;
    db_PedidoENTREGA_NUMERO: TStringField;
    db_PedidoENTREGA_BAIRRO: TStringField;
    db_PedidoENTREGA_CONTATOS: TStringField;
    db_PedidoENTREGA_EMAIL: TStringField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure CalculaPedido;
      procedure db_PedidoBeforePost(DataSet: TDataSet);
      procedure db_PedidoItensBeforePost(DataSet: TDataSet);
      procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure db_PedidoItensAfterDelete(DataSet: TDataSet);
      procedure db_PedidoItensAfterPost(DataSet: TDataSet);
      procedure db_PedidoNewRecord(DataSet: TDataSet);
      procedure dbGrid_ProdutosEnter(Sender: TObject);
      procedure db_PedidoAfterPost(DataSet: TDataSet);
      procedure dbGrid_ProdutosColEnter(Sender: TObject);
      procedure dbGrid_ProdutosEditButtonClick(Sender: TObject);
      procedure dbGrid_ProdutosKeyPress(Sender: TObject; var Key: Char);
      procedure AdvGroupBox4Exit(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
    procedure db_PedidoAfterScroll(DataSet: TDataSet);
    procedure db_PedidoAfterDelete(DataSet: TDataSet);
    procedure db_PedidoCLIENTEChange(Sender: TField);
    procedure BtnRecalcularClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_PedidoItensAfterOpen(DataSet: TDataSet);
    procedure db_PedidoItensREFERENCIAChange(Sender: TField);
    procedure FormResize(Sender: TObject);
    procedure dbGrid_ProdutosExit(Sender: TObject);
    procedure db_PedidoItensBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ImprimirPedidocomvalores1Click(Sender: TObject);
    procedure db_PedidoDATAChange(Sender: TField);

    procedure EditClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditObservacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGrid_ProdutosColExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditNomeClienteChange(Sender: TObject);
    procedure ClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

   private
      { Private declarations }
      bCalculoAutomatico : Boolean;
      check_endereco : Boolean;
    procedure prcProcurarProduto;
    procedure prcSetarDadosCliente;

   public
      { Public declarations }
      Function ChecarProtecaoPedido : Boolean;

   end;

var
   FrmPedidoVenda: TFrmPedidoVenda;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FBaseDados, FPedidoVendaParcial,
  FTabelaPrecoValor, FastReport, FImpressao;

{$R *.dfm}

procedure TFrmPedidoVenda.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource         := ds_Pedido;
   FrmFrameBotoes1.DataSource.DataSet := db_Pedido;

   dbeditPedidoProcurar.SearchQuery.Text := ' SELECT * FROM VIEW_PEDIDOSVENDAS '+
                                            ' WHERE'+
                                            ' EMPRESA='+FSistema.Empresa.ToString+
                                            ' AND   '+
                                            ' %WHERE%   '+
                                            ' ORDER BY DATA DESC';


   dbProcurarProduto.SearchQuery.Text    := ' SELECT * FROM VIEW_REFERENCIAS '+
                                            ' WHERE'+
                                            ' EMPRESA='+FSistema.Empresa.ToString+
                                            ' AND   '+
                                            ' %WHERE%   '+
                                            ' ORDER BY DESCRICAO ';

   db_Pedido.Open;
   db_PedidoItens.Open;
   db_PedidoItensUnt.Open;
   db_PedidoItensKit.Open;
   dbAndamentoPedido.Open;
   dbTipoDocumento.Open;
end;


procedure TFrmPedidoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   { if Key = VK_F2 then
    begin
      FrmFrameBotoes1SpbAdicionarClick(Sender);
    end
    else if Key = VK_F3 then
    begin
      FrmFrameBotoes1SpbProcurarClick(Sender);
    end
    else if Key = VK_F5 then
    begin
      FrmFrameBotoes1SpbImprimirClick(Sender);
    end
    else if Key = VK_F11 then
    begin
      ShellExecute(0, nil, PChar('CALC.EXE'), nil, nil, SW_ShowNORMAL);
    end
    else if Key = VK_ESCAPE then
    begin
      FrmFrameBotoes1SpbSairClick(Sender);
    end;   }
end;

procedure TFrmPedidoVenda.FormResize(Sender: TObject);
begin

  DimensionarGrid(DBGrid_Produtos,self);

end;

procedure TFrmPedidoVenda.FormShow(Sender: TObject);
begin
   if (fncUsuario_retCampo(nUsuario,'PEDIDOVENDAVERPRECOS')='N') Then
   begin
      grbTotais.Visible                   :=False;
      dbGrid_Produtos.Columns[3].Visible  :=False;
      dbGrid_Produtos.Columns[4].Visible  :=False;
      dbGrid_Produtos.Columns[5].Visible  :=False;
      FrmFrameBotoes1.SpbImprimir.Visible :=False;
   end;

   if (fncUsuario_retCampo(nUsuario,'PEDIDOVENDAALTERARPAGAMENTO')='N') Then
   begin
      EditPagamento.Enabled  :=False;
   end;


end;

procedure TFrmPedidoVenda.CalculaPedido;
begin
   SP_CalculaPedido.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
   SP_CalculaPedido.ParamByName('NCODIGO').AsInteger  :=  db_Pedido.FieldByName('CODIGO').AsInteger;
   SP_CalculaPedido.ExecProc;

   db_Pedido.Refresh;
   db_PedidoItens.Refresh;
   db_PedidoItensUnt.Refresh;
   db_PedidoItensKit.Refresh;
end;

Function TFrmPedidoVenda.ChecarProtecaoPedido : Boolean;
begin
  Result :=((db_Pedido.FieldByName('APROVADO').AsString = 'S')  or (db_Pedido.FieldByName('APROVADO').AsString = 'SIM' ));
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosColEnter(Sender: TObject);
begin
   if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
     not empty(db_PedidoItens.FieldByName('REFERENCIA').AsString) then
   // if dbGrid_Produtos.SelectedField=db_PedidoItens.FieldByName('REFERENCIA').AsString then
   Begin
      // SALVAR ITENS DO PEDIDO DE VENDA
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

      //prcAbriGrade;
   End;
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosColExit(Sender: TObject);
begin
  if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
       (dbGrid_Produtos.SelectedField.Text='') then
       begin
         Aviso('Insira um valor para quantidade.');
         dbGrid_Produtos.SelectedIndex := 3; // setfocus qtde
         dbGrid_Produtos.setfocus;
       end;
end;

procedure TFrmPedidoVenda.prcProcurarProduto;
begin
   if dbProcurarProduto.Execute then
   begin
      If not(db_PedidoItens.state in [dsEdit]) then
         db_PedidoItens.Edit;

      db_PedidoItens.FieldByName('REFERENCIA').AsString := dbProcurarProduto.ResultFieldAsString('REFERENCIA');
      If (db_PedidoItens.state in [dsEdit]) then
         db_PedidoItens.Post;
   end;
end;

procedure TFrmPedidoVenda.prcSetarDadosCliente;
begin
      if EditCliente.Execute = true then
      begin
        If not(db_Pedido.state in [dsEdit]) then
            db_Pedido.Edit;
        db_Pedido.FieldByName('ENTREGA_ENDERECO').AsString := EditCliente.ResultFieldAsString('ENDERECO');
        db_Pedido.FieldByName('ENTREGA_NUMERO').AsString   := EditCliente.ResultFieldAsString('NUMERO');
        db_Pedido.FieldByName('ENTREGA_BAIRRO').AsString   := EditCliente.ResultFieldAsString('BAIRRO');
        db_Pedido.FieldByName('ENTREGA_CONTATOS').AsString := EditCliente.ResultFieldAsString('CONTATO');
        db_Pedido.FieldByName('ENTREGA_EMAIL').AsString    := EditCliente.ResultFieldAsString('EMAIL');
      end;
      {else
      begin
        db_Pedido.FieldByName('ENTREGA_ENDERECO').AsString := dbeditPedidoProcurar.ResultFieldAsString('ENDERECO');
        db_Pedido.FieldByName('ENTREGA_NUMERO').AsString   := dbeditPedidoProcurar.ResultFieldAsString('NUMERO');
        db_Pedido.FieldByName('ENTREGA_BAIRRO').AsString   := dbeditPedidoProcurar.ResultFieldAsString('BAIRRO');
        db_Pedido.FieldByName('ENTREGA_CONTATOS').AsString := dbeditPedidoProcurar.ResultFieldAsString('CONTATO');
        db_Pedido.FieldByName('ENTREGA_EMAIL').AsString    := dbeditPedidoProcurar.ResultFieldAsString('EMAIL');
      end;  }
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosEditButtonClick(Sender: TObject);
begin

  strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
   // coluna produto
   // if ACol=1  then
   if dbGrid_Produtos.SelectedField = db_PedidoItensREFERENCIA then
   begin
      prcProcurarProduto;
   end;

   if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
     not empty(strReferencia) then
   Begin
      // SALVAR ITENS DO PEDIDO DE VENDA
      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Post;
      End;

   End;

end;

procedure TFrmPedidoVenda.dbGrid_ProdutosEnter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosExit(Sender: TObject);
begin
   CalculaPedido;
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );
  nPedidoVenda := db_Pedido.FieldByName('CODIGO').AsInteger;
  nTabelaPreco := db_Pedido.FieldByName('TABELA').AsInteger;

   // ativado somente se o cursor estive na coluna QUANTIDADE
   IF Key = VK_F2 Then
   begin
      // se o cursor estiver posicionado na coluna quantidade
      if (dbGrid_Produtos.SelectedField = db_PedidoItensQTDE) and
        not empty(strReferencia) then
      Begin

      End;

      // se o cursor estiver posicionado na coluna Valor Unit�rio
      if (dbGrid_Produtos.SelectedField = db_PedidoItensVLR_UNIT) and
        not empty(strReferencia) then
      Begin

      End;
   End
   else IF Key = VK_F8 Then
   begin
      prcProcurarProduto;
   end
   else IF Key = VK_DELETE Then
   begin
     // if ACol=1  then
     if dbGrid_Produtos.SelectedField = db_PedidoItensREFERENCIA then
     begin
      // vincular tecidos na referencia
      If not(db_PedidoItens.state in [dsEdit]) then
         db_PedidoItens.Edit;

      If (db_PedidoItens.State in [dsedit, dsinsert]) then
      Begin
         db_PedidoItens.Delete;
         dbGrid_Produtos.Refresh;
      End;
     end;
   end
   else if Key = VK_RETURN then
    begin
      dbGrid_Produtos.Perform(WM_KEYDOWN, VK_TAB, 0);
    end
    else if Key = VK_F4 then
    begin
      FrmFrameBotoes1SpbEditarClick(Sender);
      if not ChecarProtecaoPedido then
        FrmFrameBotoes1SpbSalvarClick(Sender);
    end;
end;

procedure TFrmPedidoVenda.dbGrid_ProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmPedidoVenda.db_PedidoAfterDelete(DataSet: TDataSet);
begin
   //ChecarProtecaoPedido;
   if ChecarProtecaoPedido then
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options - [dgEditing];
   end
   else
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options + [dgEditing];
   end;


end;

procedure TFrmPedidoVenda.db_PedidoAfterPost(DataSet: TDataSet);
Var
  mID : Integer;
begin
  mID :=db_Pedido.FieldByName('CODIGO').AsInteger;

  db_Pedido.Close;
  db_PedidoItens.Close;
  db_Pedido.ParamByName('CODIGO').AsInteger := mID;
  db_Pedido.Open;
  db_PedidoItens.Open;
  db_PedidoItens.refresh;

  CalculaPedido;
  db_PedidoItens.Open;
  db_PedidoItens.refresh;
end;

procedure TFrmPedidoVenda.db_PedidoAfterScroll(DataSet: TDataSet);
begin
   //ChecarProtecaoPedido;
   if ChecarProtecaoPedido then
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options - [dgEditing];
   end
   else
   begin
      dbGrid_Produtos.Options := dbGrid_Produtos.Options + [dgEditing];
   end;

end;

procedure TFrmPedidoVenda.db_PedidoBeforePost(DataSet: TDataSet);
begin
   db_Pedido.ParamByName('CODIGO').AsInteger := db_Pedido.FieldByName('CODIGO').AsInteger;

   if db_Pedido.FieldByName('DOCUMENTO').AsString = '' then
   begin
      db_Pedido.FieldByName('DOCUMENTO').AsString :=
        IntTostr(db_Pedido.FieldByName('CODIGO').AsInteger);
   end;

   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente � obrigat�rio');
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento � obrigat�rio');
      Abort;
   end;

end;

procedure TFrmPedidoVenda.db_PedidoCLIENTEChange(Sender: TField);
var
  mIDFPagto : Integer;
begin
   mIDFPagto := 0;
   mIDFPagto := GetClienteFormaPagto(db_Pedido.FieldByName('CLIENTE').AsInteger);
   if mIDFPagto>0 then
     db_Pedido.FieldByName('FORMAPAGTO').AsInteger   := mIDFPagto;
   db_Pedido.FieldByName('VENDEDOR').AsInteger       := BuscaClienteVendedor(db_Pedido.FieldByName('CLIENTE').AsInteger);
   db_Pedido.FieldByName('TRANSPORTADORA').AsInteger := BuscaClienteTransportadora(db_Pedido.FieldByName('CLIENTE').AsInteger);

   if ChecarCreditoCliente(db_Pedido.FieldByName('CLIENTE').AsInteger) Then
   begin
      db_PedidoItens.Cancel;
      db_Pedido.Cancel;
      AvisoSistema('Venda n�o autorizada!'+#13+#10+
                   'O cliente que voc� selecionou est� com cr�dito bloqueado');
      Abort;
   end;

  if GetClienteCampo(db_Pedido.FieldByName('CLIENTE').AsInteger,'OBSERVACAO')>'' Then
     AvisoSistema(GetClienteCampo(db_Pedido.FieldByName('CLIENTE').AsInteger,'OBSERVACAO'));
end;

procedure TFrmPedidoVenda.db_PedidoDATAChange(Sender: TField);
begin
   db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime := db_Pedido.FieldByName('DATA').AsDateTime + (BaseDados.db_Parametros.FieldByName('PED_DIASENTREGA').AsInteger);
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterDelete(DataSet: TDataSet);
begin
   CalculaPedido;
end;

procedure TFrmPedidoVenda.db_PedidoItensAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBGrid_Produtos,self);

end;

procedure TFrmPedidoVenda.db_PedidoItensAfterPost(DataSet: TDataSet);
begin
//   db_PedidoItens.Close;
//   db_PedidoItens.Open;
   CalculaPedido;
end;

procedure TFrmPedidoVenda.db_PedidoItensBeforeInsert(DataSet: TDataSet);
begin
   if (db_Pedido.IsEmpty) then
   begin
      db_PedidoItens.Cancel;
      Informar('Primeiro voc� deve preencher os Dados Principais do Pedido.');
      abort;
   end;


end;

procedure TFrmPedidoVenda.db_PedidoItensBeforePost(DataSet: TDataSet);
begin

   db_PedidoItens.FieldByName('EMPRESA').AsInteger         := db_Pedido.FieldByName('EMPRESA').AsInteger;
   db_PedidoItens.FieldByName('CODIGO').AsInteger          := db_Pedido.FieldByName('CODIGO').AsInteger;
   db_PedidoItens.FieldByName('DATA').AsDateTime           := db_Pedido.FieldByName('DATA').AsDateTime;
   db_PedidoItens.FieldByName('CLIENTE').AsInteger         := db_Pedido.FieldByName('CLIENTE').AsInteger;
   db_PedidoItens.FieldByName('VENDEDOR').AsInteger        := db_Pedido.FieldByName('VENDEDOR').AsInteger;
   db_PedidoItens.FieldByName('TABELA').AsInteger          := db_Pedido.FieldByName('TABELA').AsInteger;
   db_PedidoItens.FieldByName('FORMAPAGTO').AsInteger      := db_Pedido.FieldByName('FORMAPAGTO').AsInteger;
   db_PedidoItens.FieldByName('TRANSPORTADORA').AsInteger  := db_Pedido.FieldByName('TRANSPORTADORA').AsInteger;
   db_PedidoItens.FieldByName('TIPO').AsString             := db_Pedido.FieldByName('TIPO').AsString;
   db_PedidoItens.FieldByName('APROVADO').AsString         := db_Pedido.FieldByName('APROVADO').AsString;
   db_PedidoItens.FieldByName('ORDEMPRODUCAO').AsInteger   := db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger;
   db_PedidoItens.FieldByName('PRODUZINDO').AsString       := db_Pedido.FieldByName('PRODUZINDO').AsString;
   db_PedidoItens.FieldByName('SELECIONADO').AsString      := db_Pedido.FieldByName('SELECIONADO').AsString;

end;


procedure TFrmPedidoVenda.db_PedidoItensREFERENCIAChange(Sender: TField);
begin

   strReferencia := UpperCase( Trim(db_PedidoItens.FieldByName('REFERENCIA').AsString) );

   if fncPedidoVendaExisteProduto(db_Pedido.FieldByName('CODIGO').AsInteger,strReferencia)  Then
   begin
      Aviso('Ja existe nesta grade produto com a mesma refer�ncia.');
      db_PedidoItens.Cancel;
      Abort;
   end;

   if ValidaReferencia(strReferencia)=false Then
   begin
      Aviso('Produto n�o existe no cadastro de produtos acabados [verifique na ficha t�cnica]');
      db_PedidoItens.Cancel;
      Abort;
   end;

   db_PedidoItens.FieldByName('DESCRICAO').AsString := fncReferenciaNome(strReferencia);
   //db_PedidoItens.FieldByName('TIPO_ITEM').AsString := GetProdutoCampo(strReferencia,'TIPO_PRODUTO');

   // Se foi informado tabela de pre�o, buscar na tabela de pre�o.
   if (db_Pedido.FieldByName('TABELA').AsInteger>0) and (bCalculoAutomatico=false) then
   begin

      // se o produto n�o existe na tebela de pre�os, avisar o usu�rio
      if ValidaReferenciaTabela(db_Pedido.FieldByName('TABELA').AsInteger,strReferencia)=false then
      begin
         If pergunta('A Refer�ncia '+strReferencia + ' n�o existe na Tabela de Pre�o '+EditTabelaNome.text +
                     sLineBreak+
                     sLineBreak+
                     'Deseja inserir automaticamente?'  )=True then
         Begin
            FrmTabelaPrecoValor := TFrmTabelaPrecoValor.Create(Self);
            FrmTabelaPrecoValor.EditTabela.Text         :=EditTabela.Text;
            FrmTabelaPrecoValor.EditTabelaNome.Text     :=EditTabelaNome.Text;
            FrmTabelaPrecoValor.EditReferencia.Text     :=strReferencia;
            FrmTabelaPrecoValor.EditReferenciaNome.Text :=fncReferenciaNome(strReferencia);

            if FrmTabelaPrecoValor.ShowModal=mrOk then
            begin
               db_TabelaReferencia.Close;
               db_TabelaReferencia.ParamByName('CODIGO').AsInteger :=db_Pedido.FieldByName('TABELA').AsInteger;
               db_TabelaReferencia.Open;

               db_TabelaReferencia.Append;
               db_TabelaReferencia.FieldByName('CODIGO').AsInteger    :=db_Pedido.FieldByName('TABELA').AsInteger;
               db_TabelaReferencia.FieldByName('REFERENCIA').AsString :=strReferencia;
               db_TabelaReferencia.FieldByName('DESCRICAO').AsString  :=fncReferenciaNome(strReferencia);
               db_TabelaReferencia.FieldByName('PRC_VENDA').AsFloat   :=nValorDigitado;
               db_TabelaReferencia.Post;
               db_TabelaReferencia.Close;

               db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);
            end;
         End
      end
      else
         db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);


   end
   else
   begin
      db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(strReferencia);
   end;

end;

procedure TFrmPedidoVenda.BitBtn1Click(Sender: TObject);
begin

   If  not (db_Pedido.State in [dsedit, dsinsert]) then
   Begin
      informar('N�o est� em modo de edi��o');
      exit;
   End;


   FrmPedidoVendaParcial:=TFrmPedidoVendaParcial.Create(Self);
   FrmPedidoVendaParcial.ShowModal;

end;

procedure TFrmPedidoVenda.BtnRecalcularClick(Sender: TObject);
begin

   bCalculoAutomatico:=True;

   if pergunta('Deseja refazer todos os valores?')=false then
      exit;

   Try
      ProgressBar1.Max        :=0;
      ProgressBar1.Position   :=0;

      ProgressBar1.Max        :=db_PedidoItens.RecordCount;
      db_PedidoItens.First;

      While not db_PedidoItens.eof do
      begin
         db_PedidoItens.Edit;
         // Se foi informado tabela de pre�o, buscar na tabela de pre�o.
         if (db_Pedido.FieldByName('TABELA').AsInteger>0) then
         begin
            db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoTabela(db_Pedido.FieldByName('TABELA').AsInteger,db_PedidoItens.FieldByName('REFERENCIA').AsString);
         end
         else
         begin
            db_PedidoItens.FieldByName('VLR_UNIT').AsFloat :=   RetornaReferenciaPrecoVenda(db_PedidoItens.FieldByName('REFERENCIA').AsString);
         end;
         db_PedidoItens.Post;

         ProgressBar1.Position   := ProgressBar1.Position + 1;
         Application.ProcessMessages;
         db_PedidoItens.Next;

      end;

   Finally
      ProgressBar1.Position   :=0;
      bCalculoAutomatico:=False;
      AvisoSistema('Recalculo efetuado com sucesso');
   End;

end;

procedure TFrmPedidoVenda.db_PedidoNewRecord(DataSet: TDataSet);
begin

   db_Pedido.FieldByName('DATA').AsDateTime              := Date;
   //db_Pedido.FieldByName('CLIENTE').AsInteger            := 0;
   //db_Pedido.FieldByName('VENDEDOR').AsInteger           := 0;
   //db_Pedido.FieldByName('TABELA').AsInteger             := 0;
   //db_Pedido.FieldByName('FORMAPAGTO').AsInteger         := 0;
   //db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger      := 0;
   //db_Pedido.FieldByName('TRANSPORTADORA').AsInteger     := 0;
   db_Pedido.FieldByName('TIPO').AsString                := 'VENDA';
   db_Pedido.FieldByName('DATA_ENTREGA').AsDateTime      := db_Pedido.FieldByName('DATA').AsDateTime +     (BaseDados.db_Parametros.FieldByName('PED_DIASENTREGA').AsInteger);
   db_Pedido.FieldByName('STATUS').AsString              := 'N';
   db_Pedido.FieldByName('APROVADO').AsString            := 'N';
   db_Pedido.FieldByName('PRODUZINDO').AsString          := 'N';
   db_Pedido.FieldByName('SELECIONADO').AsString         := 'N';
   db_Pedido.FieldByName('IMPRESSO').AsString            := 'N';
   db_Pedido.FieldByName('FORMAPAGTO').AsInteger         := BaseDados.db_Parametros.FieldByName('IDFPAGTOPADRAO').AsInteger;
   db_Pedido.FieldByName('OBSERVACAO').AsString          := BaseDados.db_Parametros.FieldByName('PED_MSG').AsString;
end;

procedure TFrmPedidoVenda.ClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F8 then
  begin
     prcSetarDadosCliente;
  end
  else if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmPedidoVenda.EditClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmPedidoVenda.EditNomeClienteChange(Sender: TObject);
begin
  prcSetarDadosCliente;
end;

procedure TFrmPedidoVenda.EditObservacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    dbGrid_Produtos.SetFocus;
  end;
end;

procedure TFrmPedidoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if db_Pedido.FieldByName('QTDE_TOTAL').AsInteger<=0 Then
   begin
      if (db_Pedido.active) and not (db_Pedido.IsEmpty)  then
        db_Pedido.delete;
   end;
   if (db_PedidoItens.active) and (db_PedidoItens.IsEmpty) then
   begin
         if (db_Pedido.active) and not (db_Pedido.IsEmpty)  then
           db_Pedido.delete;
   end;
   FrmPrincipal.actVendasPedidosEmitir.Enabled := True;
   dbAndamentoPedido.close;
   dbTipoDocumento.close;

   //FreeAndNil(FrmPedidoVenda);
   Action:=Cafree;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   check_endereco := true;

   grpPedidos.Enabled :=True;
   db_Pedido.close;
   db_PedidoItens.close;

   db_Pedido.ParamByName('CODIGO').Clear;

   db_Pedido.Open;
   db_PedidoItens.Open;

   ChecarProtecaoPedido;

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   db_Pedido.ParamByName('CODIGO').Clear;
   EditCliente.SetFocus;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   db_PedidoItens.Cancel;
   db_Pedido.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   if not FProgramador  then
   begin
     if (db_Pedido.FieldByName('PRODUZINDO').AsString = 'S') or
       (db_Pedido.FieldByName('PRODUZINDO').AsString = 'SIM') then
     Begin
        AvisoSistema('Pedido j� foi enviado para Produ��o e n�o pode ser editado. ');
        abort;
     End;

     if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
       (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
     Begin
        AvisoSistema('Pedido j� foi faturado e n�o pode ser editado. ');
        abort;
     End;

     if ChecarProtecaoPedido then
     begin

        AvisoSistema('Pedido n�o pode ser alterado. Est� aprovado para faturamento!'+#13+#10+
                     'Para alterar, � necess�rio que o responsavel desaprove (reabra) o pedido '+
                     'para que voce possa alterar os dados.');
        Exit;
     end;
   end;

   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   if not FProgramador  then
   begin
     if (db_Pedido.FieldByName('PRODUZINDO').AsString = 'S') or
       (db_Pedido.FieldByName('PRODUZINDO').AsString = 'SIM') then
     Begin
        AvisoSistema('Pedido j� foi enviado para Produ��o e n�o pode ser excluido. ');
        abort;
     End;

     if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
       (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
     Begin
        AvisoSistema('Pedido j� foi faturado e n�o pode ser excluido. ');
        abort;
     End;

     if ChecarProtecaoPedido then
     begin

        AvisoSistema('Pedido n�o pode ser deletado. Est� aprovado para faturamento!'+#13+#10+
                     'Para alterar, � necess�rio que o responsavel desaprove (reabra) o pedido '+
                     'para que voce possa alterar os dados.');
        Exit;
     end;
   end;

   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
var
  mGrade : Boolean;
begin
  mGrade := False;

  if db_Pedido.IsEmpty then
  begin
    Aviso('Sem dados para imprimir.');
    exit;
  end;

  if (FParametros.Quantificar='GRADE') then
  begin
    if MessageDialog2('Imprimir com grade ou sem grade?', mtConfirmation, mbOKCancel,
      ['Com Grade', 'Sem Grade']) = mrOk then
      mGrade := True
    else
      mGrade := False;
  end;

   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   db_PedidoVenda.Close;
   db_PedidoVenda.Open;

   {db_PedidoGrade.close;
   db_PedidoGrade.ParamByName('CODIGO').AsInteger  := db_Pedido.FieldByName('CODIGO').AsInteger;
   db_PedidoGrade.Open;}

   prcFastReportEmailConfigurar( fncBuscaClienteEmail(db_Pedido.FieldByName('CLIENTE').AsInteger) );
   if (FParametros.Quantificar='NORMAL') then
   begin
     if (FParametros.VisualizarComprovante) then
     begin
       //FrxPedidoVendaSemGrade.ShowReport();
       Try
        if FrmImpressao=nil then
          FrmImpressao := TFrmImpressao.Create(Self);

        FrmImpressao.relatorio:=FrxPedidoVendaSemGrade;
        FrmImpressao.ShowModal();
      Finally
        FreeAndNil(FrmImpressao);
      end;
     end;
   end
   else
   begin
       FrxPedidoVendaSemGrade.PrepareReport;
       FrxPedidoVendaSemGrade.PrintOptions.ShowDialog := False;
       FrxPedidoVendaSemGrade.Print;
   end;

   if (FParametros.Quantificar='GRADE') then
   begin
     if mGrade then
       FrxPedidoVendaGrade.ShowReport();

   if not mGrade then
       FrxPedidoVendaSemGrade.ShowReport();
   end;
end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   check_endereco := false;

   if dbeditPedidoProcurar.Execute then
   begin
      grpPedidos.Enabled :=True;

      db_Pedido.Cancel;
      db_PedidoItens.Cancel;

      db_PedidoItens.close;
      db_Pedido.close;
      db_Pedido.ParamByName('CODIGO').Clear;
      db_Pedido.ParamByName('CODIGO').AsInteger := 0;
      db_Pedido.ParamByName('CODIGO').AsInteger := dbeditPedidoProcurar.ResultFieldAsInteger('CODIGO');
      db_Pedido.Open;

      db_PedidoItens.Open;
      FrmFrameBotoes1.SpbCancelarClick(Sender);
   end;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);
   //close;

end;

procedure TFrmPedidoVenda.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  try
     //prcStatusMessage('Gravando Pedido de Venda','Gravando Pedido...');
     FrmFrameBotoes1.SpbSalvarClick(Sender);
     If (db_PedidoItens.State in [dsedit, dsinsert]) then
     Begin
        db_PedidoItens.Post;
     End;
     CalculaPedido;
     FrmFrameBotoes1SpbImprimirClick(Sender);
  finally
    //prcStatusMessage('','',false);
  end;
end;

procedure TFrmPedidoVenda.ImprimirPedidocomvalores1Click(Sender: TObject);
begin
   FrmFrameBotoes1SpbImprimirClick(Sender);
end;


procedure TFrmPedidoVenda.AdvGroupBox4Exit(Sender: TObject);
begin
   if db_Pedido.FieldByName('CLIENTE').AsInteger <1 then
   begin
      aviso('Campo Cliente � obrigat�rio');
      EditCliente.SetFocus;
      Abort;
   end;

   if db_Pedido.FieldByName('FORMAPAGTO').AsInteger <1 then
   begin
      aviso('Campo Forma de Pagamento � obrigat�rio');
      EditPagamento.SetFocus;
      Abort;
   end;

   // SALVAR ITENS DO PEDIDO DE VENDA
   If (db_PedidoItens.State in [dsedit, dsinsert]) then
   Begin
      db_PedidoItens.Post;
   End;

end;

procedure TFrmPedidoVenda.EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end
  else if Key = VK_F2 then
  begin
    FrmFrameBotoes1SpbAdicionarClick(Sender);
  end
  else if Key = VK_F3 then
  begin
    FrmFrameBotoes1SpbProcurarClick(Sender);
  end
  else if Key = VK_F5 then
  begin
    FrmFrameBotoes1SpbImprimirClick(Sender);
  end
  else if Key = VK_F11 then
  begin
    ShellExecute(0, nil, PChar('CALC.EXE'), nil, nil, SW_ShowNORMAL);
  end
  else if Key = VK_ESCAPE then
  begin
    FrmFrameBotoes1SpbSairClick(Sender);
  end;
end;

end.




