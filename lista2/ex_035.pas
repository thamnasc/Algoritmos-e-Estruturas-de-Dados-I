(* Enunciado: 

Faça um programa Pascal que leia do teclado um valor real que representa o salário mensal de uma pessoa. 
Seu programa deve imprimir valor do imposto de renda (IR) mensal, em reais, de acordo com a tabela de 2009, que está abaixo. 

Se o salário digitado for menor que o salário mínimo de R$ 540,00 o programa deve imprimir "NAO". 

menor ou igual a 1424,00: 0%; 

maior que 1424,00, menor ou igual a 2150,00: 7.5%; 

maior que 2150,00, menor ou igual a 2866,00: 15%; 

maior que 2866,00, menor ou igual a 3582,00: 22.5%; 

maior que 3582,00: 27.5%. 

Junto com o valor do IR mensal, o programa deve imprimir a Faixa (1,2,3,4 ou 5) correspondente ao salário. 

Exemplos: 
Entrada 1: 
500.00 

Saída Esperada 1: 
NAO 

Entrada 2: 
2300.00 

Saída Esperada 2: 
3 345.00 *)

program ex_035;
var sal, IR: real;
i: integer;

begin
    read(sal);
    i:= 0;
    if(sal <= 1424) then
    begin
        IR:= 0;
        i:= 1;
    end
    else if(sal <= 2150) then
    begin
        IR:= sal * 0.075;
        i:= 2;
    end
    else if(sal <= 2866) then
    begin
        IR:= sal * 0.15;
        i:= 3;
    end
    else if(sal <= 3582) then
    begin
        IR:= sal * 0.225;
        i:= 4;
    end
    else
    begin
       IR:= sal * 0.275;
        i:= 5;
    end;
    if(sal < 540) then
        writeln('NAO')
    else
        writeln(i, ' ', IR:0:2);
end.
