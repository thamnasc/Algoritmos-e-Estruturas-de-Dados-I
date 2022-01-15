(* Enunciado: 

Considere a razão r de uma P.A. (Progressão Aritmética) e um termo qualquer, k (ak). Escreva um programa Pascal para calcular o enésimo termo n (an). Seu programa deve ler k, ak, r, n do teclado e imprimir an, segundo a fórmula: 

An = Ak + (n - k) x r

Exemplos: 
Entrada 1: 
1 5 2 10 
Saída Esperada 1: 
23 

Entrada 2: 
10 20 2 5 
Saída Esperada 2: 
10 

Entrada 3: 
100 500 20 90 
Saída Esperada 3: 
300 *)

program Ex_119;
var an, k, ak, r, n: longint;

begin
        read(k, ak, r, n);
        an:= ak + (n - k) * r;
        writeln(an);
end.
