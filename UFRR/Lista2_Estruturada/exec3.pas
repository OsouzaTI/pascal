program Exercicio_3;

type Ivetor = array[1..3] of integer;
var 
    v : Ivetor;
    j : integer;

{Swap de variaveis básico}
procedure troca_variaveis(var a, b: integer);
var temp : integer;
begin
    temp := a;
    a := b;
    b := temp;
    writeln('Trocado: ', b, ' por ', a);
end;
{ Algoritmo bubble sort para ordenação de vetores }
procedure BubbleSort(var vetor : Ivetor);
var 
    trocado : boolean;
    i : integer;
begin
    repeat        
        trocado := false;
        for i := 1 to 2 do
        begin
            if vetor[i] > vetor[i+1] then
            begin
                troca_variaveis(vetor[i], vetor[i+1]);
                trocado := true;
            end;
        end;
    until (not trocado);
end;

{Programa principal}
begin
    for j := 1 to 3 do
    begin
        write('Digite o valor ', j,' : ');
        readln(v[j]);
    end;
    { Reorganizar vetor }
    BubbleSort(v);
    {Exibindo valores na ordem crescente}
    writeln('Exibindo em ordem Crescente');
    for j := 1 to 3 do
    begin
        write(v[j], ' ');
    end;
end.