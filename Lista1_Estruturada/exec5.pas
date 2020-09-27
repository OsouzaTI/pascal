program Exercicio_5;
var
    salario, p_aumento : Real;

    procedure entrada_percentual();
    begin
        write('Percentual de aumento(%): ');
        readln(p_aumento);
    end;

begin
    writeln('---------------');
    writeln('Valores percentuais devem estar como:');
    writeln('| 15% = 0.15 |');
    writeln('---------------');
    write('Salario atual: ');
    readln(salario);
    entrada_percentual();

    { validando entrada }
    while( p_aumento > 1 ) do
    begin
        writeln('---------------');
        writeln('Entrada invalida, por favor digite novamente.');
        writeln('---------------');
        entrada_percentual();
    end;

    writeln('O aumento foi de : ', (salario * p_aumento):10:2 );
    writeln('Novo salario : ',     (salario + (salario * p_aumento)):10:2 );
end.