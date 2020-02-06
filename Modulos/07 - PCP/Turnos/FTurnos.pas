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

unit FTurnos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBotoes, FFrameBarra,
   Mask, DBCtrls, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos,  AdvObj;

type
   THackDBGrid = class(TDBGrid);

   TFrmTurnos = class(TForm)
      GroupBox1: TGroupBox;
      Label5: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Navegador: TDBNavigator;
      GroupBox3: TGroupBox;
      Label7: TLabel;
      Label8: TLabel;
      EditNome: TDBEdit;
      EditCodigo: TDBEdit;
      LocalizaTurno: TIDBEditDialog;
      GroupBox4: TGroupBox;
      DBGrid1: TDBAdvGrid;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure GroupBox4Enter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTurnos: TFrmTurnos;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmTurnos.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_turnos;
   BaseDados_PCP.db_turnos.Open;
   BaseDados_PCP.db_turnosGrade.Open;

   // THackDBGrid(DBGrid1).FixedCols := 1;

end;

procedure TFrmTurnos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   BaseDados_PCP.db_turnos.Close;
   BaseDados_PCP.db_turnosGrade.Close;

   Action := Cafree;
end;

procedure TFrmTurnos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
   begin
      // se estiver em modo edição apenas cancelar

      Close;

   end;
end;

procedure TFrmTurnos.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmTurnos.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbEditarClick(Sender);
   EditNome.SetFocus;

end;

procedure TFrmTurnos.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaTurno.Execute then
   begin
      BaseDados_PCP.db_turnos.Locate('CODIGO',
        LocalizaTurno.ResultFieldAsInteger('CODIGO'), []);
   end;

end;

procedure TFrmTurnos.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmTurnos.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   DBGrid1.SetFocus;

end;

procedure TFrmTurnos.GroupBox4Enter(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvar.Click;

end;

end.
