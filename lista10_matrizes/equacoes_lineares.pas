(* Enunciado: 

Um vetor real X com n elementos é apresentado como resultado de um sistema de equações lineares Ax = B 
cujos coeficientes são representados em uma matriz real A(m×n) e os lados direitos das equações (os 
resultados de cada equação) em um vetor real B de m elementos. Criar um programa em Free Pascal que 
verifique se o vetor X é realmente solução do sistema dado, imprimindo "sim" caso o vetor informado 
seja solução do sistema de equações, ou imprimindo "não" caso contrário. 

Dica: Comparações entre números reais pode ser um problema dependendo da arquitetura da máquina a ser utilizada. 
Para solucionar este problema um método a ser utilizado é a comparação por margem de erro. 

PS: O sistema apresentado no exemplo de entrada é representado pela seguinte equação. 

2x + y - 3z = -1
-x + 3y + 2z = 12
3x + 1y - 3z = 0

Exemplo de entrada: 
3 3 #tamanho da matriz 
1 3 2 #resultado informado 
2 1 -3 #Matriz 
-1 3 2 
3 1 -3 
-1 12 0 #lado direito 

Saída esperada: 
sim *)

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

procedure zerar_vetor(var v: vetor; tam: integer);
var i: integer;
begin
	for i:= 1 to tam do
		v[i]:= 0;
end;

function resolver_sistema(var m: matriz; linha, coluna: integer; var lado_direito: vetor; var resultado: vetor): boolean;
var i, j: integer;
resultado_aux: vetor;
confere: boolean;
begin
	confere:= true;
	resolver_sistema:= false;
	zerar_vetor(resultado_aux, linha);
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
		begin
			resultado_aux[i]:= m[i, j] * resultado[j] + resultado_aux[i];
		end;
		if(resultado_aux[i] <> lado_direito[i]) then
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
