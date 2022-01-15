program Ex_025;
var dia, mes, ano, anos: integer;

begin
        read(dia, mes, ano);
        anos:= 2021 - ano;
        if((ano <> 2021) AND ((4 < mes) OR ((mes = 4) AND (29 < dia)))) then
                anos:= anos - 1;
        writeln(anos);
end.
