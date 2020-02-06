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

unit FParamCustos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls, FFrameBarra,
   FFrameBotoes, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos;

type
   TFrmParamCustos = class(TForm)
      PainelBotoes: TPanel;
      SpeedButton1: TSpeedButton;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      DBEdit2: TDBEdit;
      Label1: TLabel;
      EditNome: TDBEdit;
      Label3: TLabel;
      Label4: TLabel;
      EditPercentual: TDBEdit;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      dbEditPesquisar: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmParamCustos: TFrmParamCustos;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global,
   FBaseDados_PCP;

{$R *.dfm}

procedure TFrmParamCustos.FormCreate(Sender: TObject);
begin
   // FrmPrincipal.Mnu_PCP_ParamCustos.Enabled :=false;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_paramcustos;
   BaseDados_PCP.db_paramcustos.Open;
end;

procedure TFrmParamCustos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   BaseDados_PCP.db_paramcustos.Close;
   // FrmPrincipal.Mnu_PCP_ParamCustos.Enabled :=true;
   Action := Cafree;
end;

procedure TFrmParamCustos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.Setfocus;

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if dbEditPesquisar.Execute then
   begin
      BaseDados_PCP.db_paramcustos.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;


end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbProximoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmParamCustos.FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

end.
