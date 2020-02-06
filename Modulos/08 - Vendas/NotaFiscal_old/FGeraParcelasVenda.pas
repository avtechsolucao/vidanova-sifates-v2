{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Com�rcio em geral e industrias (vestu�rio)            | 
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Voc� n�o pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}
unit FGeraParcelasVenda;

interface

uses
   Windows, Messages, System.SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls,  
   variants, 
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, 
   Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
   TFrmGeraParcelasVenda = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel2: TPanel;
      Label1: TLabel;
      EditParcelas: TEdit;
      DS_CtaReceber: TDataSource;
      db_CtaReceber: TFDQuery;
      db_CtaReceberDOCUMENTO: TStringField;
      db_CtaReceberVALOR: TFloatField;
      db_CtaReceberQUITADO: TStringField;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnGerar: TBitBtn;
      db_CtaReceberGERARBOLETO: TStringField;
      db_CtaReceberNOSSONUMERO: TStringField;
      db_CtaReceberCLIENTE: TIntegerField;
      db_CtaReceberVENDEDOR: TIntegerField;
      db_CtaReceberNOTAFISCAL: TIntegerField;
      db_CtaReceberPLANO_CONTAS: TStringField;
    db_CtaReceberFORMA_PAGTO: TIntegerField;
    EditNomeFormaPagto: TEdit;
    db_CtaReceberDATA: TSQLTimeStampField;
    db_CtaReceberVENCIMENTO: TSQLTimeStampField;
    db_CtaReceberPARCELA: TIntegerField;
    db_CtaReceberESPECIE: TStringField;
    db_CtaReceberTIPO: TStringField;
    db_CtaReceberCODIGO: TIntegerField;
    db_CtaReceberSERIENF: TStringField;
    EditTotal: TLabeledEdit;
    db_CtaReceberSomar: TFDQuery;
    db_CtaReceberSomarVALORTOTAL: TFloatField;
    db_CtaReceberGERARCOMPLEMENTO: TStringField;
    db_CtaReceberCONTACAIXA: TIntegerField;
    GroupBoxCredito: TGroupBox;
    EditDisponivel: TLabeledEdit;
    Label2: TLabel;
    EditUtilizar: TDBEdit;
    SPCLIENTE_ATUALIZACREDITO: TFDStoredProc;
    db_CtaReceberEMPRESA: TIntegerField;
    EditPagamento: TIDBEditDialog;
    db_FormaPagto: TFDQuery;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure CalcGrade;
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure BtnExcluirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_CtaReceberAfterPost(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
    procedure db_CtaReceberAfterScroll(DataSet: TDataSet);
    procedure db_CtaReceberDATAChange(Sender: TField);
    procedure db_CtaReceberVENCIMENTOChange(Sender: TField);
    procedure EditUtilizarExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure db_CtaReceberBeforeOpen(DataSet: TDataSet);
    procedure db_CtaReceberSomarBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmGeraParcelasVenda: TFrmGeraParcelasVenda;
   i, TotReg: integer;
   nContador, xx_prazos,
   nCodigoCHR: integer;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados,
  FNotaFiscal, Classe.Usuarios;

{$R *.DFM}

procedure TFrmGeraParcelasVenda.FormCreate(Sender: TObject);
var
 vnCreditoSaldo : Real;
begin

   vnCreditoSaldo :=0;
   vnCreditoSaldo :=ChecarCreditoSaldo(BaseDados.qryVenda.FieldByName('CLIENTE').AsInteger);

   // captions dos bot�es
   BtnGerar.caption := BtnGerar.caption + #13 + #10 + 'F3';
   BtnExcluir.caption := BtnExcluir.caption + #13 + #10 + 'F4';
   BtnSair.caption := BtnSair.caption + #13 + #10 + 'ESC';

   db_CtaReceber.open;
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('FORMAPAGTO').AsString :=   BaseDados.qryVenda.FieldByName('FORMAPAGTO').AsString;
   db_FormaPagto.open;

   EditNomeFormaPagto.Text :=FrmNotaFiscal.EditNomeFormaPagto.Text;

   if vnCreditoSaldo>0 then
   begin
      GroupBoxCredito.visible :=True;
      EditDisponivel.Text := FormatFloat('###,##0.00',vnCreditoSaldo) ;
   end;

end;

procedure TFrmGeraParcelasVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_FormaPagto.close;
   db_CtaReceber.close;

   Action := caFree;

end;



procedure TFrmGeraParcelasVenda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

   If (BaseDados.qryVenda.state in [dsedit, dsinsert]) then
      BaseDados.qryVenda.post;

   SPCLIENTE_ATUALIZACREDITO.ParamByName('NCODIGO').AsInteger     := BaseDados.qryVenda.FieldByName('CLIENTE').AsInteger;
   SPCLIENTE_ATUALIZACREDITO.ExecProc;

end;

procedure TFrmGeraParcelasVenda.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmGeraParcelasVenda.BtnGerarClick(Sender: TObject);
begin

   db_CtaReceber.open;
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('FORMAPAGTO').Value := BaseDados.qryVenda.FieldByName('FORMAPAGTO').AsInteger;
   db_FormaPagto.open;

   { verificar se a fatura j� foi gereda }
   if (db_CtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura j� existe');
      Exit; // sair
   End;

   // cofigurar
   forma := BaseDados.qryVenda.FieldByName('FORMAPAGTO').AsString;
   If empty(forma) = true then
   Begin
      db_CtaReceber.close;
      Informar('� necess�rio informar a forma de pagamento');
      Exit;
   End;

   tt_nota := 0;
   tt_nota := nTotalNFReal;

   tt_nota := tt_nota - BaseDados.qryVenda.FieldByName('CREDITOABATIMENTO').asFloat ; // abatimento de credito

   if tt_nota<0 then
      tt_nota :=0;

   if (BaseDados.qryVenda.FieldByName('CREDITOABATIMENTO').asFloat>0) and (tt_nota=0) then
   begin
     avisoSistema('N�o ha saldo disponivel para gerar parcela(s)'
                  +#13+#10
                  +Concat('Valor da Venda.........................: ', FormatSettings.CurrencyString ,' ',FormatFloat('###,##0.00',BaseDados.qryVenda.FieldByName('TOTAL_NF').asFloat) )
                  +#13+#10
                  +Concat('Cr�dito Disponivel do Cliente..: ', FormatSettings.CurrencyString ,' ',FormatFloat('###,##0.00',StrToFloatDef(DeletaPalavra(EditDisponivel.Text,'.'),0)) )
                  +#13+#10
                  +Concat('Valor do abatimento.................: ', FormatSettings.CurrencyString ,' ',FormatFloat('###,##0.00',BaseDados.qryVenda.FieldByName('CREDITOABATIMENTO').asFloat) )
                  +#13+#10
                  +Concat('Valor disponivel para parcelar...: ', FormatSettings.CurrencyString ,' ',FormatFloat('###,##0.00',tt_nota) )

                  );

     exit;
   end;
   bGerarParcelaExterna := False;
   CalcGrade;
   bGerarParcelaExterna := False;
   bGerarParcelaExterna := (nValorRealPedido>nTotalNFReal);


   if bGerarParcelaExterna then
   begin
      tt_nota := 0;
      tt_nota := nValorRealPedido - nTotalNFReal;
      if tt_nota < 1 then
         tt_nota := 0;

      CalcGrade;
   end;

   If (db_CtaReceber.state in [dsedit, dsinsert]) then
      db_CtaReceber.post;

End;

procedure TFrmGeraParcelasVenda.CalcGrade;
begin

   nContador := 0;
   xx_prazos := 0;
   nCodigoCHR := 64;

   vlr_parc := 0;
   vlr_text := '';
   vlr_text := '';
   vlr_parc := 0;
   qt_parc  := 0;

   if (StrToIntDef(EditParcelas.text,0)=0) then
      EditParcelas.text := '0';

   If StrToIntDef(EditParcelas.text,0) <= 0 then
   begin

      qt_parc := db_FormaPagto.RecordCount;
      db_FormaPagto.First;

   end
   else
   begin
      qt_parc :=  StrToIntDef(EditParcelas.text,0);
   end;

   If qt_parc <= 0 then
   begin
      Erro(' Quantidades de parcelas abaixo de 1. N�o � possivel prosseguir.'+
          sLineBreak+
          sLineBreak+
          'Verique o cadastro da forma de pagamento, no campo "PRAZOS" '
          );

      Abort;

   end;

   nvAcrescimo  := db_FormaPagto.FieldByName('ACRESCIMO').asFloat;
   nvDesconto   := db_FormaPagto.FieldByName('DESCONTO').asFloat;

   tt_nota     := tt_nota + (tt_nota * (nvAcrescimo / 100));
   tt_nota     := tt_nota - (tt_nota * (nvDesconto  / 100));

   vlr_parc    := tt_nota / qt_parc;

   vlr_parc    := vlr_parc + (vlr_parc * (nvAcrescimo / 100));
   vlr_parc    := vlr_parc - (vlr_parc * (nvDesconto  / 100));
   vlr_parc    := ArrendondarDecimais(vlr_parc);

   vlr_cent    := tt_nota - (vlr_parc*qt_parc);
   vlr_cent    := ArrendondarDecimais(vlr_cent);


   // -------------------------------------------------------------------------
   // --  Checar se parecela est� dentro do padr�o exigido                   --
   // --                                                                     --
   // -------------------------------------------------------------------------
   If db_FormaPagto.FieldByName('PARCELAMINIMA').asFloat > 0 then
   begin
      If vlr_parc < db_FormaPagto.FieldByName('PARCELAMINIMA')
        .asFloat then
      begin
         BeepCritica;
         AvisoSistema('N�o atingiu parcela minima exigida pelo sistema. ' + #13
           + #10 + 'Parcela minima exigida...: R$ ' +           Formatfloat('###,###,##0.00',
           db_FormaPagto.FieldByName('PARCELAMINIMA').asFloat)
           + #13 + #10 + 'Parcela do cliente.......: R$ ' +           Formatfloat('###,###,##0.00', vlr_parc));
         Exit;

      end;

   end;


   // (db_FormaPagto).Locate('FPAGTO',forma,[]);
   db_FormaPagto.First;
   parc_atu  := 0;
   nContador := 0;


   // -------------------------------------------------------------------
   // ----  if qt_parc>0 then
   // -------------------------------------------------------------------
   if (qt_parc>0)  and (StrToIntDef(EditParcelas.text,0)>0) then
   begin
      for nContador := 1 to qt_parc do
      begin

         INC(parc_atu);

         if StrToInt(EditParcelas.text) < 1 then
         begin
            dtVencimento := BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime   + db_FormaPagto.FieldByName('DIAS').asInteger;
         end
         else
         begin
            INC(xx_prazos, 30);
            dtVencimento := BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime + xx_prazos;
         end;


         // --------------------------------------------------------
         // checar qual deve ser o dia de vencimento
         // --------------------------------------------------------
         If db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger > 0 then
         begin
            wInteger[0] := db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger;
            // dia + mes + ano = data
            dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
              IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

         end;


         db_CtaReceber.Append;
         db_CtaReceber.FieldByName('EMPRESA').AsInteger :=              FSistema.Empresa;
         db_CtaReceber.FieldByName('DATA').asDateTime :=                BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime;
         db_CtaReceber.FieldByName('ESPECIE').AsString                 :=  db_FormaPagto.FieldByName('TIPO_PAGAMENTO').AsString;

         if nContador<qt_parc Then
            db_CtaReceber.FieldByName('VALOR').asFloat   :=             vlr_parc
         else
            db_CtaReceber.FieldByName('VALOR').asFloat   :=             vlr_parc + vlr_cent;

         db_CtaReceber.FieldByName('FORMA_PAGTO').AsString :=           BaseDados.qryVenda.FieldByName('FORMAPAGTO').AsString;
         db_CtaReceber.FieldByName('VENDEDOR').AsString :=              BaseDados.qryVenda.FieldByName('VENDEDOR').AsString;
         db_CtaReceber.FieldByName('CLIENTE').AsInteger :=              BaseDados.qryVenda.FieldByName('CLIENTE').AsInteger;
         db_CtaReceber.FieldByName('NOTAFISCAL').AsInteger :=           BaseDados.qryVenda.FieldByName('NOTAFISCAL').AsInteger;
         db_CtaReceber.FieldByName('CONTACAIXA').AsInteger :=           BaseDados.db_Parametros.FieldByName('FIN_CTAREC_CONTACAIXA').AsInteger;
         db_CtaReceber.FieldByName('PARCELA').AsInteger    :=           parc_atu;

         if bGerarParcelaExterna=false then
         begin
            db_CtaReceber.FieldByName('DOCUMENTO').AsString :=             BaseDados.qryVenda.FieldByName('NOTAFISCAL').AsString + '/' +      ZeroEsquerda(IntToStr(parc_atu),3);
         end
         else
         begin
            inc(nCodigoCHR);
            db_CtaReceber.FieldByName('DOCUMENTO').AsString :=             BaseDados.qryVenda.FieldByName('NOTAFISCAL').AsString + '/' +      ZeroEsquerda(IntToStr(parc_atu),3) + Chr(nCodigoCHR);
         end;

         // n� parcela
         db_CtaReceber.FieldByName('NOSSONUMERO').AsString := '';
         db_CtaReceber.FieldByName('VENCIMENTO').asDateTime := dtVencimento;
         db_CtaReceber.FieldByName('QUITADO').AsString := 'N'; // N=N�O QUITADO

         // Se n�o tiver vendedor, assumir o Vendedor Pr�-definido.

         {
         If empty(db_CtaReceber.FieldByName('VENDEDOR').AsString) then
         begin
            db_CtaReceber.FieldByName('VENDEDOR').AsInteger := FParametros.Venda.Vendedor;
         end;
         }

         if bGerarParcelaExterna then
            db_CtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'S'
         else
            db_CtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'N';

         db_CtaReceber.post;

         db_FormaPagto.next;
         // inc(xx);
      end;

   end;


   // -------------------------------------------------------------------
   // ----  while not db_FormaPagto.eof do
   // -------------------------------------------------------------------
   db_FormaPagto.First;
   while not (db_FormaPagto.eof) and (StrToIntDef(EditParcelas.text,0)<1) do
   begin

      INC(parc_atu);
      INC(nContador);

      if db_FormaPagto.FieldByName('DIAS').asInteger = 0 then
         dtVencimento := BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime
      else
      begin
         if StrToInt(EditParcelas.text) < 1 then
         begin
            dtVencimento := BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime   + db_FormaPagto.FieldByName('DIAS').asInteger;
         end
         else
         begin
            INC(xx_prazos, 30);
            dtVencimento := BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime + xx_prazos;
         end;

      end;

      // --------------------------------------------------------
      // checar qual deve ser o dia de vencimento
      // --------------------------------------------------------
      If db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger > 0 then
      begin
         wInteger[0] := db_FormaPagto.FieldByName('VENCIMENTO_DIA').asInteger;
         // dia + mes + ano = data
         dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
           IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

      end;


      db_CtaReceber.Append;
      db_CtaReceber.FieldByName('EMPRESA').AsInteger :=              FSistema.Empresa;
      db_CtaReceber.FieldByName('DATA').asDateTime :=                BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime;
      db_CtaReceber.FieldByName('ESPECIE').AsString                 :=  db_FormaPagto.FieldByName('TIPO_PAGAMENTO').AsString;

      if nContador<qt_parc Then
         db_CtaReceber.FieldByName('VALOR').asFloat   :=             vlr_parc
      else
         db_CtaReceber.FieldByName('VALOR').asFloat   :=             vlr_parc + vlr_cent;

      db_CtaReceber.FieldByName('FORMA_PAGTO').AsString :=           BaseDados.qryVenda.FieldByName('FORMAPAGTO').AsString;
      db_CtaReceber.FieldByName('VENDEDOR').AsString :=              BaseDados.qryVenda.FieldByName('VENDEDOR').AsString;
      db_CtaReceber.FieldByName('CLIENTE').AsInteger :=              BaseDados.qryVenda.FieldByName('CLIENTE').AsInteger;
      db_CtaReceber.FieldByName('NOTAFISCAL').AsInteger :=           BaseDados.qryVenda.FieldByName('NOTAFISCAL').AsInteger;
      db_CtaReceber.FieldByName('CONTACAIXA').AsInteger :=           BaseDados.db_Parametros.FieldByName('FIN_CTAREC_CONTACAIXA').AsInteger;
      db_CtaReceber.FieldByName('PARCELA').AsInteger    :=           parc_atu;

      if bGerarParcelaExterna=false then
      begin
         db_CtaReceber.FieldByName('DOCUMENTO').AsString :=             BaseDados.qryVenda.FieldByName('NOTAFISCAL').AsString + '/' +      ZeroEsquerda(IntToStr(parc_atu),3);
      end
      else
      begin
         inc(nCodigoCHR);
         db_CtaReceber.FieldByName('DOCUMENTO').AsString :=             BaseDados.qryVenda.FieldByName('NOTAFISCAL').AsString + '/' +      ZeroEsquerda(IntToStr(parc_atu),3) + Chr(nCodigoCHR);
      end;


      // n� parcela
      db_CtaReceber.FieldByName('NOSSONUMERO').AsString := '';
      db_CtaReceber.FieldByName('VENCIMENTO').asDateTime := dtVencimento;
      db_CtaReceber.FieldByName('QUITADO').AsString := 'N'; // N=N�O QUITADO

      // Se n�o tiver vendedor, assumir o Vendedor Pr�-definido.

      {
      If empty(db_CtaReceber.FieldByName('VENDEDOR').AsString) then
      begin
         db_CtaReceber.FieldByName('VENDEDOR').AsInteger := FParametros.Venda.Vendedor;
      end;
      }

      if bGerarParcelaExterna then
         db_CtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'S'
      else
         db_CtaReceber.FieldByName('GERARCOMPLEMENTO').AsString := 'N';

      db_CtaReceber.post;

      db_FormaPagto.next;
      // inc(xx);
   end;


   vlr_parc := 0;

end;

procedure TFrmGeraParcelasVenda.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmGeraParcelasVenda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmGeraParcelasVenda.BtnExcluirClick(Sender: TObject);
begin

   If Pergunta('Excluir faturas?') = false then
      Exit;

   db_CtaReceber.First;
   While not db_CtaReceber.Eof do
   begin
      db_CtaReceber.delete;
   End;
   DS_CtaReceber.DataSet.close;
   DS_CtaReceber.DataSet.open;

end;

procedure TFrmGeraParcelasVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F3 then
      BtnGerar.Click;

   If Key = VK_F4 then
      BtnExcluir.Click;

   If Key = VK_Escape then
      BtnSair.Click;

end;

procedure TFrmGeraParcelasVenda.db_CtaReceberAfterPost(DataSet: TDataSet);
begin
   db_CtaReceber.refresh;
   db_CtaReceberSomar.close;
   db_CtaReceberSomar.open;
   EditTotal.Text := FormatFloat('###,##0.00',db_CtaReceberSomar.FieldByName('VALORTOTAL').asFloat);
   db_CtaReceberSomar.close;

end;

procedure TFrmGeraParcelasVenda.db_CtaReceberAfterScroll(DataSet: TDataSet);
begin
   db_CtaReceberSomar.close;
   db_CtaReceberSomar.open;
   EditTotal.Text := FormatFloat('###,##0.00',db_CtaReceberSomar.FieldByName('VALORTOTAL').asFloat);
   db_CtaReceberSomar.close;

end;

procedure TFrmGeraParcelasVenda.db_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   db_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmGeraParcelasVenda.db_CtaReceberDATAChange(Sender: TField);
begin

   if db_CtaReceber.FieldByName('DATA').AsDateTime<BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime then
   begin
      Informar('N�o � permitido data menor que a data da venda');
      db_CtaReceber.FieldByName('DATA').AsDateTime :=BaseDados.qryVenda.FieldByName('EMISSAO').asDateTime;
   end;

end;

procedure TFrmGeraParcelasVenda.db_CtaReceberSomarBeforeOpen(DataSet: TDataSet);
begin
   db_CtaReceberSomar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmGeraParcelasVenda.db_CtaReceberVENCIMENTOChange(Sender: TField);
begin

   if db_CtaReceber.FieldByName('VENCIMENTO').AsDateTime<db_CtaReceber.FieldByName('DATA').AsDateTime then
   begin
      Informar('N�o � permitido data menor que a data de emiss�o');
      db_CtaReceber.FieldByName('VENCIMENTO').AsDateTime :=db_CtaReceber.FieldByName('DATA').AsDateTime;
   end;

end;

procedure TFrmGeraParcelasVenda.EditUtilizarExit(Sender: TObject);
begin

  if BaseDados.qryVenda.FieldByName('CREDITOABATIMENTO').asFloat > StrToFloatDef(DeletaPalavra(EditDisponivel.Text,'.'),0) then
  begin
     Aviso('Valor digitado � mairo que o valor disponivel');
     EditUtilizar.Setfocus;
  end;

end;

end.
