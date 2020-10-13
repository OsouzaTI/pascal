program Exercicio6;

{ Constantes usadas para o algoritmo }
const n_times = 5;
const n_jogadores = 11;

{ Modelo de registro para jogadores }
type Jogador = record
    idade : integer;
    peso : real;
    altura : real;
end;

{ Modelo de registro para times de futebol }
type time = record
    jogadores : array[1..n_jogadores] of Jogador;
end;

{ tipo de dado onde agrupa varios times(n_times) }
type times = array[1..n_times] of time;
{
    Dada uma lista unidimensional de times,
    é verificado a quantidade de jogadores menores
    de idade, onde a soma é exibida ao final.
}
procedure JogadorDeMenor(var vetor : times);
var i, j, n : integer;
begin
    n := 0;
    for i := 1 to n_times do
    begin        
        for j := 1 to n_jogadores do
        begin
            if vetor[i].jogadores[j].idade < 18 then
            begin
                n := n + 1;
            end;
        end;
    end;
    writeln('Existem ', n, ' jogadores de menor');
end;

procedure MediaIdade(var vetor : times);
var i, j, soma : integer;
begin    
    for i := 1 to n_times do
    begin
        soma := 0;
        for j := 1 to n_jogadores do
        begin
            soma := soma + vetor[i].jogadores[j].idade;
        end;        
        writeln('Media de idade Time ', i, ': ', (soma/n_jogadores):10:3);
    end;
end;

procedure MediaAltura(var vetor : times);
var i, j : integer; soma : real;
begin    
    soma := 0;
    for i := 1 to n_times do
    begin
        for j := 1 to n_jogadores do
        begin
            soma := soma + vetor[i].jogadores[j].altura;
        end;        
    end;
    write('Media de altura de todos : ', (soma/(n_jogadores*n_times)):10:3);
end;

procedure PorcentagemDePesoMaior80(var vetor : times);
var i, j, soma_jogadores80 : integer; pct_peso : real;
begin
    soma_jogadores80 := 0;
    for i := 1 to n_times do
    begin
        for j := 1 to n_jogadores do
        begin 
            if vetor[i].jogadores[j].peso > 80 then
            begin
                soma_jogadores80 := soma_jogadores80 + 1;
            end;
        end;
    end;
    pct_peso := (soma_jogadores80/(n_times*n_jogadores));
    writeln('A porcentagem de peso maior que 80: ', (pct_peso*100):10:3);
end;

var     
    i, j : integer;
    vtimes : times;
begin

    for i := 1 to n_times do
    begin
        writeln('=================================Time ', i);
        for j := 1 to n_jogadores do
        begin
            writeln('==========================');
            writeln('Jogador ', j);
            writeln('==========================');
            write('=Digite a idade : ');
            readln(vtimes[i].jogadores[j].idade);
            write('=Digite o peso : ');
            readln(vtimes[i].jogadores[j].peso);
            write('=Digite a altura : ');
            readln(vtimes[i].jogadores[j].altura);
        end;
    end;

    { Quantidade de jogadore com idade menor que 18 anos }
    JogadorDeMenor(vtimes);
    { A media de idade dps jogadores de cada time }
    MediaIdade(vtimes);
    { A media de alturas de todos os jogadores do campeonato }
    MediaAltura(vtimes);
    { Porcentagem de jogadores com peso maior que 80 quilos }
    PorcentagemDePesoMaior80(vtimes);


end.

