{ Вычисление факториала }

program Factorial;
var
  n, i, fact: integer;
Begin
  write('Введите число: ');
  readln(n);
  fact := 1;
  for i := 1 to n do
    fact := fact * i;
  write(n, '! = ', fact);
  readln;
end.
