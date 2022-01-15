program ex_046;
var N, prod: real;
P, total: integer;

begin
        read(N, P);
        prod:= 0;
        total:= 0;
        while((N <> 0) AND (P <> 0)) do
        begin
                prod:= prod + N * P;
                total:= total + P;
                read(N, P);
        end;
        if(total <> 0) then
                writeln((prod/total):0:2);
end.
