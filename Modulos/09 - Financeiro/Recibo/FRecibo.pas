{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  ACBrBase, ACBrExtenso, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FFrameBotoes, FFrameBarra, Vcl.ExtCtrls, Vcl.DBCtrls,
  cxTextEdit, cxCurrencyEdit, cxDBEdit, Vcl.Mask;

type
   TFrmRecibo = class(TForm)
      db_recibo: TFDQuery;
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label5: TLabel;
      EditNOME: TDBEdit;
      ds_recibo: TDataSource;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      Label1: TLabel;
      EditReferencia: TDBEdit;
      Label4: TLabel;
      Editdata: TDBEdit;
      Label6: TLabel;
      ACBrExtenso1: TACBrExtenso;
      GroupBox3: TGroupBox;
      DBMemo1: TDBMemo;
      DBRadioGroup1: TDBRadioGroup;
    db_reciboCODIGO: TIntegerField;
    db_reciboDATA: TSQLTimeStampField;
    db_reciboTIPO: TStringField;
    db_reciboNOME: TStringField;
    db_reciboEXTENSO: TStringField;
    db_reciboVALOR: TFloatField;
    db_reciboHISTORICO: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisar: TIDBEditDialog;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_reciboVALORChange(Sender: TField);
    procedure db_reciboNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRecibo: TFrmRecibo;

implementation

uses FPrincipal, Global, Biblioteca, FReciboImprimir, FBaseDados;

{$R *.dfm}

procedure TFrmRecibo.FormCreate(Sender: TObject);
begin
   ///
   FrmFrameBotoes1.DataSource := ds_recibo;
   db_recibo.open;
end;

procedure TFrmRecibo.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   Editdata.SetFocus;

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
  FrmReciboImprimir := TFrmReciboImprimir.create(self);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_recibo.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmRecibo.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //
   db_recibo.close;

   FreeAndNil( FrmRecibo );

end;

procedure TFrmRecibo.db_reciboNewRecord(DataSet: TDataSet);
begin
   db_recibo.FieldByname('DATA').AsDateTime := Date;
   db_recibo.FieldByname('TIPO').AsString := 'C';

end;

procedure TFrmRecibo.db_reciboVALORChange(Sender: TField);
begin

   ACBrExtenso1.Valor := db_recibo.FieldByname('Valor').AsFloat;

   db_recibo.FieldByname('EXTENSO').AsString := UpperCase(ACBrExtenso1.Texto);

end;

end.
