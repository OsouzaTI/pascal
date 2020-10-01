Program Aluno_Nota_10;
	{ Array de inteiros com capacidade de 10 notas } 
	Var
      i : integer; 
                    notas : array[1..10] of integer;
Begin
{ Lendo 10 notas } 
for i := 1 to 10 do
Begin
	Write('Digite a nota ', i, ': ');		
	Readln(notas[i]);
End;
{ Reutilizando a variável i para o segundo loop } 
for i := 1 to 10 do
Begin
	if ( notas[i] = 10 ) then
 	Begin
 		Writeln('O aluno ', i, ' tem nota maxima');
 	End;
End;
End.
