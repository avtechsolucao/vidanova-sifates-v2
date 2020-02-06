{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}


unit FControleBancario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, FFrameBarra, FFrameBotoes, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Classe.Global, dxDateRanges;

type
   TFrmControleBancario = class(TForm)
      PageControl1: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Edicao: TTabSheet;
      Panel2: TPanel;
      DBTextNF: TDBText;
      Panel3: TPanel;
      DBText1: TDBText;
      Panel4: TPanel;
      DBText2: TDBText;
      Panel5: TPanel;
      DBText3: TDBText;
      Panel6: TPanel;
      DBText4: TDBText;
      DS_CtrlBancario: TDataSource;
      Label3: TLabel;
      EditDocumento: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label7: TLabel;
      DBEdit9: TDBEdit;
      LblCredito: TLabel;
      EditCredito: TDBEdit;
      EditDebito: TDBEdit;
      LblDebito: TLabel;
      EditNomePlanoContas: TEdit;
      Edit2: TEdit;
      EstSearchDialogZeos1: TIDBEditDialog;
      EditContaCorrente: TEdit;
      EditConta_Credito: TIDBEditDialog;
      db_CtrlBancario: TFDQuery;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      Navegador: TDBNavigator;
      DCodPlano: TIDBEditDialog;
    db_CtrlBancarioCODIGO: TIntegerField;
    db_CtrlBancarioDOCUMENTO: TStringField;
    db_CtrlBancarioCTA_CORRENTE: TIntegerField;
    db_CtrlBancarioDEPARTAMENTO: TIntegerField;
    db_CtrlBancarioPLN_CONTA: TStringField;
    db_CtrlBancarioDC: TStringField;
    db_CtrlBancarioDATA: TSQLTimeStampField;
    db_CtrlBancarioMES: TIntegerField;
    db_CtrlBancarioANO: TIntegerField;
    db_CtrlBancarioHISTORICO: TStringField;
    db_CtrlBancarioVLR_CREDITO: TFloatField;
    db_CtrlBancarioVLR_DEBITO: TFloatField;
    db_CtrlBancarioEFETIVADO: TStringField;
    ContaProcurar: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    db_CtrlBancarioCONTACAIXA: TIntegerField;
    dbEditPesquisar: TIDBEditDialog;
    cxGridBancario: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridBancarioColumn1: TcxGridDBColumn;
    cxGridBancarioColumn2: TcxGridDBColumn;
    cxGridBancarioColumn3: TcxGridDBColumn;
    cxGridBancarioColumn4: TcxGridDBColumn;
    cxGridBancarioColumn5: TcxGridDBColumn;
    cxGridBancarioColumn6: TcxGridDBColumn;
      procedure db_CtrlBancarioAfterScroll(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

      procedure DbGrid_ItensKeyPress(Sender: TObject; var Key: Char);
      procedure Sair1Click(Sender: TObject);

      // Rotinas Tercerizadas

      procedure Mnu_SairClick(Sender: TObject);
      procedure db_CtrlBancarioNewRecord(DataSet: TDataSet);
      procedure EditPlanoExit(Sender: TObject);
      procedure db_CtrlBancarioPLN_CONTAChange(Sender: TField);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridBancarioCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

   private
      { Private declarations }

      Procedure ValidarCampos;

   public
      { Public declarations }

   end;

var
   FrmControleBancario: TFrmControleBancario;
   vlrvar: Integer;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  Classe.Usuarios;

{$R *.DFM}

procedure TFrmControleBancario.FormCreate(Sender: TObject);
begin
   PageControl1.ActivePage := Tab_Principal;

   FrmFrameBotoes1.DataSource := DS_CtrlBancario;
   db_CtrlBancario.open;

End;

procedure TFrmControleBancario.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      close;

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin

   PageControl1.ActivePage := Tab_Edicao;

   db_CtrlBancario.close;
   db_CtrlBancario.open;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditDocumento.SetFocus;

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   PageControl1.ActivePage := Tab_Principal;

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   AcaoUserName[0] := 'Deletou registro do movimento bancário: ' + #13 + #10 +
     'Documento.......: ' + db_CtrlBancario.FieldByName('DOCUMENTO').AsString +
     #13 + #10 + 'Data............: ' + db_CtrlBancario.FieldByName('DATA')
     .AsString + #13 + #10 + 'Operação........: ' + db_CtrlBancario.FieldByName
     ('DC').AsString + #13 + #10 + 'Historico.......: ' +
     db_CtrlBancario.FieldByName('HISTORICO').AsString + #13 + #10 +
     'Valor...........: ' + iif(db_CtrlBancario.FieldByName('VLR_CREDITO')
     .AsFloat = 0, db_CtrlBancario.FieldByName('VLR_CREDITO').AsString,
     db_CtrlBancario.FieldByName('VLR_DEBITO').AsString);

   FrmFrameBotoes1.SpbExcluirClick(Sender);

   FUsuario.LogUsuario('controle bancario',AcaoUserName[0]);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      FrmFrameBotoes1.SpbCancelarClick(Sender);
      db_CtrlBancario.first;
      db_CtrlBancario.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmControleBancario.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmControleBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtrlBancario.close;

   FreeAndNil( FrmControleBancario );

end;

procedure TFrmControleBancario.cxGridBancarioCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   PageControl1.ActivePage := Tab_Edicao;
   TDatas := db_CtrlBancario.FieldByName('DATA').AsDateTime;
end;

procedure TFrmControleBancario.DbGrid_ItensKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmControleBancario.Sair1Click(Sender: TObject);
begin
   close;

end;

procedure TFrmControleBancario.ValidarCampos;
begin

   If  BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat := 0;

   end;

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat := 0;

   end;

end;

procedure TFrmControleBancario.Mnu_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmControleBancario.db_CtrlBancarioNewRecord(DataSet: TDataSet);
begin

   LblCredito.Enabled := False;
   LblDebito.Enabled := False;
   EditCredito.Enabled := False;
   EditDebito.Enabled := False;

   db_CtrlBancario.FieldByName('DATA').AsDateTime := Date;

end;

procedure TFrmControleBancario.db_CtrlBancarioPLN_CONTAChange(Sender: TField);
begin
   ValidarCampos;

   db_CtrlBancario.FieldByName('DC').AsString := BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString);;

end;

procedure TFrmControleBancario.EditPlanoExit(Sender: TObject);
begin

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat := 0;

   end;

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

      If (db_CtrlBancario.state in [dsedit, dsinsert]) then
         db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat := 0;

   end;

end;

procedure TFrmControleBancario.db_CtrlBancarioAfterScroll(DataSet: TDataSet);
begin

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString)= 'CREDITO' then
   begin

      LblCredito.Enabled := True;
      EditCredito.Enabled := True;

      LblDebito.Enabled := False;
      EditDebito.Enabled := False;

   end;

   If BuscaPlanoContasTipo(db_CtrlBancario.FieldByName('PLN_CONTA').AsString) = 'DEBITO' then
   begin

      LblDebito.Enabled := True;
      EditDebito.Enabled := True;

      LblCredito.Enabled := False;
      EditCredito.Enabled := False;

   end;

end;

End.
