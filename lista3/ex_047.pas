program ex_047;
var i, square, sum: longint;

begin
        i:= 1;
        square:= 0;
        sum:= 0;
        while(i <= 50) do
        begin   
                square:= i * i;
                sum:= sum + square;
                i:= i + 1;
        end;    
        writeln(sum);
end. 
