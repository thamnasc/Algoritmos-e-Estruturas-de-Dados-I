(* Enunciado: 

A prefeitura de Piraporinha abriu uma linha de crédito para os funcionários estatutários. 
O valor máximo da prestação não poderá ultrapassar 30% do salário bruto. 
Faça um programa Pascal que leia do teclado dois números inteiros que representam o salário bruto e o valor 
da prestação e informe se o empréstimo pode ou não ser concedido. 

Exemplos: 
Entrada 1: 
500 200 
Saída Esperada 1: 
NAO 

Entrada 2: 
1000 250 
Saída Esperada 2: 
SIM 

Entrada 2: 
1000 301 
Saída Esperada 2: 
NAO *)

program Ex_113;
var sal, prest: longint;

begin
        read(sal, prest);
        if(prest > (sal*0.3)) then
                writeln('NAO')
        else
                writeln('SIM');
end.
