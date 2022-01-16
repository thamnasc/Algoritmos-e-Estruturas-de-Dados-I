program questao1;
var progressao_geometrica, fatorial, termo, soma: real;
i, N, ordem_i_fatorial: integer;

begin
	read(N);

	progressao_geometrica:= 1;
	fatorial:= 1;
	i:= 1;
	ordem_i_fatorial:= 0;
	termo:= 1; //para N = 1
	soma:= 0;

	if(N <> 0) then // só entra se tiver ao menos um termo
	begin
		while(i <= N) do //executa a partir de um termo
		begin
			termo:= progressao_geometrica / fatorial;

			if(i mod 2 = 0) then
				soma:= soma - termo 
			else //i impar
				soma:= soma + termo;

			progressao_geometrica:= progressao_geometrica * 2;

		       	if(ordem_i_fatorial = 0) then //ordem crescente
			begin
				if(fatorial = 1) then
					fatorial:= 2
				else if(fatorial = 2) then
				begin
					fatorial:= 6;
					ordem_i_fatorial:= 1;
				end;
			end
			else //ordem decrescente
			begin
				if(fatorial = 6) then
					fatorial:= 2
				else if(fatorial = 2) then
				begin
					ordem_i_fatorial:= 0;
					fatorial:= 1;
				end;
			end;

			i:= i + 1;
		end;	
	end;
	writeln(soma:0:5);
end.
