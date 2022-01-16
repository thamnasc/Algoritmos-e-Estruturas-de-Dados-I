(* Enunciado: 

Faça um programa Pascal que leia dois números n e outro m (0 <= n <= 9) e conte quantos dígitos n existem em m. 
Se não existir nenhum dígito correspondente, a mensagem "NAO" deve ser exibida. Caso contrário imprima o resultado do seu cálculo. 

Exemplos: 
Entrada 1: 
9 
95949 
Saída Esperada 1: 
3 

Entrada 2: 
1 
2353 
Saída Esperada 2: 
NAO *)

program ex_055;
var m: longint;
n, cont: integer;

begin
    read(n, m);
    cont:= 0;
    while((n < 0) OR (n > 9)) do
        read(n);
    while(m <> 0) do
    begin
        if(m mod 10 = n) then
            cont:= cont + 1;
        m:= m div 10;
    end;
    if(cont <> 0) then
        writeln(cont)
    else
        writeln('NAO');
end.
