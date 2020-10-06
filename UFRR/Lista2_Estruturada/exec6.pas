program Exercicio_6;
{Obs: O numero de notas deve ser igual ao numero de pesos}
const n_notas = 3;
type Ivetor = array[1..n_notas] of integer;

function MediaPonderada(const valor_pesos, notas : Ivetor) : real;
var i, numerador, denominador : integer;
begin
    numerador := 0;
    denominador := 0;
    for i := 1 to n_notas do
    begin
        numerador += valor_pesos[i] * notas[i];
        denominador += valor_pesos[i];
    end;
    write('A media ponderada : ', (numerador/denominador):20:3,' | ');
    MediaPonderada := numerador/denominador;
end;

procedure Conceito(var media : real);
begin
    write('Conceito: ');
    if(media >= 8) and (media <= 10) then
    begin
        write('A');
    end
    else if(media >= 7) and (media < 8) then
    begin
        write('B');
    end
    else if(media >= 6) and (media < 7) then
    begin
        write('C');
    end
    else if(media >= 5) and (media < 6) then
    begin
        write('D');
    end
    else begin
        write('E');
    end;
end;

var 
    j : integer;
    pesos : Ivetor = (2, 3, 5);{deve ser igual ao numero de notas}
    notas : Ivetor;
    p_media : real;
begin
    for j := 1 to n_notas do
    begin
        write('Digite a nota ', j, ': ');
        readln(notas[j]);
    end;
    p_media := MediaPonderada(pesos, notas);
    Conceito(p_media);
end.