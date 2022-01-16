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
