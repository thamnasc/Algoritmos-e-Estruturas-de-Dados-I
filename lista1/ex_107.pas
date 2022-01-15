(* Enunciado: 

Faça um programa Pascal que leia de teclado um número inteiro e imprima se este é múltiplo de 3. 

Exemplos: 
Entrada 1: 
5 
Saída Esperada 1: 
NAO 

Entrada 2: 
-3 
Saída Esperada 2: 
SIM 

Entrada 3: 
15 
Saída Esperada 3: 
SIM *)

program Ex_107;
var num: longint;

begin
        read(num);
        if num mod 3 = 0 then
                writeln('SIM')
        else
                writeln('NAO');
end.
