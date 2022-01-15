(* Enunciado: 

Faça um programa Pascal que leia do teclado dois números positivos ímpares A e B onde (A <= B) e calcule o produto dos números ímpares de A até B. 
Isto é, calcule: 

A x (A + 2) x (A + 4) x ... x B

Imprima "erro" caso o número lido não satisfaça as condições. Caso contrário imprima o resultado do cálculo. 

Exemplos: 
Entrada 1: 
3 5 
Saida Esperada 1: 
15 

Entrada 2: 
7 15 
Saida Esperada 2: 
135135 *)

program ex_048;
var A, B, prod: longint;

begin
        read(A, B);
        prod:= 1;
        if((A mod 2 <> 0) AND (B mod 2 <> 0)) then
        begin
                while(A <= B) do
                begin
                        prod:= prod * A;
                        A:= A + 2;
                end;
                writeln(prod);
        end
        else
                writeln('erro');
end.
