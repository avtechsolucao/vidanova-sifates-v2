{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

Unit FCad_CartaCobranca;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB,  Grids,
   DBGrids, ComCtrls,
    FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmCartaCadastro = class(TForm)
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      GroupBox2: TGroupBox;
      db_CartaCadastros: TFDQuery;
      DS_CartaCadastros: TDataSource;
      Panel1: TPanel;
      EditTema: TDBEdit;
      Label2: TLabel;
      DBNavigator1: TDBNavigator;
      DBRichEdit1: TDBRichEdit;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure BitBtn7Click(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCartaCadastro: TFrmCartaCadastro;

implementation

uses Biblioteca, Global, FPrincipal;

{$R *.DFM}

procedure TFrmCartaCadastro.FormCreate(Sender: TObject);
begin

   db_CartaCadastros.open;

end;

procedure TFrmCartaCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TFrmCartaCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CartaCadastros.close;

end;

procedure TFrmCartaCadastro.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaCadastro.BtnCancelarClick(Sender: TObject);
begin

   db_CartaCadastros.Cancel;

end;

procedure TFrmCartaCadastro.BtnExcluirClick(Sender: TObject);
begin

   If db_CartaCadastros.IsEmpty then
   Begin
      BeepCritica;
      Informar('Não há dados para excluir');
      Exit;
   end;

   db_CartaCadastros.Delete;

end;

procedure TFrmCartaCadastro.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaCadastro.BtnSalvarClick(Sender: TObject);
begin

   If (db_CartaCadastros.state in [dsEdit, dsInsert]) then
   Begin
      db_CartaCadastros.Post;
   End;

end;

procedure TFrmCartaCadastro.BtnNovoClick(Sender: TObject);
begin

   // Gerar novo codigo para o CIDADE
   db_CartaCadastros.Append;
   EditTema.SetFocus;

end;

procedure TFrmCartaCadastro.BitBtn1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaCadastro.BitBtn7Click(Sender: TObject);
begin
   close;
end;

end.
