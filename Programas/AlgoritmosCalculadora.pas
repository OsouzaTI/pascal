Algoritmo "Calculadora";
Inicio
    logico: processo;
    real: c;
    inteiro: a, b;
    caractere: op;
    exiba("Digite uma das operações: ");
    receba(op)
    exiba("Digite um numero: ");
    receba(a);
    exiba("Digite outro numero: ");
    receba(b);    
    processo <- verdadeiro;    
    escolha(op)
        caso "+":
            c <- a + b;
            pare;
        caso "-":
            c <- a - b;
            pare;
        caso "*":
            c <- a * b;
            pare;
        caso "/":
            c <- a / b;
            pare;
        senao:
            exiba("A operação não aceita!"); 
            processo <- falso;
    fim-escolha
    se processo então
        exiba("A operação resultou em ", c);
    senão
        exiba("A operação não foi reconhecida");
    fim-se
fim