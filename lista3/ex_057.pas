(* Enunciado: 

Faça um programa Pascal que leia do teclado uma quantidade arbitrária de números inteiros positivos terminada em zero e identifique o 
maior múltiplo de 7 (sete) entre esses números. Depois da leitura dos dados, o maior múltiplo de 7 encontrado deve ser impresso. 
O número zero serve para indicar o final da entrada e não deverá ser processado. 

Exemplos: 
Entrada 1: 
4 8 3 63 99 41 28 99 65 0 

Saída Esperada 1: 
63 

Entrada 2: 
739 805 568 382 490 51 719 403 240 152 0 

Saída Esperada 2: 
805 *)

program ex_057;
var num, maior: longint;

begin
    read(num);
    maior:= 0;
    while(num <> 0) do
    begin
        if((num mod 7 = 0) AND (num > maior)) then
            maior:= num;
        read(num);
    end;
    if(maior <> 0) then
        writeln(maior);
end.
