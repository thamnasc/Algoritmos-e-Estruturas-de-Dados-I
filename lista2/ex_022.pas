program Ex_022;
var X, Y: longint;

begin
        read(X, Y);
        if(Y = 0) then
        begin
                if(X <> 0) then
                        writeln('X')
                else
                        writeln('O');
        end
        else if(X = 0) then
                writeln('Y')    
        else if(X > 0) then
        begin
                if(Y > 0) then
                        writeln(1)
                else 
                        writeln(4)
        end
        else//negativo
        begin
                if(Y > 0) then
                        writeln(2)
                else
                        writeln(3);
        end;
end.
