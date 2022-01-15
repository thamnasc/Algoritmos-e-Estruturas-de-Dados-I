(* Responder questão 'Exercicio 104' 

Enunciado: 

Faça um programa Pascal que leia do teclado dois números inteiros e imprima qual é o menor valor entre eles. 

Exemplos: 
Entrada 1: 
5 4 
Saída Esperada 1: 
4 

Entrada 2: 
-3 -4 
Saída Esperada 2: 
-4 

Entrada 3: 
6 15 
Saída Esperada 3: 
6 *)

program Ex_104;
var A, B: longint;

begin
        read(A, B);
        if A <  B then
                writeln(A)
        else
                writeln(B);
end.
