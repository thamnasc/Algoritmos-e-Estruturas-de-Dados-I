(* Enunciado: 

Faça um programa Pascal que receba um número inteiro positivo N e calcule a soma dos N primeiros números ímpares positivos. Ao final, imprima esta soma. 

Exemplos: 
Entrada 1: 
2 

Saída Esperada 1: 
4 

Entrada 2: 
5 

Saída Esperada 2: 
25 *)

program ex_043;
var N, i, impar, num: longint;

begin
    read(N);
    i:= 1;
    num:= 1;
    impar:= 3;
    if(N = 0) then
        writeln(0)
    else
    begin
        while(i < N) do
        begin
            num:= num + impar;
            impar:= impar + 2;
            i:= i + 1;
        end;
        writeln(num);
    end;
end.
