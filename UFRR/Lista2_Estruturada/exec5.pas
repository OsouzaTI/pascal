program Exercicio_5;
const numero_notas = 2;
var 
    nota : array[1..numero_notas] of integer;
    i : integer;
    valor_media : real;

function Media(const n_notas : integer) : real;
var media_corrente : integer = 0;
begin
    for i := 1 to n_notas do
    begin
        media_corrente += nota[i];
    end;
    Media := media_corrente / n_notas;
end;

procedure Situacao(var media: real);
begin
    if media >= 7 then
    begin
        writeln('Aprovado com media ', media:20:3);
    end
    else begin
        writeln('Reprovado com media ', media:20:3);
    end;
end;

begin
    for i := 1 to 2 do
    begin
        write('Digita a nota ', i, ': ');
        readln(nota[i]);
    end;
    valor_media := Media(numero_notas);
    Situacao(valor_media);
end.