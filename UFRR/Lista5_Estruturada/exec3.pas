program Exercicio3;
type mat10x10 = array[1..10, 1..10] of integer;
type vec10 = array[1..10] of integer;
var 
    matriz : mat10x10;
    diagonal: vec10;
    i, j, k : integer;

begin
    k := 1;
    for i := 1 to 10 do
    begin
        for j := 1 to 10 do
        begin
            
            write('Matriz[',i,'][',j,'] = ');
            read(matriz[i][j]);

            if i = j then
            begin
                diagonal[k] := matriz[i][j];
                k := k + 1;
            end;

        end;
    end;
    { Calculando Matriz }
    for i := 1 to 10 do
    begin
        write('|  ');
        for j := 1 to 10 do
        begin      
            write(^i);
            write( (matriz[i][j] / diagonal[j]):10:3 );
        end;
        writeln('  |');
    end;

end.