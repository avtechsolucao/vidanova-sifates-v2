{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FClientesComplementos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
   TFrmClientesComplementos = class(TForm)
      Panel1: TPanel;
      Button1: TButton;
      GroupBox1: TGroupBox;
      DBEdit22: TDBEdit;
      Label36: TLabel;
      DBEdit23: TDBEdit;
      Label37: TLabel;
      DBEdit21: TDBEdit;
      Label35: TLabel;
      GroupBox2: TGroupBox;
      GroupBox3: TGroupBox;
      CbEstCivil: TDBComboBox;
      DBEdit37: TDBEdit;
      Label97: TLabel;
      Label9: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit4: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit6: TDBEdit;
      DBEdit7: TDBEdit;
      Label8: TLabel;
      DBEdit8: TDBEdit;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      DBEdit9: TDBEdit;
      DBEdit10: TDBEdit;
      DBEdit11: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit15: TDBEdit;
      Label17: TLabel;
      DBEdit16: TDBEdit;
      procedure Button1Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmClientesComplementos: TFrmClientesComplementos;

implementation

uses FBaseDados, FPrincipal, Global, Biblioteca;

{$R *.dfm}

procedure TFrmClientesComplementos.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmClientesComplementos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmClientesComplementos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
   begin
      close;
   end;

end;

end.
