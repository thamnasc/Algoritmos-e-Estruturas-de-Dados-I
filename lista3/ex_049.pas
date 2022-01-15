(* Enunciado: 

Uma agência governamental deseja conhecer a distribuição da população do país por faixa salarial. Para isto, coletou dados do último censo 
realizado e criou um arquivo contendo, em cada linha, o salário de um cidadão particular. Os salários variam de zero a 19.000,00 unidades da moeda local. 

Considere o salário mínimo igual a 450,00 unidades da moeda local. 

As faixas salariais de interesse são as seguintes: 

de 0 a 3 salários mínimos 

de 4 a 9 salários mínimos 

de 10 a 20 salários mínimos 

acima de 20 salários mínimos. 

Faça um programa Pascal que leia uma sequência de números reais, que será terminado em zero. O zero não deve ser processado e serve para terminar o 
programa. O programa deve imprimir na tela os percentuais da população para cada faixa salarial de interesse. 

Exemplos: 
Entrada 1: 
240.99 
2720.77 
4560.88 
19843.33 
834.15 
315.87 
5645.80 
150.33 
2560.00 
2490.05 
0.00 

Saída Esperada 1: 
40.00 
30.00 
20.00 
10.00 *)

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
