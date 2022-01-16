(* Enunciado: 

Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador é o dobro do denominador da fração anterior e cada denominador, 
por sua vez, é o dobro do numerador da fração anterior (exceto a primeira fração). 

S = (1/3) + (6/2) + (4/12) + (24/8) + (16/48) + ...

Faça um programa em Pascal para calcular o valor de S, considerando apenas os 10 primeiros termos da série. Ao final, imprimir o resultado encontrado 
para S com duas casas após a vírgula.  *)

program series_005;
var n: longint;

function soma(n: longint): real;
var num, denum, aux, i: longint;
begin
        soma:= 0;
        num:= 1;
        denum:= 3;
        for i:= 1 to n do
        begin
                soma:= soma + (num / denum);
                aux:= num;
                num:= denum * 2;
                denum:= aux * 2;
        end;
end;

begin
        n:= 10;
        writeln(soma(n):0:2);
end.
