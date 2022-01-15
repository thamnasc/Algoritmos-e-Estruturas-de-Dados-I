(* Enunciado: 

Faça um programa Pascal que leia do teclado dois valores inteiros que são as coordenadas (X,Y) de um ponto no sistema cartesiano. 
Imprima na tela o quadrante ao qual o ponto pertence: 1, 2, 3 ou 4, conforme as regras clássicas da matemática. 

Caso o ponto não pertenca a nenhum quandrante, imprima X se ele está sobre o eixo X, Y, se ele está sobre o eixo Y, ou então imprima O, 
caso ele esteja na origem. 

Exemplos: 
Exemplo de entrada 1: 
4 4 
Saida Esperada 1: 
1 

Exemplo de entrada 2: 
4 0 
Saida Esperada 2: 
X  *)

program Ex_022;
var X, Y: longint;

begin
        read(X, Y);
        if(Y = 0) then
        begin
                if(X <> 0) then
                        writeln('X')
                else
                        writeln('O');
        end
        else if(X = 0) then
                writeln('Y')    
        else if(X > 0) then
        begin
                if(Y > 0) then
                        writeln(1)
                else 
                        writeln(4)
        end
        else//negativo
        begin
                if(Y > 0) then
                        writeln(2)
                else
                        writeln(3);
        end;
end.
