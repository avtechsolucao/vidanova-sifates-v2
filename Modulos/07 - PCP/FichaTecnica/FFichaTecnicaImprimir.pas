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

unit FFichaTecnicaImprimir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, StdCtrls, Buttons, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB,  FireDAC.Comp.Client;

type
  TFrmFichaTecnicaImprimir = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    BtnFichaCusto: TBitBtn;
    BtnCancelar: TBitBtn;
    GroupBox2: TGroupBox;
    BtnFichaTecnicaImagem: TBitBtn;
    BtnFichaTecnica: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnFichaTecnicaClick(Sender: TObject);
    procedure BtnFichaTecnicaImagemClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnFichaCustoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFichaTecnicaImprimir: TFrmFichaTecnicaImprimir;

implementation

uses Global, Biblioteca, FPrincipal, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmFichaTecnicaImprimir.BtnFichaTecnicaClick(Sender: TObject);
begin
   sFichaTecnica := 'FICHATECNICA'; // Saida de Produto
   close;
end;

procedure TFrmFichaTecnicaImprimir.BtnFichaTecnicaImagemClick(Sender: TObject);
begin
   sFichaTecnica := 'FICHATECNICAIMAGEM'; // Saida de Produto
   close;
end;

procedure TFrmFichaTecnicaImprimir.BtnFichaCustoClick(Sender: TObject);
begin
   sFichaTecnica := 'FICHACUSTO'; // Saida de Produto
   close;
end;

procedure TFrmFichaTecnicaImprimir.BtnCancelarClick(Sender: TObject);
begin
   sFichaTecnica := '';
   close;
end;

procedure TFrmFichaTecnicaImprimir.FormCreate(Sender: TObject);
begin
   nMarkup :=0;
   sFichaTecnica := '';
end;

procedure TFrmFichaTecnicaImprimir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_F3 then
   begin
      BtnFichaTecnicaClick(Sender);
   end;

   IF Key = VK_F4 then
   begin
      BtnFichaTecnicaImagemClick(Sender);
   end;

   IF Key = VK_F5 then
   begin
      BtnFichaCustoClick(Sender);
   end;

   IF Key = VK_ESCAPE then
   begin
      BtnCancelarClick(Sender);
   end;


end;

end.
