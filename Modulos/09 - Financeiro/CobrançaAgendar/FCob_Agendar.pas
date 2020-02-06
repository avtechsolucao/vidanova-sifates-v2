{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}


unit FCob_Agendar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
   Buttons, ComCtrls, Shellapi,  FMTBcd, SqlExpr,
    FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmCob_Agendar = class(TForm)
      Panel2: TPanel;
      PaginaPadrao: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Editar: TTabSheet;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      Panel1: TPanel;
      Label16: TLabel;
      Navegador: TDBNavigator;
      PageControl2: TPageControl;
      Tab_Dados: TTabSheet;
      Label6: TLabel;
      EditCliente: TDBEdit;
      DBEdit11: TDBEdit;
      DBGrid1: TDBGrid;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      DBEdit2: TDBEdit;
      Label2: TLabel;
      Label3: TLabel;
      DBEdit3: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label5: TLabel;
      DBEdit5: TDBEdit;
      GroupBox1: TGroupBox;
      DBMemo1: TDBMemo;
      Label8: TLabel;
      DBEdit8: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit10: TDBEdit;
      Label9: TLabel;
      DBRadioGroup1: TDBRadioGroup;
      DS_CobAgendar: TDataSource;
      db_CobAgendar: TFDQuery;
      db_CobAgendarNomeCliente: TStringField;
      db_CobAgendarNomeMsg: TStringField;
      db_clientes: TFDQuery;
      db_DadosContaCorrente: TFDQuery;
      db_Mensagens: TFDQuery;
      db_CobAgendarCODIGO: TIntegerField;
      db_CobAgendarDOCUMENTO: TStringField;
      db_CobAgendarDATA: TSQLTimeStampField;
      db_CobAgendarDTCONTATO: TSQLTimeStampField;
      db_CobAgendarHORAS: TTimeField;
      db_CobAgendarCONTATO: TStringField;
      db_CobAgendarCONTA: TIntegerField;
      db_CobAgendarVALOR: TFloatField;
      db_CobAgendarCOD_MSG: TIntegerField;
      db_CobAgendarRESPOSTA: TStringField;
      db_CobAgendarSITUACAO: TStringField;
      db_CobAgendarCLIENTE: TIntegerField;
      procedure BtnNovoClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCob_Agendar: TFrmCob_Agendar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmCob_Agendar.BtnNovoClick(Sender: TObject);
begin
   // Gerar novo codigo para o ORÇAMENTO
   PaginaPadrao.Activepage := Tab_Editar;

   db_CobAgendar.Append;
   db_CobAgendar.FieldByName('SITUACAO').AsString := 'N';
   db_CobAgendar.FieldByName('DATA').AsDateTime := Date;

   EditCliente.SetFocus;

end;

procedure TFrmCob_Agendar.BtnSalvarClick(Sender: TObject);
begin

   If (db_CobAgendar.state in [dsEdit, dsInsert]) then
   Begin
      db_CobAgendar.Post;
   End;

end;

procedure TFrmCob_Agendar.BtnCancelarClick(Sender: TObject);
begin
   // Cancelar edição
   db_CobAgendar.Cancel;

   PaginaPadrao.Activepage := Tab_Principal;
end;

procedure TFrmCob_Agendar.BtnExcluirClick(Sender: TObject);
begin

   if not db_CobAgendar.IsEmpty then
   begin
      BeepCritica;
      IF Pergunta('Deseja excluir este registro?') = TRUE THEN
      BEGIN
         db_CobAgendar.Delete;
      END;
   End
   Else
   Begin
      Aviso('Não há dados para excluir.');
   End;

end;

procedure TFrmCob_Agendar.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
end;

procedure TFrmCob_Agendar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmCob_Agendar.FormCreate(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Principal;
   db_CobAgendar.Open;
end;

procedure TFrmCob_Agendar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_CobAgendar.close;

   Action := Cafree;

end;

procedure TFrmCob_Agendar.BtnSairClick(Sender: TObject);
begin
   close;
end;

end.
