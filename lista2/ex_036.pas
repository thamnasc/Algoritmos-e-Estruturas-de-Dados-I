program Ex_036;
var tipo, area, caixa: real;

begin
    read(tipo, area);
    if(tipo = 1) then //50 cm x 40 cm = 0.2 m2 * 10 azulejos = 2 m2 
        caixa:= area/2
    else if(tipo = 2) then //50 cm x 60 cm = 0.3 m2 * 10 azulejos = 3 m2
        caixa:= area/3
    else // 50 cm x 80 cm = 0.4 m2 * 10 azulejos = 4 m2
        caixa:= area/4;
    if(caixa > (trunc(caixa))) then
        caixa:= trunc(caixa) + 1;
    writeln(caixa:0:0, ' caixas');
end.
