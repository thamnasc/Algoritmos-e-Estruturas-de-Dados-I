(* Enunciado: 

Faça um programa Pascal que receba uma sequência de números reais terminada em zero representando o saldo bancário de alguns 
clientes de um banco e imprima aqueles que são negativos. O valor zero serve para indicar o final da entrada de dados e não deve ser processado. 

Exemplos: 
Entrada 1: 
832.47 
215.25 
-1987.11 
19.00 
-45.38 
0 

Saída Esperada 1: 
-1987.11 
-45.38 *)

program ex_062;
var sal: real;

begin
    read(sal);
    while(sal <> 0) do
    begin
        if(sal < 0) then
            writeln(sal:0:2);
        read(sal);    
    end;
end.
