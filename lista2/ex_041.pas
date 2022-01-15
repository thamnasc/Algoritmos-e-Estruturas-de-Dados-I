program ex_041;
var penult, ult, aux, i, N, soma: longint;

begin
    read(N);
    penult:= 0;
    ult:= 1;
    aux:= 0;
    i:= 2;
    soma:= 0;
    if (N > 0) then
    begin
        while(i <= N) do
        begin
                soma:= soma + ult;
                aux:= ult;
                ult:= penult + aux;
                penult:= aux;
                i:= i + 1;
        end;
    end;
    writeln(soma);
end.
