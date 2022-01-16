program ex_003;
var num, valor, quad, eh_serie, indice: longint;
um_par: boolean;

begin
	read(num);
	eh_serie:= 1;
	indice:= 1;
	while(num <> 0) do
	begin
		if((indice mod 2) = 0) then
		begin
			um_par:= true;
			quad:= num;
		end
		else
			valor:= num;
		if(um_par = true) then
		begin
			um_par:= false;
			if(quad <> (valor * valor)) then
				eh_serie:= 0;
		end;
		indice:= indice + 1;
		read(num);
	end;
	writeln(eh_serie);
end.
