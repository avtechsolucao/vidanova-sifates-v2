﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelClientes;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, ComCtrls, FrmRelatorios, ISFEdit,
   ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit;

type
   TFrmRelClientes = class(TForm)
      Panel1: TPanel;
    pgControle: TPageControl;
      Tab_clientes: TTabSheet;
      Tab_fornecedores: TTabSheet;
      RadioGForn: TRadioGroup;
      BoxCidadesForn: TGroupBox;
      Label8: TLabel;
      DCodCidadeForn: TEdit;
      chkCidadesForn: TCheckBox;
      BoxEstadosForn: TGroupBox;
      Label9: TLabel;
      chkEstadosForn: TCheckBox;
      dCodEstadoForn: TComboBox;
      Panel2: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      RadioG: TRadioGroup;
      Panel3: TPanel;
      BoxRepresentante: TGroupBox;
      chkRepres: TCheckBox;
      BoxCidades: TGroupBox;
      Label2: TLabel;
    EditCidade: TEdit;
      chkCidades: TCheckBox;
      BoxEstados: TGroupBox;
      Label1: TLabel;
      chkEstados: TCheckBox;
    EditEstado: TComboBox;
      BoxClientes: TGroupBox;
      chkCliente: TCheckBox;
      EditNomeVendedor: TEdit;
    EditVendedor: TIDBEditDialog;
    FrameRelatorios1: TFrameRelatorios;
    RadioGroupOrdenar: TRadioGroup;
    EditClienteNome: TEdit;
    EditCliente: TIDBEditDialog;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    chkFornecedor: TCheckBox;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    BtnSair: TBitBtn;
    Btn_Imprimir: TSpeedButton;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure chkCidadesClick(Sender: TObject);
      procedure chkEstadosClick(Sender: TObject);
      procedure RadioGClick(Sender: TObject);
      procedure MaskEdit1Exit(Sender: TObject);
      procedure MaskEdit2Exit(Sender: TObject);
      procedure chkCidadesFornClick(Sender: TObject);
      procedure chkEstadosFornClick(Sender: TObject);
      procedure RadioGFornClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
   private
      { Private declarations }
      fTipoRelatorio : String;
   public
      { Public declarations }
      property TipoRelatorio  : string read fTipoRelatorio write fTipoRelatorio;
   end;

var
   FrmRelClientes: TFrmRelClientes;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FRelCliFones,
  FRelCliNumerica, FRelCliAlfa, FRelCliAnalitico, FRelCliCidades, FRelEstados,
  FRelClientesMalaDireta, FRelRepresentantes, FRelCliBloqueados, FRelFornFones,
  FRelFornCidades, FRelFornEstados, Classe.Usuarios;

{$R *.DFM}

procedure TFrmRelClientes.FormCreate(Sender: TObject);
begin
   pgControle.TabIndex := 0;
   MskDataIni.Text := DateToStr(Date - 365);
   MskDataFim.Text := DateToStr(Date);

   MaskEdit1.Text := DateToStr(Date - 365);
   MaskEdit2.Text := DateToStr(Date);

end;

procedure TFrmRelClientes.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.Text := fncDataValidar(MskDataIni.Text);
end;

procedure TFrmRelClientes.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelClientes.Btn_ImprimirClick(Sender: TObject);
begin

   if fTipoRelatorio='CLIENTE'  then
   begin
     dtDataIni         := StrToDateTime('01/01/2000 01'); //StrToDate(MskDataIni.text);
     dtDataFim         := StrToDateTime(MskDataFim.text+' 23:59');
     strCliente       := Trim(EditCliente.text);
     strVendedor      := Trim(EditVendedor.text);
     strCidade        := Trim(EditCidade.text);
     strEstado           := uppercase( Trim(Copy(EditEstado.Text, 1, 2)) );


   if RadioGroupOrdenar.ItemIndex = 0 then
      strOrdemDados :='VENDEDOR_NOME, NOME';

   if RadioGroupOrdenar.ItemIndex = 1 then
      strOrdemDados :='NOME';

   if RadioGroupOrdenar.ItemIndex = 2 then
      strOrdemDados :='CIDADENOME';

   if RadioGroupOrdenar.ItemIndex = 3 then
      strOrdemDados :=   'UF, VENDEDOR_NOME, NOME';

   end;

   // clientes
   //if pgControle.ActivePageIndex = 0 then
   if fTipoRelatorio='CLIENTE'  then
   begin

      if RadioG.ItemIndex = 0 then
         FrmRelCliFones := TFrmRelCliFones.create(self);

      if RadioG.ItemIndex = 1 then
         FrmRelCliNums := TFrmRelCliNums.create(self);

      if RadioG.ItemIndex = 2 then
         FrmRelCliAlfa := TFrmRelCliAlfa.create(self);

      if RadioG.ItemIndex = 3 then
         FrmRelCliAnalit := TFrmRelCliAnalit.create(self);

      if RadioG.ItemIndex = 4 then
         FrmRelCliCidades := TFrmRelCliCidades.create(self);

      if RadioG.ItemIndex = 5 then
         FrmRelEstados := TFrmRelEstados.create(self);

      if RadioG.ItemIndex = 6 then
      Begin
         FrmRelClientesMalaDireta := TFrmRelClientesMalaDireta.create(self);
         FrmRelClientesMalaDireta.ShowModal;
      End;

      if RadioG.ItemIndex = 7 then
         FrmRelRepresentantes := TFrmRelRepresentantes.create(self);

      if RadioG.ItemIndex = 8 then
         FrmRelCliBloqueados := TFrmRelCliBloqueados.create(self);

   end;

   // Fornecedor
   //if pgControle.ActivePageIndex = 1 then
   if fTipoRelatorio='FORNECEDOR'  then
   begin

      if RadioGForn.ItemIndex = 0 then
         FrmRelFornFones := TFrmRelFornFones.create(self);

      if RadioGForn.ItemIndex = 1 then
         FrmRelFornCidades := TFrmRelFornCidades.create(self);

      if RadioGForn.ItemIndex = 2 then
         FrmRelFornEstados := TFrmRelFornEstados.create(self);

   end;

   // Vendedores
   if pgControle.ActivePageIndex = 2 then
   begin
      {
        if RadioGVendedores.ItemIndex=0 then
        FrmRelFornFones:=TFrmRelFornFones.create(self);

        if RadioGVendedores.ItemIndex=1 then
        FrmRelFornCidades:=TFrmRelFornCidades.create(self);
      }

   end;

