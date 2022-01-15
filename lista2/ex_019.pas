(* Enunciado: 

Faça um programa Pascal que leia do teclado três valores reais que são as três notas obtidas por uma pessoa. 
Leia também do teclado a quantidade de faltas dessa pessoa. 

Caso o resultado da média aritmética seja inferior a 4.0 o programa deverá imprimir "NAO". 

Caso a média seja maior ou igual e 4.0 e inferior a 7.0, imprima "TALVEZ". 

Caso a média seja maior ou igual a 7.0 imprima "SIM". 

Alunos com o número de faltas maior ou igual a 10 estarão automaticamente reprovados. Neste último caso, imprima "NAO". 

Exemplos: 
Entrada 1: 
7.5 8.1 9.3 6 

Saída Esperada 1: 
SIM 

Entrada 2: 
10.0 9.0 9.3 10 

Saída Esperada 2: 
NAO *)

program Ex_019;
var med, n1, n2, n3, faltas: real;

begin
        read(n1, n2, n3, faltas);
        med:= (n1+n2+n3)/3;
        if(faltas < 10) then
        begin
                if(med < 4) then
                        writeln('NAO')
                else if (med < 7) then
                        writeln('TALVEZ')
                else
                        writeln('SIM');
        end
        else
                writeln('NAO');
end.
