{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelVeiculos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos;

type
   TFrmRelVeiculos = class(TForm)
      RadioG: TRadioGroup;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      GroupBox3: TGroupBox;
      chkCliente: TCheckBox;
      GroupBox1: TGroupBox;
      ChkVeiculo: TCheckBox;
      EditClienteNome: TEdit;
      EditCliente: TIDBEditDialog;
      EditVeiculo: TIDBEditDialog;
      Edit1: TEdit;
      procedure FormCreate(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure ChkVeiculoClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelVeiculos: TFrmRelVeiculos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FRelVeiculosLista,
  FRelVeiculosHistorico;

{$R *.DFM}

procedure TFrmRelVeiculos.FormCreate(Sender: TObject);
begin

   // TRadioGroup(RadioG.Controls[3]).Enabled:= False;

end;

procedure TFrmRelVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmRelVeiculos.Btn_ImprimirClick(Sender: TObject);
begin
   strCliente         := Trim(EditCliente.text);

   // Lista de Veiculo
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelVeiculosLista := TFrmRelVeiculosLista.create(self);
   End;

   // Historico
   If RadioG.ItemIndex = 1 then
   Begin
      FrmRelVeiculosHistorico := TFrmRelVeiculosHistorico.create(self);
   End;

End;

procedure TFrmRelVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
      CLOSE;

end;

procedure TFrmRelVeiculos.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmRelVeiculos.chkClienteClick(Sender: TObject);
begin

   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
      EditCliente.SelectAll;
   End;

end;

procedure TFrmRelVeiculos.ChkVeiculoClick(Sender: TObject);
begin

   if ChkVeiculo.Checked = true then
   Begin
      EditVeiculo.Enabled := False;
   End
   Else
   Begin
      EditVeiculo.Enabled := true;
      EditVeiculo.SetFocus;
      EditVeiculo.SelectAll;
   End;

end;

end.
