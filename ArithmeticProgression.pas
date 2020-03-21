{ Задание №4.1 }
{ Составить программу для вычисления прогрессии }
{ Арифметическая прогрессия }

program ArithmeticProgression;
var a, Sum, i, n, d: integer;
Begin
  write('Введите начальное значение: ');
  readln(a);
  write('Введите диапазон арифметической прогрессии: ');
  readln(n);
  write('Введите шаг арифметической прогрессии: ');
  readln(d);
  Sum := a;
  for i := 1 to n do
  begin
    Sum := Sum + d;
    write(Sum, ' ');
  end;
  readln;
end.
  
