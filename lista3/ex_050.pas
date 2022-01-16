(* Enunciado: 

Faça um programa Pascal que, dados dois números inteiros positivos, imprima quantas vezes o primeiro divide exatamente o segundo. 
Se o primeiro não divide o segundo o número de vezes é zero. Por exemplo, 72 pode ser dividido exatamente por 3 duas vezes. Use operadores inteiros apenas. 

Exemplos: 
Entrada 1: 
72 3 

Saída Esperada 1: 
2 *)

program Ex_050;
var A, B, cont: integer;

begin
    read(A, B);
    cont:= 0;
    while (A mod B = 0) do
    begin
        A:= A div B;
        cont:= cont + 1;
    end;
    writeln(cont);
end.
