(* Enunciado: 

Faça um programa Pascal que leia uma sequência de números inteiros terminada em zero e imprima o maior e o menor número dessa sequência. 
O valor zero não deve ser ser processado, ele serve para marcar o final da entrada de dados. 

Exemplos: 
Entrada 1: 
1 55 30 -2 560 -1 0 

Saída Esperada 1: 
560 -2 

Entrada 2: 
-3 -4 -30 -10 0 

Saída Esperada 2: 
-3 -30 *)

program ex_040;
var maior, menor, num: longint;

begin
    read(num);
    maior:= num;
    menor:= num;
    if(num <> 0) then
    begin
        while(num <> 0) do
        begin
            if(num > maior) then
                maior:= num;
            if(num < menor) then
                menor:= num;
            read(num);
        end;
        writeln(maior, ' ', menor);
    end;
end.
