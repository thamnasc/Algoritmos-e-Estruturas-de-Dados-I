(* Enunciado: 

Faça um programa Pascal que leia do teclado um número inteiro N e imprima se ele é PAR ou IMPAR. 

Exemplos: 
Entrada 1: 
5 
Saída Esperada 1: 
IMPAR 

Entrada 2: 
3 
Saída Esperada 2: 
IMPAR 

Entrada 3: 
2 
Saída Esperada 3: 
PAR *) 

program Ex_112;
var N: integer;

begin
        read(N);
        if N mod 2 = 0 then
                writeln('PAR')
        else
                writeln('IMPAR');
end.
