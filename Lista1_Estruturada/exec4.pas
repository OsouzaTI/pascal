program Exercicio_4;

var salario : integer;

begin
    
    write('Salario atual: ');
    readln(salario);
    writeln('Novo Salario(+15%) : R$', (salario + (salario * 0.15)):10:3 );

end.