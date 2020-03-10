{ Задание №4.1 }
{ Составить программу для вычисления прогрессии }
{ Арифметическая прогрессия }

program ArithmeticProgression;
var a, Sum, i, n, d: integer;
Begin
  write('Введите a: ');
  read(a);
  write('Введите n: '); { Диапазон арифметической прогрессии }
  read(n);
  write('Введите d: '); { Шаг арифметической прогрессии }
  read(d);
  Sum := a;
  for i := 1 to n do
  begin
    Sum := Sum + d;
    write(Sum, ' ');
  end;
  writeln;
end.
  
