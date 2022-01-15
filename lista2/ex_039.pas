(* Enunciado: 

Faça um programa Pascal que receba um número inteiro positivo N e calcule a produto dos N primeiros números pares positivos. 
Ao final, imprima este produto. Para esse exercício, considere o primeiro número par como sendo 2. 

Exemplos: 
Entrada 1: 
2 
Saída Esperada 1: 
8 

Entrada 2: 
4 
Saída Esperada 2: 
384  *)

program ex_39;
var num, par, N, i: longint;

begin
    read(N);
    i:= 1;
    num:= 2;
    par:= 4;
    if(N = 1) then
        writeln(2)
    else if(N <> 0) then
    begin
        while(i < N) do
        begin
            num:= num * par;
            par:= par + 2;
            i:= i + 1;
        end;
        writeln(num);
    end
    else
        writeln(0);
end.
