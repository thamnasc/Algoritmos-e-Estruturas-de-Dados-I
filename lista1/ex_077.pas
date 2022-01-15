program Ex_077;
var placa, cent: longint;

begin
        read(placa);
        cent:= (placa mod 1000) div 100;
        writeln(cent);
end. 
