{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEtiquetaCriarGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls, Spin, DB, 
  FireDAC.Comp.Client, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFrmtiquetaCriarGrade = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    gbxProdutos: TGroupBox;
    dsEtiquetasCor: TDataSource;
    dbEtiquetasCor: TFDQuery;
    dbEtiquetasTamanho: TFDQuery;
    dsEtiquetasTamanho: TDataSource;
    EditReferencia: TLabeledEdit;
    EditCor: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    NumQtdeEtiquetas: TSpinEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    dbProcurarFichaTecnica: TIDBEditDialog;
    BitBtn1: TBitBtn;
    db_dados: TFDQuery;
    ds_dados: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditReferenciaExit(Sender: TObject);
    procedure EditCorExit(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure DadosCortamanho;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmtiquetaCriarGrade: TFrmtiquetaCriarGrade;

implementation

uses FEtiquetasWindows, Global, Biblioteca, SQLServer, FPrincipal;

{$R *.dfm}

procedure TFrmtiquetaCriarGrade.BitBtn1Click(Sender: TObject);
var
   ncontador,
   ntotalizador: integer;
begin
   ntotalizador :=0;

   ntotalizador    :=NumQtdeEtiquetas.Value;


   strProduto     := AllTrim(EditReferencia.text);
   if strProduto='' then
      exit;

   strCor         := EditCor.text;
   strTamanho     := DBLookupComboBox1.text;

   FOR ncontador := 1 TO ntotalizador DO
   BEGIN
      db_dados.append;
      db_dados.FieldByName('CODIGOPRODUTO').AsString   :=  strProduto;
      db_dados.FieldByName('CODIGOBARRA').AsString     :=  fncIdentificadorReferenciaTXT(strProduto,strCor,strTamanho);
      db_dados.FieldByName('DESCRICAO').AsString       :=  GetProdutoCampo(strProduto,'DESCRICAO');
      db_dados.FieldByName('UNIDADE').AsString         :=  GetProdutoCampo(strProduto,'UNIDADE');
      db_dados.FieldByName('COR').AsString             := strCor;
      db_dados.FieldByName('TAMANHO').AsString         := strTamanho;
      db_dados.FieldByName('PRECO').AsFloat            := 0;
      db_dados.FieldByName('QUANTIDADE').AsInteger     :=  1;
      db_dados.POST;
   END;


end;

procedure TFrmtiquetaCriarGrade.DadosCortamanho;
begin

   // classificar etiquetas
   strProduto := AllTrim(EditReferencia.text);


   dbEtiquetasCor.Close;
   dbEtiquetasCor.ParamByName('SREFERENCIA').AsString := strProduto;
   dbEtiquetasCor.Open;

   strCor   := dbEtiquetasCor.FieldByName('COR_CODIGO').AsString;

   dbEtiquetasTamanho.Close;
   dbEtiquetasTamanho.ParamByName('SREFERENCIA').AsString := strProduto;
   dbEtiquetasTamanho.ParamByName('NCOR').AsInteger := StrToIntDef(strCor,0);
   dbEtiquetasTamanho.Open;

end;

procedure TFrmtiquetaCriarGrade.Button2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmtiquetaCriarGrade.Button3Click(Sender: TObject);
begin
    db_dados.close;
    db_dados.sql.clear;
    db_dados.sql.add(' delete from CONFIG_ETIQUETAS01_TEMP  ');
    db_dados.ExecSQL;


    db_dados.close;
    db_dados.sql.clear;
    db_dados.sql.add(' select * from CONFIG_ETIQUETAS01_TEMP  ');
    db_dados.open;
    db_dados.Refresh;

    if not db_dados.isempty then
    begin
      db_dados.First;
      while not db_dados.eof do
         db_dados.Delete;
    end;

    db_dados.close;
    db_dados.open;

end;


procedure TFrmtiquetaCriarGrade.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmtiquetaCriarGrade.EditCorExit(Sender: TObject);
begin
DadosCortamanho;
end;

procedure TFrmtiquetaCriarGrade.EditReferenciaExit(Sender: TObject);
begin
DadosCortamanho;
end;

procedure TFrmtiquetaCriarGrade.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin
      if dbProcurarFichaTecnica.Execute then
         EditReferencia.text := dbProcurarFichaTecnica.ResultFieldAsString('REFERENCIA');
   end;

end;

procedure TFrmtiquetaCriarGrade.FormCreate(Sender: TObject);
begin
      db_dados.open;

end;

end.
