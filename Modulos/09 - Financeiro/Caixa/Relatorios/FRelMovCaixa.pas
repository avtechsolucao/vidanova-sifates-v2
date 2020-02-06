{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FRelMovCaixa;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, FDatas, frxClass, frxDBSet,
   DB,   Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelMovCaixa = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      GroupBox3: TGroupBox;
      chkPlanos: TCheckBox;
      RadioGSaldoAnterior: TRadioGroup;
      FrameDatas1: TFrameDatas;
    FrameRelatorios1: TFrameRelatorios;
    frxRFechamentoCaixa: TfrxReport;
    dbFrxFechamentoCaixa: TfrxDBDataset;
    dbFechamentoCaixa: TFDQuery;
    EditPlanoContas: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkPlanosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelMovCaixa: TFrmRelMovCaixa;

implementation

uses Biblioteca, Global, FBaseDados,
   FRelMovCaixaSaldoDiarioAnalitico, FRelCaixaSimplificado, FPrincipal;
{$R *.DFM}

procedure TFrmRelMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FreeAndNil( FrmRelMovCaixa );
end;

procedure TFrmRelMovCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmRelMovCaixa.Btn_ImprimirClick(Sender: TObject);
begin

   // Atlz_SaldoCX( BaseDados.ADO_Geral, BaseDados.ADO_SaldoCaixa );
   // substituir  por outro comando desenvolvido e mais eficiente. Verificar.

   // Totais por conta
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelCaixaSintetico := TFrmRelCaixaSintetico.create(self);
   End;

   // Saldo Di�rio - Anaitico
   If RadioG.ItemIndex = 1 then
   Begin
      FrmRelMovCaixaSaldoDiarioAnalitico := TFrmRelMovCaixaSaldoDiarioAnalitico.create(self);
   End;

   If RadioG.ItemIndex = 2 then
   Begin
      dbFechamentoCaixa.close;
      dbFechamentoCaixa.ParamByName('DATA_INI').AsDate :=        StrToDate(FrameDatas1.MskDataIni.text);
      dbFechamentoCaixa.ParamByName('DATA_FIM').AsDate :=        StrToDate(FrameDatas1.MskDataFim.text);
      dbFechamentoCaixa.open;
      frxRFechamentoCaixa.ShowReport;
   End;

End;

procedure TFrmRelMovCaixa.FormShow(Sender: TObject);
begin
     TRadioGroup(RadioG.Controls[0]).Enabled:= False;
     TRadioGroup(RadioG.Controls[1]).Enabled:= False;
end;

procedure TFrmRelMovCaixa.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelMovCaixa.chkPlanosClick(Sender: TObject);
begin

   if chkPlanos.Checked = true then
   Begin
      EditPlanoContas.Enabled := False;
   End
   Else
   Begin
      EditPlanoContas.Enabled := true;
      EditPlanoContas.SetFocus;
   End;

end;

end.
