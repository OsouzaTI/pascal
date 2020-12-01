program Exercicio5;
type mat4x4 = array[1..4, 1..4] of integer;
var
    matriz : mat4x4;
    i, j, soma : integer;
begin
    soma := 0;
    for i := 1 to 4 do
    begin
        for j := 1 to 4 do
        begin
            write('Matriz[',i,'][',j,'] = ');
            read(matriz[i][j]);
            if (i + j) = 5 then
            begin
                soma := soma + matriz[i][j];
            end;
        end;
    end;
    writeln('A soma da diagonal secundaria: ', soma);
end.