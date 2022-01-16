program equacoes_lineares;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
matriz_aux = array [MIN..MAX, MIN..MAX] of real;
vetor_aux = array [MIN..MAX] of real;
vetor = array [MIN..MAX] of longint;
var equacoes: matriz;
lado_direito, resultado: vetor;
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

procedure ler_vetor(var v: vetor; var tam: integer);
var i: integer;
begin
	for i:= 1 to tam do
		read(v[i]);
end;

procedure criar_matriz(var aux: matriz_aux; var equacoes: matriz; var linha: integer; var coluna: integer; var lado_direito: vetor);
var i, j: integer;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
		begin
			if(i <> linha) then
				aux[i, j]:= equacoes[i, j]
			else
				aux[i, j]:= lado_direito[i];
		end;
	end;
end;

procedure escalonar_matriz(var aux: matriz_aux; var equacoes: matriz; var linha: integer; var coluna: integer; var lado_direito: vetor);
var i, j, i_aux, j_aux: integer;
coef, coef1, coefx: real;
begin
	criar_matriz(aux, equacoes, linha, coluna, lado_direito);
    	i:= 1;
    	i_aux:= 1;
    	j:= 1;
    	j_aux:= 1;
    	coef:= 0;
    	while(i_aux <= linha) do //para zerar os coeficientes abaixo da diagonal e deixar em 1 os da diagonal
    	begin
		while(i <= linha) do
		begin
			if((aux[i_aux, j] > 0) AND (aux[(i_aux + 1), j] > 0)) then 
	    		begin
		    		coef1:= -aux[i_aux, j]; //para deixar negativo a equacao que vai ter o coeficiente zerado
		    		coefx:= aux[(i_aux + 1), j];
	    		end
        		else if((aux[i_aux, j] < 0) AND (aux[(i_aux + 1), j] < 0)) then
        		begin
            			coef1:= aux[i_aux, j];
		    		coefx:= -aux[(i_aux + 1), j]; //para deixar positivo a equacao que será mantida
        		end
	    		else if((aux[i_aux, j] < 0) AND (aux[(i_aux + 1), j] > 0)) then
	    		begin
		    		coef1:= -aux[i_aux, j]; //para deixar negativa a equacao que terá o coeficiente zerado
		    		coefx:= -aux[(i_aux + 1), j]; // para deixar positiva a equacao que será mantida
	    		end
        		else // (aux[i_aux, j] > 0) AND (aux[(i_aux + 1), j] < 0)
        		begin
            			coef1:= aux[i_aux, j]; //para manter negativa a equacao que terá o coeficiente zerado
		    		coefx:= aux[(i_aux + 1), j]; // para deixar positiva a equacao que será mantida
        		end;

        		coef:= aux[i_aux, j] * coefx;
			aux[i, j]:= aux[i, j] * coefx;
			aux[(i + 1), j]:= aux[(i + 1), j] * coef1;

	    		while(j_aux <= coluna) do
	    		begin
		    		//cria equacao com x zerado, depois y e depois z... depois n
		    		aux[(i + 1), j_aux]:= aux[(i + 1), j_aux] + aux[i, j_aux];
		    		if(aux[i, j_aux] <> 1) then
					aux[i, j_aux]:= aux[i, j_aux] / coef; //deixa a diagonal principal com coeficientes = 1
		    		j_aux:= j_aux + 1;
	    		end;
			j_aux:= 1;
			i:= i + 1;
			if(i > linha) then
			begin
				j:= j + 1;
				i_aux:= i_aux + 1;
				i:= i_aux;
			end;
		end;
    	end;
end;

function resolver_sistema(var equacoes: matriz; m, n: integer; var lado_direito: vetor; var resultado: vetor): boolean;
var i, j, j_resultado, n_novo: integer;
aux: matriz_aux;
resultado_aux: vetor_aux;
round_result: vetor;
confere: boolean;
begin
	resolver_sistema:= false;
	n_novo:= n + 1;
	escalonar_matriz(aux, equacoes, m, n_novo, lado_direito);
    	i:= m;
    	j:= n; //tamanho do vetor
    	j_resultado:= n + 1;
    	confere:= true;

    	while(i >= 1) do
    	begin	
		resultado_aux[i]:= aux[i, j_resultado];
	    	while(j > i) do //multiplicar coeficiente pela variavel ate chegar no coeficiente igual a 1
	    	begin
		    resultado_aux[i]:= resultado_aux[i] - (aux[i, j] * resultado_aux[i + 1]);
		    j:= j - 1;
	    	end;
	    	round_result[i]:= round(resultado_aux[i]); 
	    	j:= n;
	    	i:= i - 1;
    	end;
    //comparando resultado com o que foi obtido
    	for i:= 1 to m do
    	begin
        	if(round_result[i] <> resultado[i]) then
            	confere:= false; 
    	end;
    	if(confere) then
        resolver_sistema:= true;
end;

procedure leitura(var m: integer; var n: integer; var equacoes: matriz; var resultado: vetor; var lado_direito: vetor);
begin
	read(m, n);
	ler_vetor(resultado, n);
	ler_matriz(equacoes, m, n);
	ler_vetor(lado_direito, n);

end;

begin
	leitura(m, n, equacoes, resultado, lado_direito);
	if(resolver_sistema(equacoes, m, n, lado_direito, resultado)) then
		writeln('sim')
	else
		writeln('nao');
end.
