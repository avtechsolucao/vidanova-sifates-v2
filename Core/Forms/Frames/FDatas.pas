﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FDatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type

   TFrameDatas = class(TFrame)
      GrupoFrameData: TGroupBox;
      MskDataFim: TMaskEdit;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      Label3: TLabel;
      procedure FrameEnter(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);

   private

   public

   end;

implementation

uses Global, Biblioteca;

{$R *.dfm}


procedure TFrameDatas.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);
end;

procedure TFrameDatas.MskDataFimExit(Sender: TObject);
begin

   MskDataFim.text := fncDataValidar(MskDataFim.text);

   if StrToDate(MskDataIni.text) > StrToDate(MskDataFim.text) then
   begin
      BeepCritica;
      Informar('Data Final deve ser igual ou maior que a data Inicial' + #13 +
        #10 + 'Verifique.');

      MskDataFim.Setfocus;
   end;

end;

procedure TFrameDatas.FrameEnter(Sender: TObject);
begin
   MskDataIni.text := DateToStr(Date);
   MskDataFim.text := DateToStr(Date);
   MskDataIni.Setfocus;
end;

end.
