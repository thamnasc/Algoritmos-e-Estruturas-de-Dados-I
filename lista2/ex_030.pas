program Ex_030;
var     cod, quant: integer;
total: real;

begin
        read(cod, quant);
        total:= 0;
        if((cod = 1001) OR (cod = 987)) then
                total:= 5.32 * quant
        else if((cod = 1324) OR (cod = 7623)) then
                total:= 6.45 * quant
        else if(cod = 6548) then
                total:= 2.37 * quant
        else
                writeln('ERRO');
        if(total <> 0) then
                writeln(total:0:2);
end.
