program Exercicio4;
type mat3x3 = array[1..3, 1..3] of integer;
type mat3x2 = array[1..3, 1..2] of integer;

var
    A : mat3x3;
    B, C : mat3x2;
    i, j, k : integer;    
begin
    { Inicializando a matriz }
    for i := 1 to 3 do
    begin
        for j := 1 to 2 do
        begin
            C[i][j] := 0;
        end;
    end;

    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write('A[',i,'][',j,'] = ');
            read(A[i][j]);
        end;
    end;
    for i := 1 to 3 do
    begin
        for j := 1 to 2 do
        begin
            write('B[',i,'][',j,'] = ');
            read(B[i][j]);
        end;
    end;

    for k := 1 to 2 do
    begin
        for i := 1 to 3 do
        begin   
            for j := 1 to 3 do
            begin
                C[i][k] := C[i][k] + A[i][j] * B[j][k];                
            end;
        end;
    end;

    for i := 1 to 3 do
    begin
        for j := 1 to 2 do
        begin
            write('  ', C[i][j]);
        end;
        writeln();
    end;

end.

