program Exercicio_1;
{
    autor: Ozéias silva souza
    data: 24/09/2020
    hora: 13:09
    Objetivo:
        Ler quatro números e apresentar o resultado dois
        a dois da adição e multiplicação.
}

uses Crt;
type Iarray = array[1..4] of integer;
var 
    letras : array[1..4] of char = ('A', 'B', 'C', 'D');
    valor_logico : boolean;
    i, j, k : integer;
    n : ^Iarray;
    indices : array[1..4] of integer;

    procedure resultado(var b : boolean);
    begin
        for i := 1 to 4 do
        begin
            for j := 1 to 4 do
            begin
                if ((j >= i) and (j <> i)) then
                begin
                    if b then
                    begin
                        writeln('multiplicado   ', letras[i], ' * ', letras[j], ' = ', n^[i] * n^[j]);                            
                    end else
                    begin
                        writeln('somado         ', letras[i], ' + ', letras[j], ' = ', n^[i] + n^[j]);                            
                    end;
                end;
            end;
        end;
        if not b then
        begin
            b := true;
            resultado(b);
        end;
    end;

begin
    new(n);
    writeln('Programa 1');
    for i := 1 to 4 do
    begin
        write('Numero ', i, ': ');
        readln(n^[i]);
    end;
    resultado(valor_logico);
end.