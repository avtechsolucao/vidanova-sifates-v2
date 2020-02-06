{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelFuncionarios;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB,
   FrmRelatorios, ISFEdit, ISFEditbtn, ISFdbEditbtn,
   uEstSearchDialogZeos, IDBEdit;

type
   TFrmRelFuncionarios = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      Panel2: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      GroupBox3: TGroupBox;
      chkPFunc: TCheckBox;
      RadioG: TRadioGroup;
      EditNomeVendedor: TEdit;
      DCodFunc: TIDBEditDialog;
    FrameRelatorios1: TFrameRelatorios;
      procedure FormCreate(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkPFuncClick(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelFuncionarios: TFrmRelFuncionarios;

implementation

uses Biblioteca, Global, FBaseDados, FRelFuncionarioHistoricos;

{$R *.DFM}

procedure TFrmRelFuncionarios.FormCreate(Sender: TObject);
begin

   // TRadioGroup(RadioG.Controls[3]).Enabled:= False;

end;

procedure TFrmRelFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmRelFuncionarios.Btn_ImprimirClick(Sender: TObject);
begin

   // Totais por conta
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelFuncionarioHistoricos := TFrmRelFuncionarioHistoricos.create(self);
   End;

End;

procedure TFrmRelFuncionarios.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
      CLOSE;

end;

procedure TFrmRelFuncionarios.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmRelFuncionarios.chkPFuncClick(Sender: TObject);
begin

   if chkPFunc.Checked = true then
   Begin
      DCodFunc.Enabled := False;

   End
   Else
   Begin
      DCodFunc.Enabled := true;

      DCodFunc.SetFocus;
      DCodFunc.SelectAll;
   End;

end;

procedure TFrmRelFuncionarios.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
end;

procedure TFrmRelFuncionarios.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);

end;

end.
