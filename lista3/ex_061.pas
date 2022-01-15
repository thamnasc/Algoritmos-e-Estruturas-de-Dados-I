program ex_061;
var N, A, B: integer;

begin
    read(N);
    A:= 1;
    B:= N - 1;
    while((A <= N) AND (B >= 1)) do
    begin
        writeln(A, ' ', B);
        A:= A + 1;
        B:= B - 1;
    end;
end.
