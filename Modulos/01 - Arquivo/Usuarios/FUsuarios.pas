{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

Unit FUsuarios;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB, ComCtrls, ImgList,
    FireDAC.Comp.Client, FFrameBarra, FFrameBotoes, DBGrids, Grids, 
    ActnList, PlatformDefaultStyleActnCtrls, ActnMan,
   System.Actions, System.ImageList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxCheckBox, cxDBEdit, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges;

type
   TFrmUsuarios = class(TForm)
    dsUsuario: TDataSource;
    QryUsuario: TFDQuery;
    dsUsuariosAcesso: TDataSource;
      GroupBox1: TGroupBox;
      Panel1: TPanel;
    BtnLiberarTudo: TButton;
    BtnBloquearTudo: TButton;
      BtnRecriar: TButton;
      GroupBox2: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      FrmFrameBarra1: TFrmFrameBarra;
    QryExcluirAcesso: TFDQuery;
    QryUsuarioSetarAcesso: TFDQuery;
    ActionList_Listar: TActionList;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EditSenha: TDBEdit;
    EditUserName: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    cxGridUsuario: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridUsuarioUSERNAME: TcxGridDBColumn;
    cxGridUsuarioCodigo: TcxGridDBColumn;
    QryUsuarioAcesso: TFDQuery;
    pnfuncoes: TPanel;
    BitBtn1: TBitBtn;
    cxGridMenus: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridMenusColumn1: TcxGridDBColumn;
    cxGridMenusColumn2: TcxGridDBColumn;
    cxGridMenusColumn3: TcxGridDBColumn;
    DBRadioGroup2: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_SairClick(Sender: TObject);
    procedure QryUsuarioBeforePost(DataSet: TDataSet);
    procedure QryUsuarioAcessoBeforePost(DataSet: TDataSet);
    procedure QryUsuarioNewRecord(DataSet: TDataSet);
    procedure BtnRecriarClick(Sender: TObject);
    procedure BtnLiberarTudoClick(Sender: TObject);
    procedure BtnBloquearTudoClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QryUsuarioAfterScroll(DataSet: TDataSet);

   private
      { Private declarations }
      FTreeView_Listar  : TTreeView;
      FCategoria  : TStringList;
      FIteMMenu   : TStringList;

      function EncontrarNo(aNome: string): TTreeNode;
      procedure ListarMenus;
   public
      { Public declarations }
   end;

var
   FrmUsuarios: TFrmUsuarios;

implementation

uses FBaseDados, Biblioteca, Global, FPrincipal,
   FRelatorioUsuario,  FCalendario, FUsuariosOnLine;

{$R *.DFM}

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := dsUsuario;
   FTreeView_Listar      := TTreeView.Create(Self);
   FCategoria            := TStringList.Create;
   FIteMMenu             := TStringList.Create;
   FCategoria.Duplicates := dupIgnore;
   FIteMMenu.Duplicates  := dupIgnore;


   QryUsuario.open;
   QryUsuarioAcesso.open;

end;

procedure TFrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QryUsuario.close;
   QryUsuarioAcesso.close;
   FTreeView_Listar.Free;

   FCategoria.Free;
   FIteMMenu.Free;

   Action :=Cafree;
end;

procedure TFrmUsuarios.BtnRecriarClick(Sender: TObject);
begin
  if Pergunta('Esse processo irá recriar todos os Menus para este usuário... Continuar?') = false then
    exit;

  ListarMenus;
end;

procedure TFrmUsuarios.ListarMenus;
var
  I, IC      : Integer;
  mAction    : TAction;
begin
   FCategoria.Clear;
   FIteMMenu.Clear;

   for I := 0 to Pred(FrmPrincipal.ActionMenus.ActionCount) do
   begin
     if FCategoria.IndexOf(FrmPrincipal.ActionMenus.Actions[I].Category)<0 then
     begin
       FCategoria.Add(FrmPrincipal.ActionMenus.Actions[I].Category);
     end;
   end;

   try
     QryUsuarioAcesso.DisableControls;
     QryUsuarioAcesso.Close;

     try
       QryExcluirAcesso.ParamByName('ID').AsInteger := QryUsuario.FieldByName('ID').AsInteger;
       QryExcluirAcesso.ExecSQL;
     finally
       QryUsuarioAcesso.Open;
     end;


     for IC := 0 to FCategoria.Count-1 do
     begin
       for I := 0 to Pred(FrmPrincipal.ActionMenus.ActionCount) do
       begin
         mAction := TAction(FrmPrincipal.ActionMenus.Actions[I]);
         if FCategoria[IC] = mAction.Category   then
         begin
           QryUsuarioAcesso.Append;
           QryUsuarioAcesso.FieldByName('CATEGORIA').AsString  :=FCategoria[IC];
           QryUsuarioAcesso.FieldByName('MENU').AsString       :=UpperCase(mAction.Name);
           QryUsuarioAcesso.FieldByName('TITULO').AsString     :=DeletaCaract(mAction.Caption, '&' );
           QryUsuarioAcesso.FieldByName('ACESSO').AsString     :='NAO';
           QryUsuarioAcesso.Post;
         end;
       end;
     end;
   finally
     QryUsuarioAcesso.EnableControls;
   end;

   {

   for I := 0 to Pred(FrmPrincipal.ActionMenus.ActionCount) do
   begin
     mAction := TAction(FrmPrincipal.ActionMenus.Actions[I]);



     mTreeNode := FTreeView_Listar.Items.Add(FTreeView_Listar.Items.GetFirstNode, mAction.Category);
     if mTreeNode=nil then
     begin
       QryUsuarioAcesso.append;
       QryUsuarioAcesso.FieldByName('MENU').AsString         :='>> '+UpperCase( DeletaCaract(mAction.Category, '&' ) ) +' <<';
       QryUsuarioAcesso.FieldByName('GRUPOMENUS').AsString   :='S';
       QryUsuarioAcesso.FieldByName('MENU_NAME').AsString    :='CATEGORIA';
       QryUsuarioAcesso.Post;
     end;

     QryUsuarioAcesso.append;
     QryUsuarioAcesso.FieldByName('MENU').AsString          :='    '+DeletaCaract(mAction.Caption, '&' );
     QryUsuarioAcesso.FieldByName('GRUPOMENUS').AsString    :='N';
     QryUsuarioAcesso.FieldByName('MENU_NAME').AsString     :=UpperCase(mAction.Name);
     QryUsuarioAcesso.FieldByName('MENU_ACESSAR').AsString  :='N';

     QryUsuarioAcesso.Post;

   end;
   QryUsuarioAcesso.close;
   QryUsuarioAcesso.open;
   }
end;


procedure TFrmUsuarios.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditUserName.SetFocus;

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   QryUsuarioAcesso.Cancel;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   if empty(QryUsuario.FieldByName('SENHA').AsString) then
   begin

      BeepAlerta;
      Informar('Atenção, a senha é obrigatória ');
      EditSenha.SetFocus;
      Abort;
   end;

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (QryUsuarioAcesso.state in [dsEdit, dsInsert]) then
   Begin
      QryUsuarioAcesso.Post;
   End;
end;

procedure TFrmUsuarios.GroupBox1Enter(Sender: TObject);
begin
   FrmFrameBotoes1SpbSalvarClick(Sender);
end;

procedure TFrmUsuarios.GroupBox2Exit(Sender: TObject);
begin
   If (QryUsuario.state in [dsEdit, dsInsert]) then
   Begin
      QryUsuario.Post;
   End;
end;

procedure TFrmUsuarios.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuarios.QryUsuarioBeforePost(DataSet: TDataSet);
begin

   If empty(QryUsuario.FieldByName('SENHA').AsString) then
   begin
      BeepCritica;
      Informar('Atenção, a senha é obrigatória ');
      EditSenha.SetFocus;
      exit;
   end;

end;

procedure TFrmUsuarios.QryUsuarioAcessoBeforePost(DataSet: TDataSet);
begin
   QryUsuarioAcesso.FieldByName('ID').AsInteger      :=  QryUsuario.FieldByName('ID').AsInteger;
end;

procedure TFrmUsuarios.QryUsuarioAfterScroll(DataSet: TDataSet);
begin
  try
    QryUsuarioAcesso.Close;
    QryUsuarioAcesso.ParamByName('ID').AsInteger := QryUsuario.FieldByName('ID').AsInteger;
  finally
    QryUsuarioAcesso.Open;
  end;
end;

procedure TFrmUsuarios.QryUsuarioNewRecord(DataSet: TDataSet);
begin
   QryUsuario.FieldByName('BLOQUEAR').AsString := 'N';
   QryUsuario.FieldByName('ONLINE').AsString   := 'N';
end;

function TFrmUsuarios.EncontrarNo(aNome: string): TTreeNode;
var
  i: Integer;
begin

  Result := nil;
  with FTreeView_Listar.Items do
  begin
    for i := 0 to Pred(Count) do
      if Item[i].Text=aNome then
      begin
        Result := Item[i];
        Break;
      end;
  end;
end;

procedure TFrmUsuarios.BtnLiberarTudoClick(Sender: TObject);
begin
   try
     QryUsuarioAcesso.close;
     QryUsuarioSetarAcesso.ParamByName('ID').AsInteger := QryUsuario.FieldByName('ID').AsInteger;
     QryUsuarioSetarAcesso.ParamByName('ACAO').AsString :='SIM';
     QryUsuarioSetarAcesso.ExecSQL;
   finally
     QryUsuarioAcesso.Open;
   end;
end;

procedure TFrmUsuarios.BitBtn1Click(Sender: TObject);
begin
  FrmUsuarioLog := TFrmUsuarioLog.create(self);
  FrmUsuarioLog.ShowModal;
end;

procedure TFrmUsuarios.BtnBloquearTudoClick(Sender: TObject);
begin
   try
     QryUsuarioAcesso.close;
     QryUsuarioSetarAcesso.ParamByName('ACAO').AsString :='NAO';
     QryUsuarioSetarAcesso.ExecSQL;
   finally
     QryUsuarioAcesso.Open;
   end;
end;

End.
