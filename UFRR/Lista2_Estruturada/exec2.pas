program Exercicio_2;
{ Receber 2 valores e mostrar o maior }

{Procedure para processar o maior valor}
procedure MaiorValor(var valA, valB: integer);
begin
    if(valA > valB) then
        begin
            writeln('Valor A e maior: ', valA);
        end
    else if(valA = valB) then
        begin
            writeln('O valor A e igual ao valor B');
        end
    else
        begin
            writeln('O valor B e maior: ', valB);
        end;
end;

var valorA, valorB : integer;

begin
    write('Digite o Valor A: ');
    readln(valorA);
    write('Digite o Valor B: ');
    readln(valorB);
    MaiorValor(valorA, valorB);
end.