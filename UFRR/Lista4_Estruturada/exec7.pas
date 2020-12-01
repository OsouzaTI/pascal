program Exercicio7;
type vetor = array[1..5] of integer;
type vetor10 = array[1..10] of integer;
var a, b : vetor;
    c : vetor10;
    i : integer;

procedure InsertionSort(var v: array of integer; t : integer);
var  i, j, key : integer;
begin

    for i := 1 to t-1 do
    begin
        key := v[i];
        j := i - 1;
        while ((j>=0) and (key < v[j])) do
        begin
            v[j + 1] := v[j];
            j := j - 1;
        end;
        v[j + 1] := key;
    end;

end;

begin
    for i := 1 to 5 do
    begin
        write('A',i,': ');
        read(a[i]);
        write(' | ');
        write('B',i,': ');
        read(b[i]);
    end;
    { Ordenacao }
    InsertionSort(a, 5);
    InsertionSort(b, 5);
    for i := 1 to 10 do
    begin
        if i <= 5 then            
        begin
            c[i] := a[i];
        end else
        begin
            c[i] := b[i-5];            
        end;
    end;
    InsertionSort(c, 10);
    for i := 1 to 10 do
    begin
        writeln('C',i,': ',c[i]);
    end;
end.

