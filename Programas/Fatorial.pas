Algoritmo Fatorial

Inicio

inteiro: n, i, fat;
receba(n);
fat <- 1;
para i<-n até 1 passo -1 faça
    fat <- i * fat;
fim-para
exiba("O fatorial é ", fat);

Fim