program Ex_075;
var placa, uni, de, cent: longint;

begin
        read(placa);
        cent:= placa mod 1000;
        if(cent <> 0) then
        begin
                de:= cent mod 100;
                if (de <> 0) then
                begin
                        uni:= cent mod 10;
                        writeln(uni);
                end
        end
        else
                writeln(0);
end.
