program Exercicios_3;
var i, n : integer;

procedure Fibonacci(var termos : integer);
var i, n, n1, n2, temp : integer;
begin
    { Primeiros termos de fibonacci }
    n1 := 0;
    n2 := 1;
    writeln('Termo 0: ', n1);    
    writeln('Termo 1: ', n2);    
    for i := 2 to termos do
    begin        
        temp := n1 + n2;
        n1 := n2;
        n2 := temp;
        writeln('Termo ', i, ': ', n2);
    end;

end;

begin
    write('Digite o numero de termos: ');
    readln(n);
    Fibonacci(n);
end.