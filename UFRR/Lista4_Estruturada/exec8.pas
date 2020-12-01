program Exercicio8;
type CArray8 = array[1..8] of char;
type AlunoProva = array[1..10, 1..8] of char;
type NumerosAlunos = array[1..10] of integer;
var gabarito, prova : CArray8;
    i, j : integer;
    n_alunos: NumerosAlunos;
    aluno_prova: AlunoProva;
    pct_aprovacao : real;
    tmp : integer; {auxilia no processo de aprovacao}
begin
    tmp := 0;
    pct_aprovacao := 0;
    writeln('Gabarito:...');
    for i := 1 to 8 do
    begin
        write('Q',i,': ');
        readln(gabarito[i]);
    end;

    for i := 1 to 10 do
    begin
        write('Numero do aluno_',i,': ');
        readln(n_alunos[i]);
        for j := 1 to 8 do
        begin
            write('Aluno(',n_alunos[i],')[Q',j,']: ');
            readln(aluno_prova[i][j]);
        end;
    end;
    { Processando notas e percentual de aprovação }
    for i := 1 to 10 do
    begin
        for j := 1 to 8 do
        begin            
            if aluno_prova[i][j] = gabarito[j] then
            begin
                tmp := tmp + 1;
            end;
        end;
        if tmp >= 6 then
        begin
            pct_aprovacao := pct_aprovacao + 1;
        end;
        writeln('Aluno(',n_alunos[i],'): ', tmp,' pontos');
        tmp := 0;
    end;
    writeln('A media de aprovacao: ', (pct_aprovacao/10):10:3,'(percentual)');
end.

