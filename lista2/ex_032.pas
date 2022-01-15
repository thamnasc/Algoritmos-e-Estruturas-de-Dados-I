(* Enunciado: 

Uma empresa concederá um aumento de salário aos seus funcionários, mas este aumento será de acordo com o cargo que cada um ocupa. 
A tabela abaixo contém os códigos, o cargo e e percentual de aumento correspondente. 
Faça um programa Pascal que leia dois valores do teclado, o primeiro é o salário de um funcionário e o segundo é o código do cargo dele. 
Calcule o valor do novo salário. 
Se o cargo do funcionário não estiver na tabela, ele deverá receber 40% de aumento. Imprima o valor do salário antigo, 
o do novo salário e a diferença entre eles, nesta ordem, em 3 linhas. 

Código      Cargo           Percentual 

101         Gerente         10% 

102         Engenheiro      20% 

103         Técnico         30% 

Exemplos: 
Exemplo 1: 
2500 101 

Saida Esperada 1: 
2500.00 
2750.00 
250.00 

Exemplo 2: 
5000 102 

Saida Esperada 2: 
5000.00 
6000.00 
1000.00 *)

program Ex_032;
var sal, cod, novo: real;

begin
    read(sal, cod);
    if(cod = 101) then
        novo:= sal + sal * 0.1
    else if(cod = 102) then
        novo:= sal + sal * 0.2
    else if(cod = 103) then
        novo:= sal + sal * 0.3
    else 
        novo:= sal + sal * 0.4;
    writeln(sal:0:2);
    writeln(novo:0:2);
    writeln((novo - sal):0:2);
end.
