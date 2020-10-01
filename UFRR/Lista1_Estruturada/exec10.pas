program Exercicio_10;

function valor(const altura, raio: integer; const volume : real):real;
begin
    valor := volume * (raio * raio) * altura;
end;

const V = 3.14159;
var raio, altura: integer;
begin
    write('Raio da lata de oleo: ');
    readln(raio);
    write('Altura da lata: ');
    readln(altura);
    writeln('O valor da lata : ', valor(altura, raio, V):10:3);
end.

