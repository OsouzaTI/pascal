program Exercicio_4;
var numero : integer;

procedure ImpaPar(var n : integer);
begin
    if ((n mod 2) = 0) then
    begin
        writeln('Numero Par');
    end 
    else begin
        writeln('Numero Impar');
    end;
end;

begin
    write('Digite um numero: ');
    readln(numero);
    ImpaPar(numero);
end.

