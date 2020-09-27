program Exercicio_9;

function power(const a, b: integer):integer;
var i, p : integer;
begin
    i := 0;
    p := 1;
    while i < b do
    begin
        p := p * a;
        i := i + 1;
    end;   
    power := p;    
end;

const PI = 3.14159265358979323846;
var
    raio, potancia : integer;
begin
    write('Digite o raio da esfera: ');
    readln(raio);
    potancia := power(raio, 3);
    write('O volume dessa esfera : ');
    writeln(( (4 * PI * potancia) /3 ):10:3);
end.