program Exercicio_3;

var 
    i, soma_numerador, soma_denominador : integer;
    notas : array[1..4, 1..4] of integer;

begin
    soma_numerador   := 0;
    soma_denominador := 0;
    for i := 1 to 4 do
    begin
        { Indice zero são as notas }
        write('Nota ', i, ' : ');
        readln(notas[0][i]);
        { Indices 1 são os pesos   }
        write('Peso ', i, ' : ');
        readln(notas[1][i]);
        { Calculo }
        soma_numerador   := soma_numerador + (notas[0][i] * notas[1][i]);
        soma_denominador := soma_denominador + notas[1][i];
    end;
    writeln('A media ponderada : ', soma_numerador/soma_denominador:3:3);
end.

