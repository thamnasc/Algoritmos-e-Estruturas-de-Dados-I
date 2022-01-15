program ex_054;
var lado, aux, nao_regular, i: integer;

begin
    read(lado);
    i:= 0;
    aux:= lado;
    nao_regular:= 0;
    while(lado <> 0) do
    begin
        if(lado <> aux) then
        begin
            nao_regular:= 1;
        end;
        i:= i + 1;
        aux:= lado;
        read(lado);
    end;
    if((i > 3) AND (nao_regular = 0)) then
        writeln('SIM')
    else
        writeln('NAO');
end.
