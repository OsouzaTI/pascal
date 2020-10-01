program Exercicio_1;
{
    autor: Ozéias silva souza
    data: 24/09/2020
    hora: 13:09
    Objetivo:
        Ler quatro números e apresentar o resultado dois
        a dois da adição e multiplicação.
}

{ Tipo Iarray: um vetor de 4 elementos do tipo inteiro }
type Iarray = array[1..4] of integer;
var 
    { Valor de parâmetro para a função }
    valor_logico : boolean;
    { Variáveis para uso nos loops }
    i, j : integer;
    { Ponteiro para o tipo Iarray }
    n : ^Iarray;
    { função usada para iterar os vetores e apresentar os resultados um a um sem repetições }
    procedure resultado(var b : boolean);
    begin
        for i := 1 to 4 do
        begin
            for j := 1 to 4 do
            begin
                { verifica se o j é maior que i }
                if ((j > i)) then
                begin
                    { se b é verdadeiro }
                    if b then
                    begin
                        writeln('multiplicado ', n^[i], '*', n^[j], '=', n^[i] * n^[j]);                            
                    end else
                    { se b é falso }
                    begin
                        writeln('somado ', n^[i], ' + ', n^[j], ' = ', n^[i] + n^[j]);                            
                    end;
                end;
            end;
        end;
        { verifica se b é falso }
        if not b then
        begin
            b := true;
            { invoca a si mesma com o parametro negado }
            resultado(b);
        end;
    end;

begin
    { inicializa o novo ponteiro }
    new(n);
    { inicializa a variavel lógica }
    valor_logico := false;
    writeln('Programa 1');
    for i := 1 to 4 do
    begin
        write('Numero ', i, ': ');
        readln(n^[i]);
    end;
    { chama a função }
    resultado(valor_logico);
end.

