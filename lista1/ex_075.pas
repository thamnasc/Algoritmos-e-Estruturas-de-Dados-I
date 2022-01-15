(*Enunciado: 

Considere que o número de uma placa de veículo é composto por quatro algarismos. Faça um programa Pascal que leia um número inteiro do 
teclado e imprima o algarismo correspondente à casa das unidades. 
Use o operador MOD. 

Exemplos: 
Entrada 1: 
2569 
Saída Esperada 1: 
9 

Entrada 2: 
1000 
Saída Esperada 2: 
0 *)

program Ex_075;
var placa, uni, de, cent: longint;

begin
        read(placa);
        cent:= placa mod 1000;
        if(cent <> 0) then
        begin
                de:= cent mod 100;
                if (de <> 0) then
                begin
                        uni:= cent mod 10;
                        writeln(uni);
                end
        end
        else
                writeln(0);
end.
