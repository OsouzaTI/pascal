program Exercicio7;
var i, n, k : integer;
begin
    k := 0;
    write('Digite um numero: ');
    readln(n);
    for i := 1 to (n div 2) do
    begin
        if n mod i = 0 then
        begin
            k := k + 1;
        end;   
    end;    
    if k < 2 then
    begin
        writeln('O numero e primo');
    end else begin
        writeln('O numero nao primo');
    end;
end.