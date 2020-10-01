program Exercicio_2;
{
    autor: Ozéias silva souza
    data: 26/09/2020
    objetivo: 
        Receber quatro notas e calcular a média
        aritmetica.
}
var
    i, soma : integer;
    notas : array[1..4] of integer;

begin
    { Inicializando variavel }
    soma := 0;
    for i := 1 to 4 do
    begin
        write('Nota ', i, ' : ');
        readln(notas[i]);
        { atribuindo soma }
        soma := soma + notas[i];
    end;
    { Mostrando a média }
    writeln('A media aritmetica : ', (soma/4):3:3);
end.

