(* Enunciado: 

Faça um programa Pascal que leia dois números inteiros do teclado e imprima SIM se o primeiro 
número é divisível pelo segundo. 

Exemplos: 
Entrada 1: 
5 10 
Saída Esperada 1: 
NAO 

Entrada 2: 
4 2 
Saída Esperada 2: 
SIM 

Entrada 3: 
7 21 
Saída Esperada 3: 
NAO *)

program Ex_110;
var A, B: longint;

begin
        read(A, B);
        if A mod B = 0 then
                writeln('SIM')
        else
                writeln('NAO');
end.

