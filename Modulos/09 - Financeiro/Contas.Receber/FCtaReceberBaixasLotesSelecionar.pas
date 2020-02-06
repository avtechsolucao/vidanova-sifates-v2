{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FCtaReceberBaixasLotesSelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, StdCtrls, StrUtils, DB,  FireDAC.Comp.Client,
  Buttons, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  Mask, DBCtrls, Grids,  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmCtaReceberBaixasLotesSelecionar = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1: TcxGrid;
    cxGridSelecionar: TcxGridDBTableView;
    cxGridSelecionarColumn1: TcxGridDBColumn;
    cxGridSelecionarColumn2: TcxGridDBColumn;
    cxGridSelecionarColumn3: TcxGridDBColumn;
    cxGridSelecionarColumn4: TcxGridDBColumn;
    cxGridSelecionarColumn5: TcxGridDBColumn;
    cxGridSelecionarColumn6: TcxGridDBColumn;
    cxGridSelecionarColumn7: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCtaReceberBaixasLotesSelecionar: TFrmCtaReceberBaixasLotesSelecionar;

implementation

uses FPrincipal, Global, SQLServer, Biblioteca, FCtaReceberBaixasLotes;

{$R *.dfm}

procedure TFrmCtaReceberBaixasLotesSelecionar.BitBtn1Click(Sender: TObject);
begin

   If (FrmCtaReceberBaixasLotes.db_ctaReceber.State in [dsedit, dsinsert]) then
      FrmCtaReceberBaixasLotes.db_ctaReceber.Post;

   close;

end;

procedure TFrmCtaReceberBaixasLotesSelecionar.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaReceberBaixasLotesSelecionar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=Cafree;
end;

end.
