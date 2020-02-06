{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}


unit Clientes;

interface

uses  Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DBCtrls,
   Grids, Menus, Dialogs, StdCtrls, Messages, Graphics,
   Printers, shellapi, MMSystem,
   Sysutils, DBGrids,

   FireDAC.Comp.Client,

   Classe.Global, Global, Biblioteca;



// Checa se o cliente possui atrasos no pagamento
Function ChecarAtraso(TblParametros, TblClientes, TblCtaReceber: TFDQuery;
  CodigoCliente: String): boolean;

// checar se est� ou n�o inativo
Function ClienteInativo(TblParametros, TblClientes, Tbl_Vendas: TFDQuery;
  CodigoCliente: String): boolean;

Procedure RegistrarUltimaVenda(TblClientes, Tbl_Pedidos: TFDQuery;
  CodigoCliente: String);

// Checa se o cliente possui atrasos no pagamento
Function ChecarBloqueio(TblClientes: TFDQuery; CodigoCliente: String): boolean;


Implementation


{ xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx }
{ xxx                      Fun��es Personalizadas                        xxx }
{ xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx }
// Checa se o cliente possui atrasos no pagamento
Function ChecarAtraso(TblParametros, TblClientes, TblCtaReceber: TFDQuery;
  CodigoCliente: String): boolean;
var
   ix: integer;
   TblStatus1, TblStatus2, TblStatus3: boolean;
Begin

   Result := False;

   // salva status da tabela para retornar o status real quando acabar de checar
   TblStatus1 := TblClientes.Active;
   TblStatus2 := TblParametros.Active;
   TblStatus3 := TblCtaReceber.Active;

   // abrir tabelas
   TblClientes.Open;
   TblParametros.Open;
   TblCtaReceber.Open;

   NumParcelas := 0;
   SQLtemp := '';
   TextoCliente := '';
   SQLtemp := TblCtaReceber.SQL.Text; // salva script padr�o

   If TblClientes.Locate('Codigo', CodigoCliente, []) = False Then
   Begin
      Atencao('Erro ao tentar localizar cliente para checar parcelas atrasadas');
      Result := False;
      Exit;
   end;

   //
   ix := TblParametros.FieldByName('Atrado_permitido').AsInteger;

   TblCtaReceber.Close;
   TblCtaReceber.SQL.Clear;
   TblCtaReceber.SQL.Add(' SELECT * FROM CTA_RECEBER  ');
   TblCtaReceber.SQL.Add(' WHERE   ');
   TblCtaReceber.SQL.Add(' CLIENTE=:xcliente ');
   TblCtaReceber.SQL.Add(' AND ');
   TblCtaReceber.SQL.Add(' QUITADO<>''S'' ');
   TblCtaReceber.ParamByName('xcliente').Value := CodigoCliente;
   TblCtaReceber.Open;

   (*
     While not TblCtaReceber.Eof do
     Begin

     // Checar vencimento
     If (TblCtaReceber.FieldByName('venc').AsDateTime <= Date) then
     Begin

     DiasAtraso:=(Date-TblCtaReceber.FieldByName('venc').AsDateTime);

     If DiasAtraso>=ix then
     begin

     Inc(NumParcelas);

     // captura os dados da fatura
     FaturasAtrasadas[NumParcelas]:='DATA: '        + TblCtaReceber.FieldByName('DATA').AsString+
     ' - VENCIMENTO: '  +TblCtaReceber.FieldByName('venc').AsString+
     ' - FATURA: '      +TblCtaReceber.FieldByName('DOCUMENTO').AsString+
     ' - VALOR: '       +FormatFloat(CurrencyString +' ###,##0.00',TblCtaReceber.FieldByName('valor').AsFloat)+#13;

     TextoCliente:=TextoCliente+FaturasAtrasadas[NumParcelas]+#13;
     Result:=True;

     End;

     End;
     TblCtaReceber.Next;
     End;

   *)

   TblCtaReceber.Close;
   TblCtaReceber.SQL.Clear;
   TblCtaReceber.SQL.Add(SQLtemp);

   // retorna os status real das tabelas utilizadas
   TblClientes.Active := TblStatus1;
   TblParametros.Active := TblStatus2;
   TblCtaReceber.Active := TblStatus3;

End;

// Registrar ultima venda do cliente
Procedure RegistrarUltimaVenda(TblClientes, Tbl_Pedidos: TFDQuery;
  CodigoCliente: String);
Begin

   CodigoCliente := Trim(CodigoCliente);

   if not TblClientes.Active then
      TblClientes.Open;

   if not Tbl_Pedidos.Active then
      Tbl_Pedidos.Open;

   // localizar ultima venda do cliente
   If Tbl_Pedidos.Locate('Cliente', CodigoCliente, []) = true then
   Begin
      // se for encontrado, localizar cliente no cadastro
      If TblClientes.Locate('CODIGO', CodigoCliente, []) = true then
      begin
         // se ultima venda do pedido for maior ou igual a data do sistema
         // registra a data da ultima venda
         If Tbl_Pedidos.FieldByName('DataVenda').AsDateTime >= Date then
         begin
            TblClientes.edit;
            TblClientes.FieldByName('ULTIMA_VENDA').AsDateTime :=
              Tbl_Pedidos.FieldByName('DataVenda').AsDateTime;
            TblClientes.Post;
         end;
      end;
   End;
   TblClientes.Refresh;

End;

// checar se est� ou n�o inativo
Function ClienteInativo(TblParametros, TblClientes, Tbl_Vendas: TFDQuery;
  CodigoCliente: String): boolean;
Begin

   TblParametros.First;
   Result := False; // False = Ativo
   wFloat[0] := TblParametros.FieldByName('Inatividade').AsInteger;
   wFloat[1] := 0;
   CodigoCliente := Trim(CodigoCliente);

   TDatas := TblClientes.FieldByName('DATA').AsDateTime;
   If Tbl_Vendas.Locate('Cliente', CodigoCliente, []) = true then
   begin

      // subrair
      // wFloat[1] :=(TblClientes.FieldByName('ULTIMA_VENDA').AsDateTime-Tbl_Vendas.FieldByName('DataVenda ').AsDateTime);
      TDatas := Tbl_Vendas.FieldByName('DataVenda').AsDateTime;
      wFloat[1] := (Date - TDatas);
      If wFloat[1] < 1 then
         wFloat[1] := 0;

      // se inativo h� N dias, considerar como
      If wFloat[1] >= TblParametros.FieldByName('Inatividade').AsInteger then
      begin
         Result := true; // True = O cliente foi considerado Inativo
      End
      Else
      Begin
         Result := False; // False = Ativo
      End;

   End
   else
   // --------------------------------------------------------------------------
   // se n�o foi encontrado venda para o cliente, ent�o considerar como Inativo
   begin
      Result := False; // True = O cliente foi considerado Inativo
   end;

End;

// Checa se o cliente possui atrasos no pagamento
Function ChecarBloqueio(TblClientes: TFDQuery; CodigoCliente: String): boolean;
begin
   //
   if not TblClientes.Active then
      TblClientes.Open;

   If TblClientes.Locate('CODIGO', CodigoCliente, []) = False then
   Begin
      Result := False;
      Atencao('Erro ao tentar localizar cliente para checagem de Bloqueio');

      Exit;
   End;

   If TblClientes.FieldByName('IC_RESTRICAO').AsString = 'S' then
   Begin
      Result := true;
   End
   else
   Begin
      Result := False;
   End;

End;


end.
