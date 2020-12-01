program Exercicio6;
type vetor = array[1..10] of integer;
var a, b , c: vetor;
    i : integer;
begin
    for i := 1 to 10 do
    begin
        write('A',i,': ');
        read(a[i]);
        write(' | ');
        write('B',i,': ');
        read(b[i]);
        {Vetor C}
        if i mod 2 <> 0 then
        begin
            c[i] := a[i];
        end else
        begin
            c[i] := b[i];
        end;
    end;
    writeln('Exibindo C');
    for i := 1 to 10 do
    begin
        write('A', i,': ',a[i]);
        write(' | ');
        write('B', i,': ',b[i]);
        write(' | ');
        writeln('C',i,': ',c[i]);
    end;
end.

