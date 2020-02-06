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

unit FFichaTecnicaGradeFoto;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids;

type
   TFrmFichaTecnicaGradeFoto = class(TForm)
      Panel1: TPanel;
      FotoReferencia: TImage;
      Panel2: TPanel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      DBEdit20: TDBEdit;
      DBEdit21: TDBEdit;
      DBEdit22: TDBEdit;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      GroupBox1: TGroupBox;
      StringGrade: TStringGrid;
      AdvSplitter1: TSplitter;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFichaTecnicaGradeFoto: TFrmFichaTecnicaGradeFoto;

implementation

uses Biblioteca_pcp, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmFichaTecnicaGradeFoto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmFichaTecnicaGradeFoto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = vk_escape then
      close;

end;

procedure TFrmFichaTecnicaGradeFoto.FormCreate(Sender: TObject);
begin

   // foto principal
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH')
     .AsString) then
   Begin
      FotoReferencia.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH').AsString);
   End
   Else
   Begin
      FotoReferencia.Picture := Nil;
   End;

   GradeProduto_Montar(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA').AsString, StringGrade);

end;

end.
