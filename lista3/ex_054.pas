(* Enunciado: 

Faça um programa Pascal que leia uma sequência de números reais terminada em 0 que representam a medida dos lados de um polígono e 
imprima "SIM" se ele é um polígono regular (todos os seus lados iguais) e "NAO" caso contrário. 
Note que um polígono precisa ter ao menos 3 lados para ser um polígono O número zero serve para indicar o final da entrada de dados e não deve ser processado. 

Exemplos: 
Entrada 1: 
1 2 3 0 
Saida Esperada 1: 
NAO 

Entrada 2: 
4 4 4 4 0 
Saida Esperada 2: 
SIM 

Entrada 3: 
4 4 0 
Saida Esperada 3: 
NAO *)

program ex_054;
var lado, aux, nao_regular, i: integer;

begin
    read(lado);
    i:= 0;
    aux:= lado;
    nao_regular:= 0;
    while(lado <> 0) do
    begin
        if(lado <> aux) then
        begin
            nao_regular:= 1;
        end;
        i:= i + 1;
        aux:= lado;
        read(lado);
    end;
    if((i > 3) AND (nao_regular = 0)) then
        writeln('SIM')
    else
        writeln('NAO');
end.
