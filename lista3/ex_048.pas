program ex_048;
var A, B, prod: longint;

begin
        read(A, B);
        prod:= 1;
        if((A mod 2 <> 0) AND (B mod 2 <> 0)) then
        begin
                while(A <= B) do
                begin
                        prod:= prod * A;
                        A:= A + 2;
                end;
                writeln(prod);
        end
        else
                writeln('erro');
end.
