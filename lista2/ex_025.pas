(* Enunciado: 

Faça um programa Pascal que leia do teclado três valores inteiros representando a data de nascimento de uma pessoa (dia, mês e ano) 
e imprima quantos anos completos ela terá no dia 29/04/2021. 

Exemplos: 

Entrada 1: 
17 05 1988 

Saída Esperada 1: 
32 

Entrada 2: 
29 04 2021 

Saída Esperada 2: 
0 *)

program Ex_025;
var dia, mes, ano, anos: integer;

begin
        read(dia, mes, ano);
        anos:= 2021 - ano;
        if((ano <> 2021) AND ((4 < mes) OR ((mes = 4) AND (29 < dia)))) then
                anos:= anos - 1;
        writeln(anos);
end.
