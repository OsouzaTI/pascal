program Exercicio2c;
var i, n, fat : integer;
begin
    write('Digite o valor de n: ');
    readln(n);
    i := n;
    fat := 1;

    repeat
        fat := fat * i;
        i := i - 1;
    until (i = 1);
    
    writeln('O fatorial de ', n, ': ', fat);
end.
