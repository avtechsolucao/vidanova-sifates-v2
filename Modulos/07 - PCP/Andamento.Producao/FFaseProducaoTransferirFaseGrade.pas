{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 |
+--------------------------------------------------------------------------------}

unit FFaseProducaoTransferirFaseGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB,  FireDAC.Comp.Client;

type
  TFrmFaseProducaoTransferirFaseGrade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaseProducaoTransferirFaseGrade: TFrmFaseProducaoTransferirFaseGrade;

implementation

uses FPrincipal, Global, Biblioteca, SQLServer, FFaseProducaoTransferirFase;

{$R *.dfm}

procedure TFrmFaseProducaoTransferirFaseGrade.BitBtn1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducaoTransferirFaseGrade.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

end.