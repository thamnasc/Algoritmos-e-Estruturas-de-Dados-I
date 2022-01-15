(* Enunciado: 

Dado um número inteiro que representa uma quantidade de segundos, faça um programa que imprima o seu valor equivalente em horas, minutos e segundos, 
nesta ordem. 
Se a quantidade de segundos for insuficiente para dar um valor em horas, o valor em horas deve ser 0 (zero). 
A mesma observação vale em relação aos minutos e segundos. 

Exemplos: 
Entrada 1: 
3600 
Saída Esperada 1: 
1:0:0 

Entrada 2: 
3500 
Saída Esperada 2: 
0:58:20 

Entrada 3: 
7220 
Saída Esperada 3: 
2:0:20 *)

program Exercicio_082;
var sec, hour, minute, second: longint;

begin
        read(sec);
        hour:= sec div 3600;
        minute:= sec mod 3600 div 60;
        second:= sec mod 3600 mod 60;
        writeln(hour,':' , minute, ':', second);
end.
