Program q5 ;
var n, i : integer;
e, nFact: real;
Begin
e:=1;
nFact:=1;
writeln('entre com um numero');
readln(n);
for i:= 1 to n do
begin
nFact:= nFact*i;
e:= e + (1/ nFact);
end;
writeln('O valor é ', e );
End.