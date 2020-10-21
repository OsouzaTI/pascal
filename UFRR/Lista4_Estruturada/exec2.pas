program Exercicio_2;

function Fatorial(const n: integer):longint;
var fat : longint; i : integer;
begin
    fat := 1;
    for i := n downto 1 do
    begin
        fat := i * fat;
    end;
    Fatorial := fat;
end;
type vetor = array[1..15] of longint;
var a, b : vetor; i : integer;
begin
    writeln('Iniciando o algoritmo');
    for i := 1 to 15 do
    begin
        write(i,': ');
        readln(a[i]);
        b[i] := Fatorial(a[i]);
    end;

    for i := 1 to 15 do
    begin
        writeln('B',i,': ', b[i]);
    end;

end.