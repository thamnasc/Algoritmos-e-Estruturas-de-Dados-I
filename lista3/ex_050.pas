program Ex_050;
var A, B, cont: integer;

begin
    read(A, B);
    cont:= 0;
    while (A mod B = 0) do
    begin
        A:= A div B;
        cont:= cont + 1;
    end;
    writeln(cont);
end.
