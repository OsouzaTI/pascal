program Exercicio_5;
var
    e : real;
    i, n : integer;

function fatorial(const a: integer) : integer;
var j, fat_a : integer;
begin
    fat_a := 1;
    if a = 1 then
    begin
        writeln('e um');
        fat_a := 1;
    end 
    else begin
        for j := a downto 1 do
        begin
            writeln(a);
            fat_a := fat_a * j;    
        end;
    end;
    fatorial := fat_a;
end;

begin
    {Inicializando 'e'}
    e := 1;
    write('Digite um valor inteiro positivo: ');
    readln(n);
    for i := 1 to n do
    begin        
        e := e + (1/fatorial(i));
    end;
    writeln('O valor de "e": ', e:10:3);
end.