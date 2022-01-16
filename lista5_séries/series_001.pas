(* Enunciado: 

Faça um programa em Pascal que leia um inteiro positivo n, e escreva a soma dos n primeiros termos da série abaixo: 

S = (1000/1) - (997/2) + (994/3) - (991/4) + ...

Imprima a saída com duas casas decimais. 

Exemplo: 
Entrada 1: 
2 
Saída Esperada 1: 
501.50 

Entrada 2: 
4 
Saída Esperada 2: 
585.08 *)

program series_001;
var n: longint;

function soma(numero: longint): real;
var num, denum, i: longint;
begin
        num:= 1000;
        denum:= 1;
        soma:= 0;
        for i:= denum to numero do
        begin
                if(denum mod 2 <> 0) then
                        soma:= soma + (num / denum)
                else // par
                        soma:= soma - (num / denum);
                num:= num - 3;
                denum:= denum + 1;
        end;
end;

begin
        read(n);
        writeln(soma(n):0:2);
end.
