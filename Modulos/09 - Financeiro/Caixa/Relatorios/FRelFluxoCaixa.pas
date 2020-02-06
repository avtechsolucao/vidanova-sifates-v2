{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}


unit FRelFluxoCaixa;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, ExtCtrls, frxClass, frxDBSet, DB,
    FrmRelatoriosBotoes, Grids,   DBGrids, FFrameBarra, Buttons, CheckLst,
     StrUtils, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelFluxoCaixa = class(TForm)
      PainelPrincipal: TPanel;
      PainelParametros: TPanel;
      GroupBox2: TGroupBox;
      FrameRelatoriosBotoes1: TFrameRelatoriosBotoes;
      MskDataFim: TMaskEdit;
      MskDataIni: TMaskEdit;
      Label4: TLabel;
      Label3: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      db_FluxoCaixa: TFDQuery;
      fx_FluxoCaixa: TfrxDBDataset;
      RadioGroup_Relatorio: TRadioGroup;
      GroupBox1: TGroupBox;
      CheckListBox1: TCheckListBox;
    PopUpBarraBotoesImprimir: TPopupMenu;
    Imprimir1: TMenuItem;
    frxReport_Analitico: TfrxReport;
    GroupBoxContaCaixa: TGroupBox;
    chkContaCaixa: TCheckBox;
    EditContaCaixa: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    GroupBoxContabanco: TGroupBox;
    chkContaBancaria: TCheckBox;
    EditContaCorrente: TEdit;
    EditContaBancaria: TIDBEditDialog;
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FrameRelatoriosBotoes1SpbSairClick(Sender: TObject);
      procedure FrameRelatoriosBotoes1SpbImprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkContaCaixaClick(Sender: TObject);
    procedure chkContaBancariaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmRelFluxoCaixa: TFrmRelFluxoCaixa;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmRelFluxoCaixa.chkContaBancariaClick(Sender: TObject);
begin

   if chkContaBancaria.Checked = true then
   Begin
      EditContaBancaria.Enabled := False;
   End
   Else
   Begin
      EditContaBancaria.Enabled := true;
      EditContaBancaria.SetFocus;
   End;

end;

procedure TFrmRelFluxoCaixa.chkContaCaixaClick(Sender: TObject);
begin
   if chkContaCaixa.Checked = true then
   Begin
      EditContaCaixa.Enabled := False;
   End
   Else
   Begin
      EditContaCaixa.Enabled := true;
      EditContaCaixa.SetFocus;
   End;

end;

procedure TFrmRelFluxoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   FrmPrincipal.MnuFin_FluxoCaixa.Enabled := true;

   FreeAndNil( FrmRelFluxoCaixa );

end;

procedure TFrmRelFluxoCaixa.FormCreate(Sender: TObject);
Var
   i: integer;
begin

//   FrmPrincipal.MnuFin_FluxoCaixa.Enabled := false;
   MskDataIni.text := DateToStr(date);
   MskDataFim.text := DateToStr(date + 30);

   {
     for I := 1 to RadioGroup_Relatorio.Items.Count - 1 do
     begin
     TRadioGroup(RadioGroup_Relatorio.Controls[I]).Enabled:= False;
     end;
   }

   for i := 0 to CheckListBox1.Items.Count - 1 do
   begin
      // CheckListBox1.ItemEnabled[i] :=true;
      CheckListBox1.Checked[i] := true;
   end;

end;

procedure TFrmRelFluxoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmRelFluxoCaixa.FrameRelatoriosBotoes1SpbImprimirClick
  (Sender: TObject);
begin

   db_FluxoCaixa.close;
   db_FluxoCaixa.ParamByName('data1').AsDate            := StrToDate(MskDataIni.text);
   db_FluxoCaixa.ParamByName('data2').AsDate            := StrToDate(MskDataFim.text);
   db_FluxoCaixa.ParamByName('caixa').AsString          := IfThen(CheckListBox1.Checked[0],        'S', 'N' ) ;
   db_FluxoCaixa.ParamByName('banco').AsString          := IfThen(CheckListBox1.Checked[1],        'S', 'N' ) ;
   db_FluxoCaixa.ParamByName('receber').AsString        := IfThen(CheckListBox1.Checked[2],        'S', 'N' ) ;
   db_FluxoCaixa.ParamByName('pagar').AsString          := IfThen(CheckListBox1.Checked[3],        'S', 'N' ) ;
   db_FluxoCaixa.ParamByName('PREVISAOGLOBAL').AsString := IfThen(RadioGroup_Relatorio.ItemIndex=1,'N', 'S' ) ;

   if chkContaCaixa.Checked = false then
      db_FluxoCaixa.ParamByName('contacaixa').AsInteger   := StrToIntDef(EditContaCaixa.Text,0)
   else
      db_FluxoCaixa.ParamByName('contacaixa').AsInteger   := 0;

   if chkContaBancaria.Checked = false then
      db_FluxoCaixa.ParamByName('contacorrente').AsInteger   := StrToIntDef(EditContaBancaria.Text,0)
   else
      db_FluxoCaixa.ParamByName('contacorrente').AsInteger   := 0;

   db_FluxoCaixa.Open;

   case RadioGroup_Relatorio.ItemIndex of
      0,1: frxReport_Analitico.ShowReport;
   End;

end;

procedure TFrmRelFluxoCaixa.FrameRelatoriosBotoes1SpbSairClick(Sender: TObject);
begin
   FrameRelatoriosBotoes1.SpbSairClick(Sender);
end;

procedure TFrmRelFluxoCaixa.Imprimir1Click(Sender: TObject);
begin
   FrameRelatoriosBotoes1SpbImprimirClick(sender);
end;

procedure TFrmRelFluxoCaixa.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);
end;

procedure TFrmRelFluxoCaixa.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
end;

end.
