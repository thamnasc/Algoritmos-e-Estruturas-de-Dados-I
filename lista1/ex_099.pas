(* Enunciado: 

Faça um programa Pascal que leia três números inteiros representando a idade de uma pessoa expressa em anos, 
meses e dias, respectivamente, e imprima-a expressa apenas em dias. Para este exercício, considere que todos 
os meses possuem 30 dias e desconsidere anos bissextos. 

Exemplos: 
Entrada 1: 
12 4 18 
Saída Esperada 1: 
4518 

Entrada 2: 
30 2 1 
Saída Esperada 2: 
11011 *)

program Exercicio_099;
var anos, meses, dias, days: longint;

begin
        read(anos, meses, dias);
        days:= (anos*365+meses*30+dias);
        writeln(days);
end.
