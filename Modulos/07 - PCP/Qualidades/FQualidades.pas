﻿{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

unit FQualidades;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, DB, FFrameBarra, FFrameBotoes,
   Mask, DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos;

type
   TFrmQualidades = class(TForm)
      GroupBox1: TGroupBox;
      Label5: TLabel;
      Label1: TLabel;
      Label3: TLabel;
      DBEdit2: TDBEdit;
      EditNome: TDBEdit;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
      Navegador: TDBNavigator;
    EditDefeito: TIDBEditDialog;
    DBRadioGroup1: TDBRadioGroup;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProximoClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmQualidades: TFrmQualidades;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmQualidades.FormCreate(Sender: TObject);
begin
   // FrmPrincipal.Mnu_PCP_Problemas.Enabled :=false;
   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_qualidades;
   BaseDados_PCP.db_qualidades.Open;
end;

procedure TFrmQualidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   BaseDados_PCP.db_qualidades.Close;
   // FrmPrincipal.Mnu_PCP_Problemas.Enabled :=true;
   FreeAndNil(FrmQualidades);
end;

procedure TFrmQualidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_Escape then
   begin

      Close;

   end;
end;

procedure TFrmQualidades.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmQualidades.FrmFrameBotoes1SpbPrimeiroClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbPrimeiroClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbAnteriorClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAnteriorClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if EditDefeito.execute Then
   begin
      BaseDados_PCP.db_qualidades.Locate('CODIGO',EditDefeito.ResultFieldAsInteger('CODIGO'),[] );
   end;


end;

procedure TFrmQualidades.FrmFrameBotoes1SpbProximoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbProximoClick(Sender);

end;

procedure TFrmQualidades.FrmFrameBotoes1SpbUltimoClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbUltimoClick(Sender);

end;

end.
