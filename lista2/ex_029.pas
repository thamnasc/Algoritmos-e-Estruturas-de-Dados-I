(* Enunciado: 

Faça um programa Pascal que leia do teclado um conjunto de 4 valores i, a, b, c, sendo que i é um valor inteiro e positivo e a, b, c, 
são quaisquer valores reais. Imprima na tela os valores de a, b, c da seguinte forma: 

os três valores a, b, c em ordem crescente, se i = 1 

os três valores a, b, c em ordem decrescente, se i = 2, 

os três valores a, b, c de forma que o maior dentre a, b, c fique entre os outros dois valores, com a ordem deles mantida, se i = 3. 

Exemplos: 

Exemplo 1: 
1 34 12 21 

Saida Esperada 1: 
12 21 34 

Exemplo 2: 
3 68 5 45 

Saida Esperada 2: 
5 68 45 *)

program ex_029;
var i: integer;
a, b, c, st, nd, rd: real;

begin
        read(i, a, b, c);
        if((a > b) AND (a > c)) then
        begin
                rd:= a;
                if(b > c) then
                begin
                        st:= c;
                        nd:= b;
                end
                else
                begin
                        st:= b;
                        nd:= c;
                end;
        end;
        if((b > a) AND (b > c)) then
        begin
                rd:= b;
                if(a > c) then
                begin
                        st:= c;
                        nd:= a;
                end
                else
                begin
                        st:= a;
                        nd:= c;
                end;
        end;
        if((c > a) AND (c > b)) then
        begin
                rd:= c;
                if(b > a) then
                begin
                        st:= a;
                        nd:= b;
                end
                else
                begin
                        st:= b;
                        nd:= a;
                end;
        end;
        if(i = 1) then
                writeln(st:0:0, ' ',  nd:0:0, ' ', rd:0:0);
        if(i = 2) then
                writeln(rd:0:0, ' ', nd:0:0, ' ', st:0:0);
        if(i = 3) then
        begin
                if(a = rd) then
                        writeln(b:0:0, ' ', a:0:0, ' ', c:0:0)
                else if (b = rd) then
                        writeln(a:0:0, ' ', b:0:0, ' ', c:0:0)
                else
                        writeln(a:0:0, ' ', c:0:0, ' ', b:0:0);
        end;

end.
