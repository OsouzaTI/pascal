program Exercicio_7;

procedure Soma();
var a, b : integer;
begin
    write('Digite A: ');
    readln(a);
    write('Digite B: ');
    readln(b);
    writeln('A soma : ', a + b);
end;

procedure QuadradoNumero();
var a : integer;
begin
    write('Digite A: ');
    readln(a);
    writeln('O Quadrado de ', a, ' : ', a*a);
end;

procedure Menu();
{Inicializando com um numero fora do limite}
var opcao : integer = 3;
begin
    writeln('Escolha a seguir:');
    writeln('1 - Soma de dois numeros');
    writeln('2 - Quadrado de um numero');
    while((opcao < 1) or (opcao > 2)) do
    begin
        write('Escolha: ');
        readln(opcao);
        { Aviso de opção errada }
        if ((opcao < 1) or (opcao > 2)) then
        begin
            writeln('--Opcao nao encontrada--');
            opcao := 3;{resetando valor default}
        end;
    end;
    case opcao of
        1 : Soma();
        2 : QuadradoNumero();
    end;
end;

begin
    Menu();
end.