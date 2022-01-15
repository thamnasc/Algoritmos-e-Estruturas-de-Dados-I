(* Enunciado: 

Faça um programa Pascal que calcule o valor da soma dos quadrados dos primeiros 50 inteiros positivos não nulos e imprima o resultado do cálculo na tela. 
Observe que este programa não tem entrada, apenas saída. 

1² + 2² + 3² + ... + 50²
*)

program ex_047;
var i, square, sum: longint;

begin
        i:= 1;
        square:= 0;
        sum:= 0;
        while(i <= 50) do
        begin   
                square:= i * i;
                sum:= sum + square;
                i:= i + 1;
        end;    
        writeln(sum);
end. 
