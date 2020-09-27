program Exercicio_13;


procedure bhaskara(const a, b, c: integer);
var delta, x1, x2: real;
begin
    
    delta := (b*b) - 4 * a * c;

    if (delta < 0) then
    begin
        writeln('A equacao nao possui raizes reais!');
    end
    else if (delta = 0) then
    begin
        writeln('A euqcao possui uma raiz real!');
        x1 := (-b + sqrt(delta)) / (2 * a);
        writeln('X1 : ', x1);
    end
    else if (delta > 0) then 
    begin
        writeln('A equacao possui duas raizes reais!');
        x1 := (-b + sqrt(delta))/ (2 * a);
        x2 := (-b - sqrt(delta))/ (2 * a);
        writeln('X1 : ', x1:10:3, ' X2: ', x2:10:3);
    end;

end;

var a, b, c: integer;
begin
    write('Digite o valor de A: ');
    readln(a);
    write('Digite o valor de B: ');
    readln(b);
    write('Digite o valor de C: ');
    readln(c);
    bhaskara(a, b, c);
end.