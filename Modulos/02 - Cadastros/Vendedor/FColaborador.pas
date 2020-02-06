{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FColaborador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxMaskEdit,
  cxDBEdit, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
  FFrameBotoes,
  Classe.Global,
  Winapi.ShellAPI;

type
   TFrmColaborador = class(TForm)
      GroupBox1: TGroupBox;
      DS_Vendedor: TDataSource;
      db_Vendedor: TFDQuery;
    FrmFrameBotoes1: TFrmFrameBotoes;
    FrmFrameBarra1: TFrmFrameBarra;
    dbEditPesquisar: TIDBEditDialog;
    db_VendedorCODIGO: TIntegerField;
    db_VendedorFOTO: TBlobField;
    db_VendedorTIPO: TStringField;
    db_VendedorCLASSIFICACAO: TStringField;
    db_VendedorDATA: TSQLTimeStampField;
    db_VendedorDATA_NASCIMENTO: TSQLTimeStampField;
    db_VendedorCPF_CNPJ: TStringField;
    db_VendedorNOME: TStringField;
    db_VendedorNOME_FANTASIA: TStringField;
    db_VendedorCONTATO: TStringField;
    db_VendedorRG_IE: TStringField;
    db_VendedorORG_EMISSOR: TStringField;
    db_VendedorSEXO: TStringField;
    db_VendedorFILIACAO_NOMEPAI: TStringField;
    db_VendedorFILIACAO_NOMEMAE: TStringField;
    db_VendedorESTADO_CIVIL: TStringField;
    db_VendedorCONJUGE_CPF: TStringField;
    db_VendedorCONJUGE_NOME: TStringField;
    db_VendedorCXP: TStringField;
    db_VendedorCEP: TStringField;
    db_VendedorENDERECO: TStringField;
    db_VendedorNUMERO: TStringField;
    db_VendedorCOMPLEMENTO: TStringField;
    db_VendedorBAIRRO: TStringField;
    db_VendedorIDCIDADE: TIntegerField;
    db_VendedorNOMECIDADE: TStringField;
    db_VendedorCODIGOUF: TIntegerField;
    db_VendedorUF: TStringField;
    db_VendedorDDD_FONE: TIntegerField;
    db_VendedorFONE: TStringField;
    db_VendedorDDD_FAX: TIntegerField;
    db_VendedorFAX: TStringField;
    db_VendedorDDD_CELULAR: TIntegerField;
    db_VendedorCELULAR: TStringField;
    db_VendedorDDD_VOIP: TIntegerField;
    db_VendedorVOIP: TStringField;
    db_VendedorEMAIL: TStringField;
    db_VendedorSITE: TStringField;
    db_VendedorREFERENCIA: TStringField;
    db_VendedorVENDEDOR: TIntegerField;
    db_VendedorREGIAO: TIntegerField;
    db_VendedorTRANSPORTADORA: TIntegerField;
    db_VendedorESTRANGEIRO: TStringField;
    db_VendedorNATURALIDADE: TStringField;
    db_VendedorCREDITO_LIMITE: TFloatField;
    db_VendedorCREDITO_UTILIZADO: TFloatField;
    db_VendedorCREDITO_DISPONIVEL: TFloatField;
    db_VendedorBLOQUEADO: TStringField;
    db_VendedorPLANO_CONTAS: TStringField;
    db_VendedorCFOP: TIntegerField;
    db_VendedorCENTROCUSTO: TIntegerField;
    db_VendedorENDCOB_ENDERECO: TStringField;
    db_VendedorENDCOB_BAIRRO: TStringField;
    db_VendedorENDCOB_DDD: TIntegerField;
    db_VendedorENDCOB_FONE: TStringField;
    db_VendedorENDCOB_CEP: TStringField;
    db_VendedorENDCOB_CXP: TStringField;
    db_VendedorENDCOB_IDCIDADE: TIntegerField;
    db_VendedorENDCOB_NOMECIDADE: TStringField;
    db_VendedorENDCOB_UF: TStringField;
    db_VendedorPROTESTO: TStringField;
    db_VendedorPROTESTO_DATA: TSQLTimeStampField;
    db_VendedorETIQUETA: TStringField;
    db_VendedorNACIONALIDADE: TStringField;
    db_VendedorATIVO: TStringField;
    db_VendedorCONVENIO: TIntegerField;
    db_VendedorATIVIDADE: TIntegerField;
    db_VendedorOBSERVACAO: TStringField;
    db_VendedorOBS_SERASA: TStringField;
    db_VendedorOBS_SINTEGRA: TStringField;
    db_VendedorCONJUGE_DNASCIMENTO: TStringField;
    db_VendedorCONJUGE_EMPRESA: TStringField;
    db_VendedorCONJUGE_FONE: TStringField;
    db_VendedorCONJUGE_ENDERECO: TStringField;
    db_VendedorCONJUGE_CIDADE: TStringField;
    db_VendedorCONJUGE_UF: TStringField;
    db_VendedorCONJUGE_CARGO: TStringField;
    db_VendedorCONJUGE_TEMPO: TStringField;
    db_VendedorCONJUGE_SALARIO: TFloatField;
    db_VendedorEMPREGO_EMPRESA: TStringField;
    db_VendedorEMPREGO_FONE: TStringField;
    db_VendedorEMPREGO_ENDERECO: TStringField;
    db_VendedorEMPREGO_CIDADE: TStringField;
    db_VendedorEMPREGO_UF: TStringField;
    db_VendedorEMPREGO_CARGO: TStringField;
    db_VendedorEMPREGO_TEMPO: TStringField;
    db_VendedorEMPREGO_SALARIO: TFloatField;
    db_VendedorCOMISSAO: TFloatField;
    db_VendedorCOMISSIONAR: TStringField;
    db_VendedorSALARIO: TFloatField;
    db_VendedorTRANSPORTADORA_PLACA: TStringField;
    db_VendedorTRANSPORTADORA_CIDADE: TStringField;
    db_VendedorTRANSPORTADORA_UF: TStringField;
    db_VendedorVALOR_SERVICOS: TFloatField;
    db_VendedorULTIMAVENDA_DATA: TSQLTimeStampField;
    db_VendedorULTIMAVENDA_ORIGEM: TStringField;
    db_VendedorATIVODATA: TSQLTimeStampField;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label70: TLabel;
    Label40: TLabel;
    Label33: TLabel;
    Label43: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    EdRazaoSocial: TDBEdit;
    EdFantasia: TDBEdit;
    EdRGInscrEst: TDBEdit;
    DBEdit59: TDBEdit;
    EditcodRegiao2: TIDBEditDialog;
    EditRegiao2: TEdit;
    DBEdit24: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox3: TGroupBox;
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
    EditTransportadora: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    EditConta_Credito: TIDBEditDialog;
    EditContaCorrente: TEdit;
    db_VendedorCONTACORRENTE: TIntegerField;
    rgTipo: TDBRadioGroup;
    Label5: TLabel;
    EditCNPJ: TcxDBMaskEdit;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure Sair1Click(Sender: TObject);
      procedure db_VendedorCEPChange(Sender: TField);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_VendedorCPF_CNPJChange(Sender: TField);
    procedure db_VendedorAfterPost(DataSet: TDataSet);
    procedure EditCodCidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgTipoChange(Sender: TObject);
    procedure db_VendedorNewRecord(DataSet: TDataSet);

   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmColaborador: TFrmColaborador;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, Classe.CEP,
  Classe.Cliente;

{$R *.DFM}

procedure TFrmColaborador.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_Vendedor;
   db_Vendedor.Open;

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   rgTipo.SetFocus;

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   Begin
      db_Vendedor.Close;
      db_Vendedor.ParamByName('CODIGO').AsInteger := dbEditPesquisar.ResultFieldAsInteger('CODIGO');;
      db_Vendedor.Open;
   End;
end;

procedure TFrmColaborador.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmColaborador.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmColaborador.rgTipoChange(Sender: TObject);
begin
  if not (db_Vendedor.state in [dsEdit,dsInsert]) then
    Exit;
  EditCNPJ.Clear;

  case rgTipo.ItemIndex of
    0 : EditCNPJ.Properties.EditMask:= '99.999.999/9999-99';
    1 : EditCNPJ.Properties.EditMask:= '999.999.999-99';
  end;

  EditCNPJ.SetFocus;
end;

procedure TFrmColaborador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Vendedor.Close;
   Action :=Cafree;
end;

procedure TFrmColaborador.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmColaborador.db_VendedorAfterPost(DataSet: TDataSet);
begin
   db_Vendedor.ParamByname('CODIGO').AsInteger := db_Vendedor.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmColaborador.db_VendedorCEPChange(Sender: TField);
begin
  TEndereco.SetCEPEndereco(db_Vendedor,db_Vendedor.FieldByName('CEP').AsString);
end;

procedure TFrmColaborador.db_VendedorCPF_CNPJChange(Sender: TField);
begin
//   db_Vendedor.FieldByName('CPF_CNPJ').AsString :=Formata_CNPJ_CPF(db_Vendedor.FieldByName('CPF_CNPJ').AsString);
end;

procedure TFrmColaborador.db_VendedorNewRecord(DataSet: TDataSet);
begin
   db_Vendedor.FieldByName('DATA').AsDateTime           := Date;
   db_Vendedor.FieldByName('CLASSIFICACAO').AsString    := UpperCase(strTipoPessoa);
   db_Vendedor.FieldByName('BLOQUEADO').AsString        := 'N';
   db_Vendedor.FieldByName('TIPO').AsString             := 'VENDEDOR';
   db_Vendedor.FieldByName('ATIVO').AsString            := 'S';
   db_Vendedor.FieldByName('COMISSIONAR').AsString      := 'S';

   db_Vendedor.FieldByName('IDCIDADE').AsInteger        := FParametros.Empresa.IDCidade;
   db_Vendedor.FieldByName('CODIGOUF').AsInteger        := FParametros.Empresa.IDUF;
   db_Vendedor.FieldByName('NOMECIDADE').AsString       := FParametros.Empresa.Cidade;
   db_Vendedor.FieldByName('UF').AsString               := FParametros.Empresa.UF;

end;

procedure TFrmColaborador.EditCodCidade2KeyDown(Sender: TObject;
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

end.
