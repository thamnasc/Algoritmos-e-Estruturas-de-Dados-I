(* Enunciado: 

Observe a soma infinita abaixo. Ela é formada por frações em que o numerador e o denominador são os valores sucessores dos valores do 
numerador e do denominador da frações anterior, porém, alternadamente invertidos (exceto a primeira fração). 

S = (1/2) + (4/3) + (5/6) + (8/7) + (9/10) + (12/11) + ... 

Faça um programa em Pascal para calcular o valor de S, considerando apenas os 10 primeiros termos da série. Ao final, imprimir o resultado 
encontrado para S com 2 casas após a vírgula. *)

program series_004;
var n: longint;

function soma(n: longint): real;
var num, denum, aux, i: longint;
begin
        soma:= 0;
        num:= 1;
        denum:= 2;
        for i:= 1 to n do
        begin
                soma:= soma + (num / denum);
                aux:= num;
                num:= denum + 2;
                denum:= aux + 2;
        end;
end;

begin
        n:= 10;
        writeln(soma(n):0:2);
end.

