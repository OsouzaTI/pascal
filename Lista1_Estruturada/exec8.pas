program Exercicio_8;
var
    f_temperatura : integer;
begin
    write('Digite uma temperatura em Fahrenheit(F): ');
    readln(f_temperatura);
    write('A temperatura ', f_temperatura, ' F em C : ');
    writeln(( (f_temperatura-32)*(5/9) ):10:3);
end.