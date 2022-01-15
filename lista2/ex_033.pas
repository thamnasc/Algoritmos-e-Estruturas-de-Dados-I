(* Enunciado: 

Faça um programa Pascal que leia dois números inteiros representando respectivamente o número de lados de um polígono regular e a medida do lado. 
Seu programa deve fazer o seguinte: 

se o número de lados for 3, imprima TRIANGULO e o valor do seu perímetro; 

se o número de lados for 4, imprima QUADRADO e o valor da sua área; 

se o número de lados for 5, imprima PENTAGONO; 

se o número de lados for menor que 3 imprima a mensagem "ERRO"; 

se o número de lados for maior que 5 imprima a mensagem "ERRO". 

Exemplos: 
Exemplo 1: 
3 10 

Saida Esperada 1: 
TRIANGULO 30 

Exemplo 2: 
6 20 

Saida Esperada 2: 
ERRO *)

program Ex_033;
var num, lado: longint;

begin
    read(num, lado);
    if(num = 3) then
        writeln('TRIANGULO ', lado * 3)
    else if(num = 4) then
        writeln('QUADRADO ', lado * lado)
    else if(num = 5) then
        writeln('PENTAGONO')
    else
        writeln('ERRO');
end.
