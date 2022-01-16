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
