program ex_029;
var i: integer;
a, b, c, st, nd, rd: real;

begin
        read(i, a, b, c);
        if((a > b) AND (a > c)) then
        begin
                rd:= a;
                if(b > c) then
                begin
                        st:= c;
                        nd:= b;
                end
                else
                begin
                        st:= b;
                        nd:= c;
                end;
        end;
        if((b > a) AND (b > c)) then
        begin
                rd:= b;
                if(a > c) then
                begin
                        st:= c;
                        nd:= a;
                end
                else
                begin
                        st:= a;
                        nd:= c;
                end;
        end;
        if((c > a) AND (c > b)) then
        begin
                rd:= c;
                if(b > a) then
                begin
                        st:= a;
                        nd:= b;
                end
                else
                begin
                        st:= b;
                        nd:= a;
                end;
        end;
        if(i = 1) then
                writeln(st:0:0, ' ',  nd:0:0, ' ', rd:0:0);
        if(i = 2) then
                writeln(rd:0:0, ' ', nd:0:0, ' ', st:0:0);
        if(i = 3) then
        begin
                if(a = rd) then
                        writeln(b:0:0, ' ', a:0:0, ' ', c:0:0)
                else if (b = rd) then
                        writeln(a:0:0, ' ', b:0:0, ' ', c:0:0)
                else
                        writeln(a:0:0, ' ', c:0:0, ' ', b:0:0);
        end;

end.
