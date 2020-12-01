program Exercicio4;
type vetor = array[1..20] of integer;
var a, b, c : vetor; i : integer;
begin
    writeln('Iniciando algoritmo');
    for i := 1 to 20 do
    begin
        write('A',i,': ');
        read(a[i]);
        write(' | ');
        write('B',i,': ');
        read(b[i]);
        { Parte do vetor C}
        c[i] := a[i] - b[i];
    end;
    writeln('Exibindo Vetor C');
    for i := 1 to 20 do
    begin
        writeln('C',i,': ', c[i]);
    end;
end.

