program ex_043;
var N, i, impar, num: longint;

begin
    read(N);
    i:= 1;
    num:= 1;
    impar:= 3;
    if(N = 0) then
        writeln(0)
    else
    begin
        while(i < N) do
        begin
            num:= num + impar;
            impar:= impar + 2;
            i:= i + 1;
        end;
        writeln(num);
    end;
end.
