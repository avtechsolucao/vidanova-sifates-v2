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

unit FFichaTecnicaCores;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, DBGrids, StdCtrls, DB, FFrameBotoes;

type
   TFrmFichaTecnicaCores = class(TForm)
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox4: TGroupBox;
      GridGradeCores: TDBGrid;
      procedure GridGradeCoresKeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFichaTecnicaCores: TFrmFichaTecnicaCores;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmFichaTecnicaCores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmFichaTecnicaCores.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_Cores_Modelos;

end;

procedure TFrmFichaTecnicaCores.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      FrmFrameBotoes1SpbSairClick(Sender);

end;

procedure TFrmFichaTecnicaCores.FrmFrameBotoes1SpbSairClick
  (Sender: TObject);
begin
   close;
end;

procedure TFrmFichaTecnicaCores.GridGradeCoresKeyPress
  (Sender: TObject; var Key: Char);
begin

   Key := AnsiUpperCase(Key)[1];

end;

end.
