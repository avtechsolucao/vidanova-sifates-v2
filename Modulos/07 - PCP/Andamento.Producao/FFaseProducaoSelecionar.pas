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

unit FFaseProducaoSelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB,  FireDAC.Comp.Client,
  FFrameBarra;

type
  TFrmFaseProducaoSelecionar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnEditar: TBitBtn;
    DBGrid1: TDBGrid;
    btnNovo: TBitBtn;
    btnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    btnExcluir: TButton;
    db_Deletar: TFDQuery;
    db_DeletarEMPRESA: TIntegerField;
    db_DeletarCODIGO: TIntegerField;
    db_DeletarORDEMPRODUCAO: TIntegerField;
    db_DeletarDATA: TSQLTimeStampField;
    db_DeletarDATARETORNO: TSQLTimeStampField;
    db_DeletarTERCEIRIZADO: TIntegerField;
    db_DeletarTERCEIRIZADO_NOME: TStringField;
    db_DeletarFASE: TIntegerField;
    db_DeletarFASE_NOME: TStringField;
    db_DeletarTERCEIRIZADOORIGEM: TIntegerField;
    db_DeletarTERCEIRIZADOORIGEM_NOME: TStringField;
    db_DeletarDATARETORNOORIGEM: TSQLTimeStampField;
    db_DeletarFASEORIGEM: TIntegerField;
    db_DeletarFASEORIGEM_NOME: TStringField;
    db_DeletarQTDE_ENVIADA: TIntegerField;
    db_DeletarQTDE_RETORNADA: TIntegerField;
    db_DeletarQTDE_PERDAS: TIntegerField;
    db_DeletarQTDE_DEFEITOS: TIntegerField;
    db_DeletarVLR_UNITARIO: TFloatField;
    db_DeletarOBSERVACAO: TStringField;
    db_DeletarENCERRADO: TStringField;
    db_DeletarGEROUPAGAMENTO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaseProducaoSelecionar: TFrmFaseProducaoSelecionar;

implementation

uses FPrincipal, Global, Biblioteca, SQLServer, FFaseProducao;

{$R *.dfm}

procedure TFrmFaseProducaoSelecionar.FormCreate(Sender: TObject);
begin
   nOrdemProducao :=0;
end;

end.
