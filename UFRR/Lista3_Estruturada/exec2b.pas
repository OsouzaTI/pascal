program Execicio2_b;
var i, n, fat : integer;
begin
    write('Digite o valor de n: ');
    readln(n);
    i := n;
    fat := 1;
    while i > 1 do
    begin
        fat := fat * i;
        i := i - 1;
    end;
    writeln('O fatorial de ', n, ': ', fat);
end.