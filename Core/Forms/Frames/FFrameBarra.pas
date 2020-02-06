{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FFrameBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Vcl.Imaging.pngimage, dxGDIPlusClasses;

type
   TFrmFrameBarra = class(TFrame)
    pnTitulo: TPanel;
    LblBarraTitulo: TLabel;
    Image3: TImage;
    Image1: TImage;
    Image2: TImage;
    procedure FrameResize(Sender: TObject);
    procedure LblBarraTituloDblClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

implementation

{$R *.dfm}

procedure TFrmFrameBarra.FrameResize(Sender: TObject);
begin
//   LblBarraTitulo.Caption:=UpperCase(LblBarraTitulo.Caption)+StringOfChar(' ',5) ;
end;

procedure TFrmFrameBarra.LblBarraTituloDblClick(Sender: TObject);
begin
  if Screen.ActiveForm.BorderStyle=bsDialog then
    exit;
  if Screen.ActiveForm.WindowState=wsNormal then
    Screen.ActiveForm.WindowState:=wsMaximized
  else
    Screen.ActiveForm.WindowState:=wsNormal;
end;

end.
