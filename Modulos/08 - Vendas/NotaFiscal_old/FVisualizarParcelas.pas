{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            | 
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}
unit FVisualizarParcelas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls,  
   variants,   FireDAC.Comp.Client;

type
   TFrmVisualizarParcelas = class(TForm)
      GroupBox1: TGroupBox;
      DBGrid1: TDBGrid;
      Panel2: TPanel;
      Label8: TLabel;
      DBEdit4: TDBEdit;
      DS_CtaReceber: TDataSource;
      db_CtaReceber: TFDQuery;
      db_CtaReceberCLIENTE: TStringField;
      db_CtaReceberDOCUMENTO: TStringField;
      db_CtaReceberDATA: TSQLTimeStampField;
      db_CtaReceberVENC: TSQLTimeStampField;
      db_CtaReceberVALOR: TFloatField;
      db_CtaReceberQUITADO: TStringField;
      db_CtaReceberFPAGTO: TStringField;
      db_CtaReceberVENDEDOR: TStringField;
      db_CtaReceberPLANO_C: TStringField;
      db_CtaReceberNRO_NOTA: TStringField;
      PainelBotoes: TPanel;
      BtnSair: TBitBtn;
      BtnGerar: TBitBtn;
      db_CtaReceberGERARBOLETO: TStringField;
      db_CtaReceberNOSSONUMERO: TStringField;
      db_CtaReceberCODIGO: TIntegerField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure bbtn_excluiClick(Sender: TObject);
      procedure BtnGerarClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }

      totparc: integer;

   public
      { Public declarations }
   end;

var
   FrmVisualizarParcelas: TFrmVisualizarParcelas;
   i, TotReg: integer;

implementation

uses Biblioteca, FPrincipal, Global, FCtaReceber;

{$R *.DFM}

procedure TFrmVisualizarParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmVisualizarParcelas.FormCreate(Sender: TObject);
begin
   db_CtaReceber.close;
   db_CtaReceber.open;
end;

procedure TFrmVisualizarParcelas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmVisualizarParcelas.bbtn_excluiClick(Sender: TObject);
begin
   db_CtaReceber.delete;
end;

procedure TFrmVisualizarParcelas.BtnGerarClick(Sender: TObject);
begin

   If (db_CtaReceber.state in [dsedit, dsinsert]) then
      db_CtaReceber.post;

   close;

End;

procedure TFrmVisualizarParcelas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmVisualizarParcelas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

end.
