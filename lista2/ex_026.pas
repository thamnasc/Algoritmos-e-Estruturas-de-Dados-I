program Ex_026;
var area, acresc: longint;

begin
        read(area);
        if(area <= 6) then
                writeln(100)
        else
        begin
                acresc:= 80 + (area - 3) * 15;
                writeln(acresc);
        end;    
end. 
