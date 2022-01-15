(*Enunciado: 

Considere que o número de uma placa de veículo é composto por quatro algarismos. Faça um programa Pascal que leia um número inteiro do teclado e imprima o algarismo correspondente à casa das centenas. Use os operadores DIV e MOD. 

Exemplos: 
Entrada 1: 
2500 
Saída Esperada 1: 
5 

Entrada 2: 
2031 
Saída Esperada 2: 
0 

Entrada 3: 
6975 
Saída Esperada 3: 
9 *)

program Ex_077;
var placa, cent: longint;

begin
        read(placa);
        cent:= (placa mod 1000) div 100;
        writeln(cent);
end. 
