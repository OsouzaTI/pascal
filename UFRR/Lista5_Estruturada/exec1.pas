program Exercicio1;
type mat2x4 = array[1..2, 1..4] of integer;
var 
    A, B, C : mat2x4;
    i, j : integer;
begin    
    { Capturando a soma }
    for i := 1 to 2 do
    begin
        
        for j := 1 to 4 do
        begin
            write('Matriz A(',i,',',j,'): ');
            read(A[i][j]);            
            write('Matriz B(',i,',',j,'): ');
            read(B[i][j]);    
            C[i][j] :=  A[i][j] + B[i][j];
        end;
    end;

    { Exibindo a soma }
    for i := 1 to 2 do
    begin        
        write('|');
        for j := 1 to 4 do
        begin
            write(^i);
            write(C[i][j]);
        end;
        write(^i);
        writeln('|');
    end;

end.

