{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FTransportadoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, cxDBEdit, Vcl.Mask,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  FFrameBotoes, FFrameBarra,
  Winapi.ShellAPI,
  Classe.Global,
  CoreTableClass, dxDateRanges;

type
   TFrmTransportadoras = class(TForm)
      DS_Transportadora: TDataSource;
      db_Transportadora: TFDQuery;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
    db_TransportadoraCODIGO: TIntegerField;
    db_TransportadoraFOTO: TBlobField;
    db_TransportadoraTIPO: TStringField;
    db_TransportadoraCLASSIFICACAO: TStringField;
    db_TransportadoraDATA: TSQLTimeStampField;
    db_TransportadoraDATA_NASCIMENTO: TSQLTimeStampField;
    db_TransportadoraCPF_CNPJ: TStringField;
    db_TransportadoraNOME: TStringField;
    db_TransportadoraNOME_FANTASIA: TStringField;
    db_TransportadoraCONTATO: TStringField;
    db_TransportadoraRG_IE: TStringField;
    db_TransportadoraORG_EMISSOR: TStringField;
    db_TransportadoraSEXO: TStringField;
    db_TransportadoraFILIACAO_NOMEPAI: TStringField;
    db_TransportadoraFILIACAO_NOMEMAE: TStringField;
    db_TransportadoraESTADO_CIVIL: TStringField;
    db_TransportadoraCONJUGE_CPF: TStringField;
    db_TransportadoraCONJUGE_NOME: TStringField;
    db_TransportadoraCXP: TStringField;
    db_TransportadoraCEP: TStringField;
    db_TransportadoraENDERECO: TStringField;
    db_TransportadoraNUMERO: TStringField;
    db_TransportadoraCOMPLEMENTO: TStringField;
    db_TransportadoraBAIRRO: TStringField;
    db_TransportadoraIDCIDADE: TIntegerField;
    db_TransportadoraNOMECIDADE: TStringField;
    db_TransportadoraCODIGOUF: TIntegerField;
    db_TransportadoraUF: TStringField;
    db_TransportadoraDDD_FONE: TIntegerField;
    db_TransportadoraFONE: TStringField;
    db_TransportadoraDDD_FAX: TIntegerField;
    db_TransportadoraFAX: TStringField;
    db_TransportadoraDDD_CELULAR: TIntegerField;
    db_TransportadoraCELULAR: TStringField;
    db_TransportadoraDDD_VOIP: TIntegerField;
    db_TransportadoraVOIP: TStringField;
    db_TransportadoraEMAIL: TStringField;
    db_TransportadoraSITE: TStringField;
    db_TransportadoraREFERENCIA: TStringField;
    db_TransportadoraVENDEDOR: TIntegerField;
    db_TransportadoraREGIAO: TIntegerField;
    db_TransportadoraTRANSPORTADORA: TIntegerField;
    db_TransportadoraESTRANGEIRO: TStringField;
    db_TransportadoraNATURALIDADE: TStringField;
    db_TransportadoraCREDITO_LIMITE: TFloatField;
    db_TransportadoraCREDITO_UTILIZADO: TFloatField;
    db_TransportadoraCREDITO_DISPONIVEL: TFloatField;
    db_TransportadoraBLOQUEADO: TStringField;
    db_TransportadoraPLANO_CONTAS: TStringField;
    db_TransportadoraCFOP: TIntegerField;
    db_TransportadoraCENTROCUSTO: TIntegerField;
    db_TransportadoraENDCOB_ENDERECO: TStringField;
    db_TransportadoraENDCOB_BAIRRO: TStringField;
    db_TransportadoraENDCOB_DDD: TIntegerField;
    db_TransportadoraENDCOB_FONE: TStringField;
    db_TransportadoraENDCOB_CEP: TStringField;
    db_TransportadoraENDCOB_CXP: TStringField;
    db_TransportadoraENDCOB_IDCIDADE: TIntegerField;
    db_TransportadoraENDCOB_NOMECIDADE: TStringField;
    db_TransportadoraENDCOB_UF: TStringField;
    db_TransportadoraPROTESTO: TStringField;
    db_TransportadoraPROTESTO_DATA: TSQLTimeStampField;
    db_TransportadoraETIQUETA: TStringField;
    db_TransportadoraNACIONALIDADE: TStringField;
    db_TransportadoraATIVO: TStringField;
    db_TransportadoraCONVENIO: TIntegerField;
    db_TransportadoraATIVIDADE: TIntegerField;
    db_TransportadoraOBSERVACAO: TStringField;
    db_TransportadoraOBS_SERASA: TStringField;
    db_TransportadoraOBS_SINTEGRA: TStringField;
    db_TransportadoraCONJUGE_DNASCIMENTO: TStringField;
    db_TransportadoraCONJUGE_EMPRESA: TStringField;
    db_TransportadoraCONJUGE_FONE: TStringField;
    db_TransportadoraCONJUGE_ENDERECO: TStringField;
    db_TransportadoraCONJUGE_CIDADE: TStringField;
    db_TransportadoraCONJUGE_UF: TStringField;
    db_TransportadoraCONJUGE_CARGO: TStringField;
    db_TransportadoraCONJUGE_TEMPO: TStringField;
    db_TransportadoraCONJUGE_SALARIO: TFloatField;
    db_TransportadoraEMPREGO_EMPRESA: TStringField;
    db_TransportadoraEMPREGO_FONE: TStringField;
    db_TransportadoraEMPREGO_ENDERECO: TStringField;
    db_TransportadoraEMPREGO_CIDADE: TStringField;
    db_TransportadoraEMPREGO_UF: TStringField;
    db_TransportadoraEMPREGO_CARGO: TStringField;
    db_TransportadoraEMPREGO_TEMPO: TStringField;
    db_TransportadoraEMPREGO_SALARIO: TFloatField;
    db_TransportadoraCOMISSAO: TFloatField;
    db_TransportadoraCOMISSIONAR: TStringField;
    db_TransportadoraSALARIO: TFloatField;
    db_TransportadoraTRANSPORTADORA_PLACA: TStringField;
    db_TransportadoraTRANSPORTADORA_CIDADE: TStringField;
    db_TransportadoraTRANSPORTADORA_UF: TStringField;
    TransportadoraProcurar: TIDBEditDialog;
    pgPrincipal: TPageControl;
    TabPrincipal: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label43: TLabel;
    lblCNPJ: TLabel;
    lblIE: TLabel;
    Label3: TLabel;
    Label40: TLabel;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    GroupBox4: TGroupBox;
    GRPEndereco2: TGroupBox;
    Label8: TLabel;
    EditEndereco2: TDBEdit;
    GRPBairroCidadeUF2: TGroupBox;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label35: TLabel;
    EditBairro2: TDBEdit;
    EditCidade2: TDBEdit;
    EditUF2: TDBEdit;
    EditCodCidade2: TDBEdit;
    GroupBox8: TGroupBox;
    Label29: TLabel;
    Label31: TLabel;
    EditNumero: TDBEdit;
    DBEdit8: TDBEdit;
    EditCEP: TIDBEditDialog;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    EdRGInscrEst: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit59: TDBEdit;
    rgpAtivo: TDBRadioGroup;
    TabAnexos: TTabSheet;
    TabObservacoes: TTabSheet;
    GroupBox20: TGroupBox;
    DBRichEdit1: TDBRichEdit;
    dbClienteAlertas: TFDQuery;
    dsClienteAlertas: TDataSource;
    dbClienteAnexos: TFDQuery;
    dsClienteAnexos: TDataSource;
    rgTipo: TDBRadioGroup;
    OpenDialogArquivos: TOpenDialog;
    Panel6: TPanel;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    gbAnexosObservacao: TGroupBox;
    DBRichEdit2: TDBRichEdit;
    Splitter2: TSplitter;
    cxGrid1: TcxGrid;
    cxGridAnexo: TcxGridDBTableView;
    cxGridAnexoArquivo: TcxGridDBColumn;
    cxGridAnexoUsuario: TcxGridDBColumn;
    cxGridAnexoDataAnexo: TcxGridDBColumn;
    cxGridAnexoDataAlteracao: TcxGridDBColumn;
    cxGridAnexoTipoArquivo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    EditCNPJ: TcxDBMaskEdit;
    db_TransportadoraATIVODATA: TSQLTimeStampField;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure Sair1Click(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_TransportadoraNewRecord(DataSet: TDataSet);
    procedure db_TransportadoraAfterPost(DataSet: TDataSet);
    procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_TransportadoraATIVOChange(Sender: TField);
    procedure rgTipoChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmTransportadoras: TFrmTransportadoras;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios;

{$R *.DFM}

procedure TFrmTransportadoras.FormCreate(Sender: TObject);
begin
  FrmFrameBotoes1.DataSource := DS_Transportadora;
  TCoreTables.abrir([db_Transportadora,dbClienteAlertas,dbClienteAnexos]);
  pgPrincipal.ActivePageIndex :=0;
end;

procedure TFrmTransportadoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   TCoreTables.Fechar([db_Transportadora,dbClienteAlertas,dbClienteAnexos]);
   Action := cafree;
end;


procedure TFrmTransportadoras.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   rgTipo.SetFocus;
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   TCoreTables.Cancelar([db_Transportadora,dbClienteAlertas,dbClienteAnexos]);
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if TransportadoraProcurar.Execute then
   Begin
      db_Transportadora.Close;
      db_Transportadora.ParamByName('CODIGO').AsInteger := TransportadoraProcurar.ResultFieldAsInteger('CODIGO');;
      db_Transportadora.Open;
   End;
end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTransportadoras.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   TCoreTables.Gravar([db_Transportadora,dbClienteAlertas,dbClienteAnexos]);
end;

procedure TFrmTransportadoras.rgTipoChange(Sender: TObject);
begin
  if not (db_Transportadora.state in [dsEdit,dsInsert]) then
    Exit;
  EditCNPJ.Clear;
  case rgTipo.ItemIndex of
    0 : EditCNPJ.Properties.EditMask:= '99.999.999/9999-99';
    1 : EditCNPJ.Properties.EditMask:= '999.999.999-99';
  end;
  EditCNPJ.SetFocus;
end;

procedure TFrmTransportadoras.BitBtn4Click(Sender: TObject);
var
  fStream: TFileStream;
begin

  if not OpenDialogArquivos.Execute then
    exit;

  try
    fStream:= TFileStream.Create(OpenDialogArquivos.FileName, fmOpenRead);
    fStream.Position := 0;

    dbClienteAnexos.Append;
    TBlobField(dbClienteAnexos.FieldByName('ARQUIVOANEXO')).LoadFromStream(fStream);
    dbClienteAnexos.FieldByName('DATAALTERACAO').AsDateTime :=Now;
    dbClienteAnexos.FieldByName('NOMEARQUIVO').AsString :=ExtractFileName(OpenDialogArquivos.FileName);
    dbClienteAnexos.FieldByName('TIPOARQUIVO').AsString :=ExtractFileExt(OpenDialogArquivos.FileName);
    if (dbClienteAnexos.State in [dsedit,dsinsert]  ) then
      dbClienteAnexos.Post;
  finally
    fStream.Free;

  end;

end;

procedure TFrmTransportadoras.db_TransportadoraAfterPost(DataSet: TDataSet);
begin
   db_Transportadora.ParamByname('CODIGO').AsInteger := db_Transportadora.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmTransportadoras.db_TransportadoraATIVOChange(Sender: TField);
begin
  db_Transportadora.FieldByName('ATIVODATA').AsDateTime :=Date;
end;

procedure TFrmTransportadoras.db_TransportadoraNewRecord(DataSet: TDataSet);
begin
   db_Transportadora.FieldByName('DATA').AsDateTime        := Date;
   db_Transportadora.FieldByName('CLASSIFICACAO').AsString :='J';
   db_Transportadora.FieldByName('TIPO').AsString          :='TRANSPORTADORA';
   db_Transportadora.FieldByName('BLOQUEADO').AsString     := 'N';

   db_Transportadora.FieldByName('IDCIDADE').AsInteger        := FParametros.Empresa.IDCidade;
   db_Transportadora.FieldByName('CODIGOUF').AsInteger        := FParametros.Empresa.IDUF;
   db_Transportadora.FieldByName('NOMECIDADE').AsString       := FParametros.Empresa.Cidade;
   db_Transportadora.FieldByName('UF').AsString               := FParametros.Empresa.UF;

end;

procedure TFrmTransportadoras.EditCodCidade2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=VK_HOME  then
   begin
     If pergunta('Acessar site do IBGE para Consulta de Município?')=false Then
        exit;
     strURL := 'http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm';
     ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
   end;
end;

procedure TFrmTransportadoras.Sair1Click(Sender: TObject);
begin
   Close;
end;

end.
