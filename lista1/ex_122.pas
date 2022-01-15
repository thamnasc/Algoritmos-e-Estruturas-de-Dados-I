(* Enunciado: 

Uma P.A. (Progressão Aritmética) é determinada pela sua razão r e pelo primeiro termo (a1). 
Faça um programa Pascal que seja 
capaz de imprimir o enésimo (n) termo (an) de uma P.A., dado a razão (r) e o primeiro termo (a1). 
Seu programa deve ler três valores inteiro 
do teclado (n, r, a1) do teclado e imprimir an, segundo a fórmula: 

An = A1 + (n - 1) x r

Exemplos: 
Entrada 1: 
8 1 3 
Saída Esperada 1: 
10 

Entrada 2: 
100 10 1 
Saída Esperada 2: 
991 

Entrada 3: 
5 -2 0 
Saída Esperada 3: 
-8  *)

program Ex_122;
var an, n, r, a1: longint;

begin
        read(n, r, a1);
        an:= a1 + (n - 1) * r;
        writeln(an);
end. 
