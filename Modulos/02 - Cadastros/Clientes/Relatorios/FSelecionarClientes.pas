{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FSelecionarClientes;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, Grids,
   DBGrids, StdCtrls, ExtCtrls, Buttons, ImgList, 
   FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Classe.Global, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
   TFrmSelecionarClientes = class(TForm)
      Panel4: TPanel;
      Panel1: TPanel;
      RDSelecao: TRadioGroup;
      EditPesquisa: TLabeledEdit;
      DS_Dados: TDataSource;
      DB_Clientes: TFDQuery;
      DB_ClientesUpdate: TFDQuery;
    BtnDesmarcarTudo: TSpeedButton;
      Btn_Imprimir: TBitBtn;
      BtnSair: TBitBtn;
    BtnMarcarTudo: TSpeedButton;
    cxGridDados: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDadosColumn1: TcxGridDBColumn;
    cxGridDadosColumn2: TcxGridDBColumn;
    cxGridDadosColumn3: TcxGridDBColumn;
    cxGridDadosColumn4: TcxGridDBColumn;
    cxGridDadosColumn5: TcxGridDBColumn;
    cxGridDadosColumn6: TcxGridDBColumn;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure RDSelecaoClick(Sender: TObject);
      procedure EditPesquisaChange(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnDesmarcarTudoClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
    procedure BtnMarcarTudoClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
  FrmSelecionarClientes : TFrmSelecionarClientes;

implementation

uses FPrincipal, FRelEtiquetaCliente, Global, Biblioteca,
   FEtiquetaClienteSelecao;

{$R *.dfm}

procedure TFrmSelecionarClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      close;
end;

procedure TFrmSelecionarClientes.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   ScriptSQL := ' SELECT *  FROM CAD_CLIENTES ';
   ScriptSQL := ScriptSQL + ' WHERE ';

   If RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(NOME) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY NOME ';
   End;

   If RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(CPF_CNPJ) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY CPF_CNPJ ';
   End;

   If RDSelecao.ItemIndex = 2 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(VENDEDOR) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY VENDEDOR ';
   End;

   If RDSelecao.ItemIndex = 3 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(NOMECIDADE) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY NOMECIDADE, NOME ';
   End;

   If RDSelecao.ItemIndex = 4 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(UF) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY UF, NOME ';
   End;


   EditPesquisa.SetFocus;
   EditPesquisaChange(Sender);

end;

procedure TFrmSelecionarClientes.EditPesquisaChange(Sender: TObject);
begin
   DB_Clientes.close;
   DB_Clientes.SQL.Clear;
   DB_Clientes.SQL.Add(ScriptSQL);

   if not (RDSelecao.ItemIndex in [2,4]) then
      DB_Clientes.ParamByName('Procurar').AsString :=  '%' + EditPesquisa.Text + '%'
   else
      DB_Clientes.ParamByName('Procurar').AsString :=EditPesquisa.Text;

   DB_Clientes.Open;

end;

procedure TFrmSelecionarClientes.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);
   EditPesquisaChange(Sender);
   EditPesquisa.SetFocus;

end;

procedure TFrmSelecionarClientes.BtnDesmarcarTudoClick(Sender: TObject);
begin

   DB_ClientesUpdate.close;
   DB_ClientesUpdate.SQL.Clear;
   DB_ClientesUpdate.SQL.Add('UPDATE  CAD_CLIENTES SET ETIQUETA=' + QuotedStr('N') );
   DB_ClientesUpdate.ExecSQL;

   DB_Clientes.Refresh;

end;

procedure TFrmSelecionarClientes.BtnMarcarTudoClick(Sender: TObject);
begin

   DB_ClientesUpdate.close;
   DB_ClientesUpdate.SQL.Clear;
   DB_ClientesUpdate.SQL.Add('UPDATE  CAD_CLIENTES SET ETIQUETA=' + QuotedStr('S') );
   DB_ClientesUpdate.SQL.Add(' WHERE ');

   If RDSelecao.ItemIndex = 0 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(NOME)='+QuotedStr('%' + EditPesquisa.Text + '%'));
   End;

   If RDSelecao.ItemIndex = 1 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(CPF_CNPJ)='+QuotedStr('%' + EditPesquisa.Text + '%'));
   End;

   If RDSelecao.ItemIndex = 2 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(VENDEDOR)='+QuotedStr('%' + EditPesquisa.Text + '%'));
   End;

   If RDSelecao.ItemIndex = 3 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(NOMECIDADE)='+QuotedStr('%' + EditPesquisa.Text + '%'));
   End;

   If RDSelecao.ItemIndex = 4 Then
   Begin
      DB_ClientesUpdate.SQL.Add(' UPPER(UF)='+QuotedStr('%' + EditPesquisa.Text + '%'));
   End;

////   FConexao.ExecSQLScalar('select CODIGO  from cad_clientes where CLASSIFICACAO=:stipo and CPF_CNPJ=:sdocumento',[aTipo, Trim(aDocumento)]);
////
////   DB_ClientesUpdate.ParamByName('SPROCURAR').DataType:=ftString;
////   DB_ClientesUpdate.ParamByName('SPROCURAR').ParamType:=ptInput;
////   DB_ClientesUpdate.ParamByName('SPROCURAR').ArrayType:=atScalar;
//
//   if not (RDSelecao.ItemIndex in [2,4]) then
//      DB_ClientesUpdate.ParamByName('SPROCURAR').AsString :=  '%' + EditPesquisa.Text + '%'
//   else
//      DB_ClientesUpdate.ParamByName('SPROCURAR').AsString :=EditPesquisa.Text;

   DB_ClientesUpdate.ExecSQL;
   DB_Clientes.close;
   DB_Clientes.Open;

end;

procedure TFrmSelecionarClientes.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmSelecionarClientes.Btn_ImprimirClick(Sender: TObject);
begin
   FrmEtiquetaClienteSelecao := TFrmEtiquetaClienteSelecao.create(self);

end;

end.