end;

procedure TFrmRelClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRelClientes.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelClientes.chkClienteClick(Sender: TObject);
begin

   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin

      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkRepresClick(Sender: TObject);
begin
   if chkRepres.Checked = true then
   Begin
      EditVendedor.Enabled := False;

   End
   Else
   Begin
      EditVendedor.Enabled := true;
      EditVendedor.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkCidadesClick(Sender: TObject);
begin

   If chkCidades.Checked = true then
   begin
      EditCidade.Enabled := False;
   end
   Else
   Begin
      EditCidade.Enabled := true;
      EditCidade.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkEstadosClick(Sender: TObject);
begin
   If chkEstados.Checked = true then
   begin
      EditEstado.Enabled := False;
   end
   Else
   Begin
      EditEstado.Enabled := true;
      EditEstado.SetFocus;
   End;

end;

procedure TFrmRelClientes.RadioGClick(Sender: TObject);
begin

   // por cidades
   If RadioG.ItemIndex = 4 then
   Begin
      BoxCidades.Visible := true;
   End
   Else
   Begin
      BoxCidades.Visible := False;
   End;

   // por estados
   If RadioG.ItemIndex = 5 then
   Begin
      BoxEstados.Visible := true;
   End
   Else
   Begin
      BoxEstados.Visible := False;
   End;

   If RadioG.ItemIndex = 7 then
   Begin
      BoxRepresentante.Visible := true;
   End
   Else
   Begin
      BoxRepresentante.Visible := False;
   End;

end;

procedure TFrmRelClientes.MaskEdit1Exit(Sender: TObject);
begin
   MaskEdit1.Text := fncDataValidar(MaskEdit1.Text);

end;

procedure TFrmRelClientes.MaskEdit2Exit(Sender: TObject);
begin
   MaskEdit2.Text := fncDataValidar(MaskEdit2.Text);

end;

procedure TFrmRelClientes.chkCidadesFornClick(Sender: TObject);
begin

   If chkCidadesForn.Checked = true then
   begin
      DCodCidadeForn.Enabled := False;

   end
   Else
   Begin
      DCodCidadeForn.Enabled := true;
      DCodCidadeForn.SelectAll;
      DCodCidadeForn.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkEstadosFornClick(Sender: TObject);
begin

   If chkEstadosForn.Checked = true then
   begin
      dCodEstadoForn.Enabled := False;
   end
   Else
   Begin
      dCodEstadoForn.Enabled := true;
      dCodEstadoForn.SetFocus;
   End;

end;

procedure TFrmRelClientes.chkFornecedorClick(Sender: TObject);
begin
   EditFornecedor.Enabled := not chkFornecedor.Checked;

   {
   if chkFornecedor.Checked = true then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SelectAll;
      EditFornecedor.SetFocus;
   End;
   }

end;

procedure TFrmRelClientes.RadioGFornClick(Sender: TObject);
begin
   // por cidades
   // por cidades
   If RadioGForn.ItemIndex = 1 then
   Begin
      BoxCidadesForn.Visible := true;
   End
   Else
   Begin
      BoxCidadesForn.Visible := False;
   End;

   // por estados
   If RadioGForn.ItemIndex = 2 then
   Begin
      BoxEstadosForn.Visible := true;
   End
   Else
   Begin
      BoxEstadosForn.Visible := False;
   End;

end;

end.
