program Exercicio4;
var 
    i, n : integer;
    n1, n2, n3 : longint;
begin
    n1 := 2;
    n2 := 7;
    n3 := 3;
    { Limite para não haver overflow de memoria }
    repeat        
        write('Digite um numero : ');
        readln(n);
        if n > 14 then
        begin
            writeln('Limite atingido! (n <= 14)');
        end;
    until (not(n > 14));

    { Termos iniciais }
    write(n1 , ' ', n2 , ' ', n3 , ' ');
    writeln('');
    for i := 1 to n do
    begin
        n1 := n1 * 2;
        n2 := n2 * 3;
        n3 := n3 * 4;
        write(n1 , ' ', n2 , ' ', n3 , ' ');
        writeln('');
    end;

end.

