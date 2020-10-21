program Exercicio5;
type vetor20 = array[1..20] of integer;
type vetor30 = array[1..30] of integer;
type vetor50 = array[1..50] of integer;
var a : vetor20;
    b : vetor30;
    c : vetor50;
    i : integer;
begin

    {vetor A}
    for i := 1 to 20 do
    begin
        write('A',i,': ');
        readln(a[i]);
        c[i] := a[i];
    end;
    {vetor B}
    for i := 1 to 30 do
    begin
        write('B',i,': ');
        readln(b[i]);
        c[20+i] := b[i];
    end;
    {vetor C}
    for i := 1 to 50 do
    begin
        writeln('C',i,': ',c[i]);
    end;

end.