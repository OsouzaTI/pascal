program Exercicio_11;

procedure troca_variaveis(var a, b:integer);
var temp : integer;
begin
    temp := a;
    a := b;
    b := temp;
end;

var a, b: integer;
begin
    write('Digite o A: ');
    readln(a);
    write('Digite o B: ');
    readln(b);
    troca_variaveis(a, b);
    writeln('Valor de A: ', a);
    writeln('Valor de B: ', b);
end.

