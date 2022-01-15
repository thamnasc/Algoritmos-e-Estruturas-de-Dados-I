(* Enunciado: 

Faça um programa Pascal que leia um número inteiro do teclado e indique se ele está compreendido 
entre 20 e 90 ou não (20 e 90 não estão na faixa de valores). 

Exemplos: 
Entrada 1: 
50 
Saída Esperada 1: 
SIM 

Entrada 2: 
20 
Saída Esperada 2: 
NAO 

Entrada 3: 
90 
Saída Esperada 3: 
NAO *)

program Ex_108;
var num: integer;

begin
        read(num);
        if(20 < num) AND (num < 90) then
                writeln('SIM')
        else
                writeln('NAO');
end.
