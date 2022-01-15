(* Enunciado: 

Alguém deseja cobrir as paredes de uma cozinha com azulejos. As lojas somente vendem caixas com 10 azulejos. 
Todas as lojas do ramo vendem apenas 3 (três) tipos de azulejos, cujas dimensões são: 

50cm x 40cm; 

50cm x 60cm; 

50cm x 80cm. 

Faça um programa Pascal que leia do teclado dois valores inteiros representando respectivamente o tipo 
do azulejo desejado (um dos números 1, 2 ou 3) e a área que se deseja azulejar, em metros quadrados. 
Seu programa deve imprimir a quantidade de caixas de azulejos que deverão ser compradas para cobrir toda a área. 
Considere que pedaços de azulejo podem ser reaproveitados, de maneira a minimizar a quantidade de caixas. 

Exemplos: 
Entrada 1: 
2 122 

Saída Esperada 1: 
41 caixas *)

program Ex_036;
var tipo, area, caixa: real;

begin
    read(tipo, area);
    if(tipo = 1) then //50 cm x 40 cm = 0.2 m2 * 10 azulejos = 2 m2 
        caixa:= area/2
    else if(tipo = 2) then //50 cm x 60 cm = 0.3 m2 * 10 azulejos = 3 m2
        caixa:= area/3
    else // 50 cm x 80 cm = 0.4 m2 * 10 azulejos = 4 m2
        caixa:= area/4;
    if(caixa > (trunc(caixa))) then
        caixa:= trunc(caixa) + 1;
    writeln(caixa:0:0, ' caixas');
end.
