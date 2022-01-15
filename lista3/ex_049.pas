program ex_049;
var sal, div1, div2, div3, div4, sum: real;
const min = 450;

begin
        div1:= 0;
        div2:= 0;
        div3:= 0;
        div4:= 0;
        read(sal); //salario minimo = 450
        while(sal <> 0) do
        begin
                if((sal <= (3 * min))) then //0 a 3 sal
                        div1:= div1 + 1
                else if((sal <= (9 * min))) then //4 a 9 sal
                        div2:= div2 + 1
                else if((sal <= (20 * min))) then //10 a 20 sal
                        div3:= div3 + 1
                else //acima de 20 sal
                        div4:= div4 + 1;
                read(sal);
        end;
        sum:= div1 + div2 + div3 + div4;
        if(sum <> 0) then
        begin
                writeln((div1/(sum) * 100):0:2);
                writeln((div2/(sum) * 100):0:2);
                writeln((div3/(sum) * 100):0:2);
                writeln((div4/(sum) * 100):0:2);
        end;
end.
