program Exercicio_7;
var
    c_temperatura : integer;
begin
    write('Digite uma temperatura em Celcius(C): ');
    readln(c_temperatura);
    write('A temperatura ', c_temperatura, ' C em F : ');
    writeln(((9*c_temperatura+160)/5):10:3);
end.

