{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FPedidoVendaParcial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFrmPedidoVendaParcial = class(TForm)
    DBRadioGroup1: TDBRadioGroup;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidoVendaParcial: TFrmPedidoVendaParcial;

implementation

uses FPedidoVenda;

{$R *.dfm}

procedure TFrmPedidoVendaParcial.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmPedidoVendaParcial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_escape then
      Button1Click(Sender);
end;

end.
