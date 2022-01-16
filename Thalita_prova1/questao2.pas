program questao2;
var Xmin1, Ymin1, Xmax1, Ymax1, n: integer;

function intersecao(quant: integer; var Xmin1: integer; var Ymin1: integer; var Xmax1: integer; var Ymax1: integer): boolean;
var cont, Xmin2, Ymin2, Xmax2, Ymax2: integer;
confere: boolean;
begin
	intersecao:= false;
	confere:= true;
	cont:= 1;

	while(cont < quant) do
	begin
		read(Xmin2, Ymin2, Xmax2, Ymax2);

		confere:= true;

		if(((Xmax2 > Xmax1) AND (Xmin2 < Xmax1)) AND ((Ymax2 > Ymin1) AND (Ymax2 < Ymax1))) then //Retangulo 2 esta abaixo e a esquerda
		begin
			Xmin1:= Xmin2;
			Ymax1:= Ymax2;
		end
		else if(((Xmax2 < Xmax1) AND (Xmin1 > Xmin2)) AND ((Ymax2 > Ymin1) AND (Ymin1 > Ymin2))) then //Retangulo 2 esta abaixo e a direita
		begin
			Ymax1:= Ymax2;
			Xmax1:= Xmax2;
		end
		else if(((Ymax2 > Ymax1) AND (Ymin2 > Ymin1)) AND ((Xmin1 > Xmin2) AND (Xmax1 > Xmax2))) then //Retangulo 2 esta acima e a esquerda
		begin
			Ymin1:= Ymin2;
			Xmax1:= Xmax2;
		end
		else if(((Ymax2 > Ymax1) AND (Ymin2 > Ymin1)) AND ((Xmin2 < Xmax1) AND (Xmax2 > Xmax1))) then //Retangulo 2 esta acima e a direita
		begin
			Xmin1:= Xmin2;
			Ymin1:= Ymin2;
		end
		else
			confere:= false;

		if((Ymax2 < Ymax1) AND (NOT confere)) then //se o menor estiver dentro do maior, transfere o menor para teste
		begin
			Xmin1:= Xmin2;
			Ymin1:= Ymin2;
			Xmax1:= Xmax2;
			Ymax1:= Ymax2;
		end;
		cont:= cont + 1;
	end;
	if(confere) then
		intersecao:= true;
end;

begin
	read(n);
	while(n <> 0) do
	begin
		read(Xmin1, Ymin1, Xmax1, Ymax1);
		if(intersecao(n, Xmin1, Ymin1, Xmax1, Ymax1)) then
			writeln('intersecao: ', Xmin1, ' ', Ymin1, ' ', Xmax1, ' ', Ymax1, ' ')
		else
			writeln('nenhum');
		read(n);
	end;
end.
