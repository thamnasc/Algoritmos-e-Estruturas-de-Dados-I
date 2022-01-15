(* Enunciado: 

Um vendedor necessita de um programa que calcule o preço total devido por um cliente que comprou um produto em sua loja. 
Faça um programa Pascal que receba dois números inteiros que são, respectivamente, o código do produto e a quantidade comprada. 
Imprima na tela o preço total, usando a tabela abaixo. 
Caso o código não exista o programa deve imprimir ERRO. 

Código do Produto               Preço unitário
1001                            5,32 

1324                            6,45

6548                            2,37

987                             5,32 

7623                            6,45 

Exemplos: 
Exemplo 1: 
1324 6 
Saida Esperada 1: 
38.70 

Exemplo 2: 
987 9 
Saida Esperada 2: 
47.88  *)

program Ex_030;
var     cod, quant: integer;
total: real;

begin
        read(cod, quant);
        total:= 0;
        if((cod = 1001) OR (cod = 987)) then
                total:= 5.32 * quant
        else if((cod = 1324) OR (cod = 7623)) then
                total:= 6.45 * quant
        else if(cod = 6548) then
                total:= 2.37 * quant
        else
                writeln('ERRO');
        if(total <> 0) then
                writeln(total:0:2);
end.
