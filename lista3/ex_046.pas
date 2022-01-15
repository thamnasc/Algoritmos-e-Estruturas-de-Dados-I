(* Enunciado: 

Faça um programa Pascal que leia do teclado um conjunto de números onde cada linha contém dois valores numéricos sendo o primeiro do tipo real e 
o segundo do tipo inteiro. O segundo valor é o peso atribuído ao primeiro valor. O programa deve calcular e imprimir a média ponderada dos diversos 
valores lidos. A última linha de dados contém os números zero. Esta linha não deve ser considerada no cálculo da média e serve apenas para marcar 
o final da entrada de dados. 

Isto é, calcular o seguinte, supondo que m linhas foram digitadas: 

(N1 x P1 + N2 x P2 + ... + Nm x Pm) / (P1 + P2 + ... + Pm)

Imprima o resultado com duas casas decimais. 

Exemplos: 
Entrada 1: 
60 1 
30 2 
40 3 
0 0 
Saída esperada 1: 
40.00 *)

program ex_046;
var N, prod: real;
P, total: integer;

begin
        read(N, P);
        prod:= 0;
        total:= 0;
        while((N <> 0) AND (P <> 0)) do
        begin
                prod:= prod + N * P;
                total:= total + P;
                read(N, P);
        end;
        if(total <> 0) then
                writeln((prod/total):0:2);
end.
