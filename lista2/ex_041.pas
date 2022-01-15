(* Enunciado: 

Faça um programa Pascal que receba um número positivo N e imprima na tela a soma dos N primeiros números da sequência de Fibonacci. 
Os dois primeiros números da sequência são 0 e 1, e os próximos são dados pela soma dos dois últimos números anteriormente calculados. 

A título de exemplo, os oito primeiros valores dessa sequência são: 0, 1, 1, 2, 3, 5, 8, 13. 

Exemplos: 
Entrada 1: 
3 
Saída Esperada 1: 
2 

Entrada 2: 
5 
Saída Esperada 2: 
7 *)

program ex_041;
var penult, ult, aux, i, N, soma: longint;

begin
    read(N);
    penult:= 0;
    ult:= 1;
    aux:= 0;
    i:= 2;
    soma:= 0;
    if (N > 0) then
    begin
        while(i <= N) do
        begin
                soma:= soma + ult;
                aux:= ult;
                ult:= penult + aux;
                penult:= aux;
                i:= i + 1;
        end;
    end;
    writeln(soma);
end.
