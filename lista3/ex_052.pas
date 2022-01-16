(* Enunciado: 

Faça um programa Pascal que leia do teclado um número inteiro m e em seguida uma sequência de n números reais. Imprima a média aritmética inteira deles. 

(N1 + N2  + ... + Nm) / m

Exemplos: 
Entrada 1: 
2 2 4 
Saida Esperada 1: 
3 

Entrada 2: 
5 8 9 6 5 7 
Saida Esperada 2: 
7 *)

program ex_052;
var m, N, i, soma: longint;

begin
        read(m);
        soma:= 0;
        i:= 0;
        if(m <> 0) then
        begin
                while(i < m) do
                begin
                        read(N);
                        soma:= soma + N;
                        i:= i + 1;
                end;
                writeln(soma div m);
        end;
end.

