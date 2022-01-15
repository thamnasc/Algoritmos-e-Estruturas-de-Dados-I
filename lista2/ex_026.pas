(* Enunciado: 

Faça um programa Pascal que leia do teclado um valor inteiro que é a área de um cômodo e imprima a potência de iluminação necessária para 
iluminá-lo de acordo com a seguinte relação: 

100 watts para cômodos com 6m2 ou menos;
80 watts para os primeiros 3m2 e mais 15 watts a cada 1 m2 de acréscimo para cômodos maiores que 6 m2;

Exemplos: 
Entrada 1: 
5 
Saida Esperada 1: 
100 

Entrada 2: 
9 
Saida Esperada 2: 
170 *)

program Ex_026;
var area, acresc: longint;

begin
        read(area);
        if(area <= 6) then
                writeln(100)
        else
        begin
                acresc:= 80 + (area - 3) * 15;
                writeln(acresc);
        end;    
end. 
