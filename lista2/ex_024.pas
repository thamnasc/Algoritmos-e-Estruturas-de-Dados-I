(* Enunciado: 

Faça um programa Pascal que leia do teclado um valor inteiro representando o ano de nascimento de uma pessoa. 
Com esse dado, o programa deve fazer o seguinte: 

Calcular e imprimir sua idade, considerando que estamos no ano de 2020; 

Verificar e imprimir se a pessoa já tem idade para votar (16 anos ou mais); 

Verificar e imprimir se a pessoa já tem idade para conseguir a carteira de habilitação (18 ou mais). 

Exemplos: 
Entrada 1: 
2002 
Saida Esperada 1: 
18 
 
SIM 
SIM 

Entrada 2: 
2005 
Saida Esperada 2: 
15 
NAO 
NAO  *)

program Ex_024;
var ano, idade: longint;

begin
        read(ano);
        idade:= 2020 - ano;
        writeln(idade);
        if idade >= 16 then
                writeln('SIM')
        else
                writeln('NAO');
        if idade >= 18 then
                writeln('SIM')
        else
                writeln('NAO');
end.
