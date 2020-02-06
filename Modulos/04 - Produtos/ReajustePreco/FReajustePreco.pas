{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FReajustePreco;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
   TFrmReajustePreco = class(TForm)
      Panel1: TPanel;
      Label7: TLabel;
      Bevel1: TBevel;
      RG_Local: TRadioGroup;
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Edit_tabela: TEdit;
      Edit_grupo: TEdit;
      Edit_forn: TEdit;
      RG_Tipo: TRadioGroup;
      DBEdit_perc: TDBEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      BtnReajustar: TBitBtn;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmReajustePreco: TFrmReajustePreco;

implementation

{$R *.dfm}

procedure TFrmReajustePreco.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmReajustePreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

end.
