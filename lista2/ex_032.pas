program Ex_032;
var sal, cod, novo: real;

begin
    read(sal, cod);
    if(cod = 101) then
        novo:= sal + sal * 0.1
    else if(cod = 102) then
        novo:= sal + sal * 0.2
    else if(cod = 103) then
        novo:= sal + sal * 0.3
    else 
        novo:= sal + sal * 0.4;
    writeln(sal:0:2);
    writeln(novo:0:2);
    writeln((novo - sal):0:2);
end.
