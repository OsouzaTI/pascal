program Exercicio_2;
{ Fatorial utilizando FOR }
var i, n, fat : integer;
begin
    {pegando numero}
    write('Digite um numero: ');
    readln(n);
    fat := 1;    
    for i := n downto 1 do
    begin
        fat := fat * i;
    end;
    writeln('Fatorial de ', n, ': ', fat);
end.
