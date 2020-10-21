program Exercicio3;
type vetor = array[1..5]of integer;
var a : vetor = (1,3,4,5,5);
    i, k: integer;
    b : boolean;
begin
    write('Digite o valor a buscar: ');
    readln(k);
    for i := 1 to 5 do
    begin
        if a[i] = k then
        begin
            b := true;
            writeln0('Chave encontrada no indice: ', i);
        end;
    end;
    if not b then
    begin
        writeln('Chave K nao encontrada');
    end;
end.