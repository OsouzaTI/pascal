program Exercicio_12;
var angulo1, angulo2, angulo3 : integer;
begin
    write('Digite o valor do angulo 1: ');
    readln(angulo1);
    write('Digite o valor do angulo 2: ');
    readln(angulo2);
    angulo3 := 180 - (angulo1 + angulo2);
    writeln('O valor do angulo 3 : ', angulo3);
end.

