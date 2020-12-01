program Exercicio6;
type mat2x2 = array[1..2, 1..2] of integer;
var
    matrizA, matrizB : mat2x2;
    i, j, m : integer;
begin
    m := 0;
    for i := 1 to 2 do
    begin
        for j := 1 to 2 do
        begin
            write('Matriz[',i,'][',j,'] = ');
            read(matrizA[i][j]);

            if matrizA[i][j] > m then
            begin
                m := matrizA[i][j];
            end;
        end;
    end;
    for i := 1 to 2 do
    begin        
        for j := 1 to 2 do
        begin
            write(^i);
            matrizB[i][j] := matrizA[i][j] * m;
            write(matrizB[i][j]);
        end;    
        writeln();    
    end;


end.