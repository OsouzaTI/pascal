program Exercicio_8;
var a, b, c : integer;
procedure TipoTriangulo(var a, b, c : integer);
begin
    
    if (a < b + c) and (b < c + a) and (c < b + a) then
    begin

        if (a = b) and (b = c) then
        begin
            writeln('Triangulo equilatero e isoceles');
        end else if (a = b) or (a = c) or (c = b) then
        begin
            writeln('Triangulo isoceles');
        end else if (a <> b) and (b <> c) and (a <> c) then
        begin
            writeln('Triangulo escaleno');
        end;

    end
    else begin
        writeln('Nao forma um triangulo!');
    end;

end;

begin
    write('Digite A: ');
    readln(a);
    write('Digite B: ');
    readln(b);
    write('Digite C: ');
    readln(c);
    TipoTriangulo(a, b, c);
end.