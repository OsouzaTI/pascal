program Exercicio2;

type mat30x2 = array[1..30, 1..3] of real;
type vec30 = array[1..30] of real;
type vec3 = array[1..3] of real;
var 
    alunos : mat30x2;
    mAlunos : vec30;
    { media de turmas inicializado }
    mTurma : vec3 = (0, 0, 0);
    i, j : integer;

begin
    { Capturando notas }
    for i := 1 to 30 do
    begin        
        for j := 1 to 3 do
        begin
            write('Aluno ', i, ' -> Prova(',j,'): ');
            read(alunos[i][j]);
            mTurma[j] := mTurma[j] + alunos[i][j];
        end;
        mAlunos[i] := (alunos[i][1] + alunos[i][2] + alunos[i][3]) / 3.0;
    end;
    
    { Exibindo medias }
    writeln('**Medias**');
    for i := 1 to 30 do
    begin  
        writeln('Aluno ',i,' : ', mAlunos[i]:10:3);
    end;

    { Processando as medias }
    for i := 1 to 3 do
    begin
        mTurma[i] := mTurma[i] / 30.0;
        writeln('Turma ', i,' : ', mTurma[i]:10:3);
    end;

end.