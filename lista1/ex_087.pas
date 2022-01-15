(* Enunciado: 

Sabe-se que para iluminar de maneira correta os cômodos de uma casa, 
para cada Metro quadrado (m2) deve-se usar 18W de potência. 

Faça um programa Pascal que: 

receba dois inteiros representando as duas dimensões de um comodo em metros; 

calcule e imprima a sua área em m2; 

imprima a potência de iluminação que deverá ser usada em watts. 

Exemplos: 
Entrada 1: 
10 10 
Saída Esperada 1: 
100 1800 

Entrada 2: 
5 7 
Saída Esperada 2: 
35 630  *)

program Exercicio_087;
var alt, lar, pot: integer;

begin
        read(alt, lar);
        pot:= (alt*lar)*18;
        writeln(alt*lar, ' ', pot);
end.
