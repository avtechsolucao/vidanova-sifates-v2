{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FGeraParcelasVendaExpressa;

interface

uses
   Windows, Messages, System.SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls,  
   variants,    Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmGeraParcelasVendaExpressa = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnGerar: TBitBtn;
      DS_CtaReceber: TDataSource;
      db_CtaReceber: TFDQuery;
      Panel2: TPanel;
      Label1: TLabel;
      EditParcelas: TEdit;
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
   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmGeraParcelasVendaExpressa: TFrmGeraParcelasVendaExpressa;
   i, TotReg: integer;

implementation

uses Biblioteca, FPrincipal, Global, FVendaExpressa,
   FBaseDados;

{$R *.DFM}

procedure TFrmGeraParcelasVendaExpressa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_FormaPagto.close;
   db_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmGeraParcelasVendaExpressa.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmGeraParcelasVendaExpressa.BtnGerarClick(Sender: TObject);
begin

   CalcGrade;

   If (db_CtaReceber.state in [dsedit, dsinsert]) then
      db_CtaReceber.post;

End;

procedure TFrmGeraParcelasVendaExpressa.CalcGrade;
var
   xx, xx_prazos: integer;
begin

   xx := 0;
   xx_prazos := 0;

   forma := FrmVendaExpressa.db_vendas.fieldbyname('FORMA_PAGTO').asString;
   If empty(forma) = true then
   Begin
      db_CtaReceber.close;
      Informar('� necess�rio informar a forma de pagamento');
      Exit;
   End;

   { verificar se a fatura j� foi gereda }

   // If db_CtaReceber.Locate('CLIENTE;DOCUMENTO',VarArrayOf([a1,a2]),[] )=True Then
   if (db_CtaReceber.RecordCount > 0) then
   Begin
      Informar('Fatura j� existe');
      Exit; // sair
   End;

   tt_nota := 0;
   tt_nota := (FrmVendaExpressa.db_vendas.fieldbyname('TOTAL_NF').asFloat -
     FrmVendaExpressa.db_vendas.fieldbyname('VLR_RECEBIDO').asFloat);

   if empty(EditParcelas.text) then
      EditParcelas.text := '0';

   If StrToInt(EditParcelas.text) <= 1 then
   begin

      qt_parc := 0;
      qt_parc := db_FormaPagto.RecordCount;
      db_FormaPagto.First;

   end
   else
   begin
      qt_parc := StrToInt(EditParcelas.text);
   end;

   { se possuir indice de reajuste para as parcelas }
   vlr_parc := 0;
   If db_FormaPagto.fieldbyname('ACRESCIMO').asFloat > 0 then
   begin
      nvDesconto := db_FormaPagto.fieldbyname('ACRESCIMO').asFloat;
      vlr_parc := (tt_nota + (tt_nota * (nvDesconto / 100))) / qt_parc;
      vlr_text := Formatfloat('###,###,##0.00', vlr_parc);
      vlr_text := DeletaCaract(vlr_text, '.');
      vlr_parc := StrToFloat(vlr_text);
   end;

   if db_FormaPagto.fieldbyname('DESCONTO').asFloat > 0 then
   begin
      nvDesconto := db_FormaPagto.fieldbyname('DESCONTO').asFloat;
      vlr_parc := (tt_nota - (tt_nota * (nvDesconto / 100))) / qt_parc;
      vlr_text := Formatfloat('###,###,##0.00', vlr_parc);
      vlr_text := DeletaCaract(vlr_text, '.');
      vlr_parc := StrToFloat(vlr_text);
   end;

   if (db_FormaPagto.fieldbyname('ACRESCIMO').asFloat = 0) and
     (db_FormaPagto.fieldbyname('DESCONTO').asFloat = 0) then
   begin
      vlr_parc := (tt_nota / qt_parc);
   End;

   { para fixar decimais em 2 casas }
   if qt_parc > 1 then
   Begin
      vlr_text := Formatfloat('###,##0.00', vlr_parc);
      vlr_text := DeletaCaract(vlr_text, '.');
      vlr_parc := StrToFloat(vlr_text);
   End;
   { total das parcelas }
   vTT_parcs := (vlr_parc * qt_parc) + vlr_ipi;
   vlr_cent := 0;

   // -------------------------------------------------------------------------
   // --  Checar se parecela est� dentro do padr�o exigido                   --
   // --                                                                     --
   // -------------------------------------------------------------------------
   If BaseDados.db_Parametros.fieldbyname('PARCELAMINIMA').asFloat > 0 then
   begin
      If vlr_parc < BaseDados.db_Parametros.fieldbyname('PARCELAMINIMA')
        .asFloat then
      begin
         BeepCritica;
         AvisoSistema('N�o atingiu parcela minima exigida pelo sistema. ' + #13
           + #10 + 'Parcela minima exigida...:  ' + FormatSettings.CurrencyString + '  ' +
           Formatfloat('###,###,##0.00',
           BaseDados.db_Parametros.fieldbyname('PARCELAMINIMA').asFloat) + #13 +
           #10 + 'Parcela do cliente.......:  ' + FormatSettings.CurrencyString + '  ' +
           Formatfloat('###,###,##0.00', vlr_parc));
         Exit;

      end;

   end;

   // (db_FormaPagto).Locate('FPAGTO',forma,[]);
   db_FormaPagto.First;
   with db_FormaPagto do
   begin

      parc_atu := 0;
      for xx := 1 to qt_parc do
      // while not eof do
      begin

         INC(parc_atu);
         if db_FormaPagto.fieldbyname('DIAS').asInteger = 0 then
            dtVencimento := FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime
         else
         begin
            if StrToInt(EditParcelas.text) < 1 then
            begin
               dtVencimento := FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime + db_FormaPagto.fieldbyname('DIAS').asInteger;
            end
            else
            begin
               INC(xx_prazos, 30);
               dtVencimento := FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime + xx_prazos;
            end;

         end;

         // --------------------------------------------------------
         // checar qual deve ser o dia de vencimento
         // --------------------------------------------------------
         If db_FormaPagto.fieldbyname('VENC_DIA').asInteger > 0 then
         begin
            wInteger[0] := db_FormaPagto.fieldbyname('VENC_DIA').asInteger;
            // dia + mes + ano = data
            dtVencimento := StrToDate(IntToStr(wInteger[0]) + '/' +
              IntToStr(mes(dtVencimento)) + '/' + IntToStr(ano(dtVencimento)));

         end;

         wTexto[0] := IntToStr(parc_atu);
         while Length(wTexto[0]) < 3 do
            wTexto[0] := '0' + wTexto[0];

         db_CtaReceber.Append;
         db_CtaReceber.fieldbyname('TIPO').asString := 'RECEBER';
         db_CtaReceber.fieldbyname('DATA').asDateTime :=
           FrmVendaExpressa.db_vendas.fieldbyname('EMISSAO').asDateTime;
         db_CtaReceber.fieldbyname('VALOR').asFloat := vVlr_parc;
         db_CtaReceber.fieldbyname('FPAGTO').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('FORMA_PAGTO').asString;
         db_CtaReceber.fieldbyname('VENDEDOR').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('VENDEDOR').asString;
         db_CtaReceber.fieldbyname('CLIENTE').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('CLIENTE').asString;
         db_CtaReceber.fieldbyname('NRO_NOTA').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('NOTAFISCAL').asString;
         db_CtaReceber.fieldbyname('DOCUMENTO').asString :=
           FrmVendaExpressa.db_vendas.fieldbyname('NOTAFISCAL').asString + '/' +
           wTexto[0]; // n� parcela
         db_CtaReceber.fieldbyname('NOSSONUMERO').asString :=
           db_CtaReceber.fieldbyname('DOCUMENTO').asString;
         db_CtaReceber.fieldbyname('VENC').asDateTime := dtVencimento;
         db_CtaReceber.fieldbyname('QUITADO').asString := 'N'; // N=N�O QUITADO


         // Se n�o tiver vendedor, assumir o Vendedor Pr�-definido.

         {
         If empty(db_CtaReceber.fieldbyname('VENDEDOR').asString) then
         begin
            db_CtaReceber.FieldByName('VENDEDOR').AsInteger := FParametros.Venda.Vendedor;
         end;
         }

         db_CtaReceber.post;

         next;
         // inc(xx);
      end;
   end;
   vVlr_parc := 0;

end;

procedure TFrmGeraParcelasVendaExpressa.BtnSairClick(Sender: TObject);
begin

   IF (db_CtaReceber.state IN [dsedit, dsinsert]) Then
   Begin
      If Pergunta('Voc� ainda est� editando. Deseja cancelar as mudan�as?')
        = true Then
      Begin
         If (db_CtaReceber.state in [dsedit, dsinsert]) then
            db_CtaReceber.post;

      End
      Else
      Begin
         db_CtaReceber.Cancel;
      End;

   End;

   close;

end;

procedure TFrmGeraParcelasVendaExpressa.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmGeraParcelasVendaExpressa.BtnExcluirClick(Sender: TObject);
begin

   If Pergunta('Excluir faturas?') = false then
      Exit;

   db_CtaReceber.First;
   While not db_CtaReceber.Eof do
   begin
      db_CtaReceber.delete;
   End;
   DS_CtaReceber.DataSet.close;
   DS_CtaReceber.DataSet.Open;

end;

procedure TFrmGeraParcelasVendaExpressa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = VK_Escape then
      BtnSair.click;

end;

procedure TFrmGeraParcelasVendaExpressa.db_CtaReceberAfterPost
  (DataSet: TDataSet);
begin
   db_CtaReceber.refresh;
end;

procedure TFrmGeraParcelasVendaExpressa.FormCreate(Sender: TObject);
begin

   db_CtaReceber.Open;
   db_FormaPagto.close;
   db_FormaPagto.ParamByName('CODIGO').asString :=
     FrmVendaExpressa.db_vendas.fieldbyname('FORMA_PAGTO').asString;
   db_FormaPagto.Open;

end;

end.
