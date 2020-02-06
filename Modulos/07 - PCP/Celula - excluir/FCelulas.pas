{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}


Unit FCelulas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB, 
    FFrameBotoes,
   FFrameBarra,  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmCelulas = class(TForm)
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label5: TLabel;
      EditNOME: TDBEdit;
      db_CELULA: TFDQuery;
      DS_CELULA: TDataSource;
      DBEdit2: TDBEdit;
      Label1: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Navegador: TDBNavigator;
    dbEditPesquisar: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCelulas: TFrmCelulas;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.DFM}

procedure TFrmCelulas.FormCreate(Sender: TObject);
begin

//   FrmPrincipal.Mnu_PCP_Celulas.Enabled := False;
   FrmFrameBotoes1.DataSource := DS_CELULA;
   db_CELULA.open;

end;

procedure TFrmCelulas.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditNOME.SetFocus;

end;

procedure TFrmCelulas.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmCelulas.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmCelulas.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmCelulas.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      db_CELULA.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   End;
end;

procedure TFrmCelulas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmCelulas.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmCelulas.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCelulas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.Mnu_PCP_Celulas.Enabled := True;
   db_CELULA.close;
   Action := Cafree;

end;

end.
