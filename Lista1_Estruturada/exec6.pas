program Exercicio_6;

{
    
    Informações:
        veículo: 12 km/l
        distancia: tempo * velocidade


}

const km_l = 12;
var
    c_gasto : real;
    tempo, velocidade, distancia : integer;
    
    { 
        prefixos:
            F : função/procedure
    
    }

    procedure Fdistancia();
    begin
        write('Tempo : ');
        readln(tempo);
        write('Velocidade: ');
        readln(velocidade);
        distancia := tempo * velocidade;
    end;
    
    procedure Fcombustivel_gasto();
    begin
        c_gasto := (distancia/km_l);
        writeln('O combustivel gasto foi de : ', c_gasto:10:2, 'litros');
    end;


begin
    Fdistancia();
    Fcombustivel_gasto();
end.