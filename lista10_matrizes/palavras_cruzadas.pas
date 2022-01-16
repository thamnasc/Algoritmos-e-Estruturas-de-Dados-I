(* Enunciado: 

Um jogo de palavras cruzadas pode ser representado por uma matriz A(n × m) onde cada posição da matriz 
corresponde a um quadrado do jogo, sendo que 0 indica um quadrado em branco e -1 indica um quadrado preto. 
Colocar as numerações de início de palavras horizontais e/ou verticais nos quadrados correspondentes (substituindo os zeros), 
considerando que uma palavra deve ter pelo menos duas letras. 

PS: A imagem abaixo representa visualmente a matriz de entrada do exemplo. As palavras sempre são adicionadas da esquerda para a 
direita (Horizontal) ou de cima para baixo (Vertical). 

1  p  2  p  p  3  p  4
5  6  0  0  p  7  0  0
8  0  p  p  9  0  p  0
0 10  0 11  0  p 12  0
13 0  p 14  0  0  p  p

Exemplo de entrada: 
5 8 
0 -1 0 -1 -1 0 -1 0 
0 0 0 0 -1 0 0 0 
0 0 -1 -1 0 0 -1 0 
-1 0 0 0 0 -1 0 0 
0 0 -1 0 0 0 -1 -1 

Saída esperada para a entrada anterior: 
1 -1 2 -1 -1 3 -1 4 
5 6 0 0 -1 7 0 0 
8 0 -1 -1 9 0 -1 0 
-1 10 0 11 0 -1 12 0 
13 0 -1 14 0 0 -1 -1 
*)

program palavras_cruzadas;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
var palavra_cruzada: matriz;
m, n: integer;

procedure ler_matriz(var m: matriz; var linha: integer; var coluna: integer);
var i, j: integer;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
			read(m[i, j]);
	end;
end;

procedure preencher_matriz(var m: matriz; linha, coluna: integer);
var i, j, cont: integer;
begin
	cont:= 1;
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
		begin
			if(m[i, j] = 0) then
			begin
                		if(i = 1) then
                		begin
                   	        	if(((m[i, (j - 1)] = -1) AND (j > 1)) OR (j = 1) OR (j = coluna)) then //caso do 2 e do 3
                    			begin
                            			if((m[i, (j + 1)] = 0) OR (m[(i + 1), j] = 0)) then
                            			begin
                                			m[i, j]:= cont;
                                			cont:= cont + 1;
                            			end;
					end;
                    		end
                    		else if(j = 1) then //caso do 8
                    		begin
                                	if((m[i, (j + 1)] = 0) OR ((i < linha) AND (m[(i + 1), j] = 0))) then
                                    	begin
                                        	m[i, j]:= cont;
                                            	cont:= cont + 1;
                                    	end;  
                    		end
                    		else if(i = linha) then
                    		begin
                            		if(((j > 1) AND (j < coluna)) AND ((m[i, (j - 1)] = -1) AND (m[i, (j + 1)] = 0))) then
                            		begin
                                    		m[i, j]:= cont;
                                    		cont:= cont + 1;
                            		end;
                    		end
                    		else if(j = coluna) then 
                    		begin
		    			if((m[(i - 1), j] = -1) AND ((i < linha) AND (m[(i + 1), j] = 0))) then
					begin
						m[i, j]:= cont;
						cont:= cont + 1;
					end;
                    		end
		    		else if((m[(i - 1), j] = -1) OR (m[i, (j - 1)] = -1)) then
		    		begin
                        		if((m[(i - 1), j] = -1) AND (m[(i + 1), j] = 0)) then
                        		begin
						m[i, j]:= cont;
				    		cont:= cont + 1;
                        		end
                        		else
                        		if((m[i, (j - 1)] = -1) AND (m[i, (j + 1)] = 0)) then
                        		begin
                               			m[i, j]:= cont;
				    		cont:= cont + 1;     
                        		end;

		    		end;
			end;
		end;
	end;
end;

procedure imprimir_matriz(var m: matriz; linha, coluna: integer);
var i, j: integer;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
			write(m[i, j], ' ');
		writeln;
	end;
	writeln;
end;

begin
	read(m, n);
	ler_matriz(palavra_cruzada, m, n);
	preencher_matriz(palavra_cruzada, m, n);
	imprimir_matriz(palavra_cruzada, m, n);
end.
