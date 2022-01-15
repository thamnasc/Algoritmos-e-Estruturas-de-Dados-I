(* Enunciado: 

Faça um programa Pascal que leia do teclado um número inteiro e imprima SIM caso o número seja impar, 
negativo e menor que -20 ou então se for par, positivo e maior que 7. Caso contrário imprima NAO. 
A dica é usar uma combinação correta que envolva os operadores AND e OR. 

Exemplos: 
Entrada 1: 
17 
Saída Esperada 1: 
NAO 

Entrada 2: 
-101 
Saída Esperada 2: 
SIM 

Entrada 3: 
-13 
Saída Esperada 3: 
NAO *)

program Ex_116;
var num: integer;

begin
        read(num);
        if (num mod 2 <> 0) AND (num < 0) AND (num < -20) OR (num mod 2 = 0) AND (num > 0) AND (num > 7) then
                writeln('SIM')
        else
                writeln('NAO');
end.
