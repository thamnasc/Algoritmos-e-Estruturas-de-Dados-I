program ex_052;
var m, N, i, soma: longint;

begin
        read(m);
        soma:= 0;
        i:= 0;
        if(m <> 0) then
        begin
                while(i < m) do
                begin
                        read(N);
                        soma:= soma + N;
                        i:= i + 1;
                end;
                writeln(soma div m);
        end;
end.

