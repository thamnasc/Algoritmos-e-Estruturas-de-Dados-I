(* Responder questão 'Exercicio 106' 

Enunciado: 

Faça um programa Pascal que leia um número inteiro do teclado e imprima o cubo do número caso ele seja positivo ou igual a zero e o quadrado do número caso ele seja negativo. 

Exemplos: 
Entrada 1: 
0 
Saída Esperada 1: 
0 

Entrada 2: 
4 
Saída Esperada 2: 
64 

Entrada 2: 
-5 
Saída Esperada 2: 
25 *)

program Ex_106;
var num: integer;

begin
        read(num);
        if num >= 0 then
                writeln(num*num*num)
        else
                writeln(num*num);
end.
