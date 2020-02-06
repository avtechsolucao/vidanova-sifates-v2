{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FrmRelatorios;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Buttons, StdCtrls, ExtCtrls, Mask, ComCtrls, FDatas, pngimage,
  dxGDIPlusClasses;

type
   TFrameRelatorios = class(TFrame)
    Image3: TImage;
    Image1: TImage;
    Image2: TImage;
    LblBarraTitulo: TLabel;
   private
      { Private declarations }
   public
      { Public declarations }
   end;

implementation

{$R *.dfm}

end.
