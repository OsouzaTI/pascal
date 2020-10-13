program DescontoNoPreco;
var preco, desconto : real;
begin

    write('Digite o Preco do produto: ');
    readln(preco);
    write('Digite o Desconto (0.1 = 10%) : ');
    readln(desconto);
    writeln('O preco a pagar : ', (preco - (preco * desconto)):10:3);
end.