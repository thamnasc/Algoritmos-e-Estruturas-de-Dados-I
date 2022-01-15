program ex_39;
var num, par, N, i: longint;

begin
    read(N);
    i:= 1;
    num:= 2;
    par:= 4;
    if(N = 1) then
        writeln(2)
    else if(N <> 0) then
    begin
        while(i < N) do
        begin
            num:= num * par;
            par:= par + 2;
            i:= i + 1;
        end;
        writeln(num);
    end
    else
        writeln(0);
end.
