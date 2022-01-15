(* Enunciado: 

Sabendo-se que a água se solidifica a zero grau Celsius, ou a 32 Fahrenheit, e que entra em ebulição a 100 graus Celsius ou 212 Fahrenheit,
faça um programa Pascal que obtenha do teclado um inteiro que é o valor de temperatura em Fahrenheit e imprima na tela o valor 
correspondente em Celsius e uma mensagem indicando se a água nesta temperatura está no estado liquido, sólido ou gasoso. A fórmula de conversão entre graus 
Celsius e Farenheit é: 

5F - 9C - 160 = 0

Exemplos: 
Entrada 1: 
45 

Saída Esperada 1: 
7.22 
liquido 

Entrada 2: 
240 

Saída Espearada 2: 
115.55 
gasoso *)

program Ex_028;
var F, C: real;

begin
        read(F);
        C:= (5*F - 160) / 9;
        writeln(C:0:2);
        if C <= 0 then
                writeln('solido')
        else if C < 100 then
                writeln('liquido')
        else 
                writeln('gasoso');
end.
