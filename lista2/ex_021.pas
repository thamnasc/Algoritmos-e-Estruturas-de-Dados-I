(* Enunciado: 

Faça um programa Pascal que leia do teclado um número inteiro positivo. 
Esse número deve ser classificado em uma das seguintes situações: 

Múltiplo exclusivamente de 7. 

Múltiplo exclusivamente de 11. 

Múltiplo de 7 e de 11. 

Não é múltiplo nem de 7 nem de 11. 

O programa deve imprimir a situação correspondente ao número lido. 

Exemplos: 
Entrada 1: 
210 

Saída Esperada 1: 
Multiplo exclusivamente de 7. 

Entrada 2: 
200 

Saída Esperada 2: 
Nao e multiplo nem de 7 nem de 11. *)

program Ex_021;
var num: longint;

begin
        read(num);
        if ((num mod 7 = 0) AND (num mod 11 = 0)) then
                writeln('Multiplo de 7 e de 11.')
        else if (num mod 7 = 0) then
                writeln('Multiplo exclusivamente de 7.')
        else if (num mod 11 = 0) then
                writeln('Multiplo exclusivamente de 11.')
        else
                writeln('Nao e multiplo nem de 7 nem de 11.');
end.

