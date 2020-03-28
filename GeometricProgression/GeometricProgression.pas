{ Задание №4.2 }
{ Составить программу для вычисления прогрессии }
{ Геометричкая прогрессия }

program GeometricProgression;
var a, Sum, i, n, d: integer;
Begin
  write('Введите начальное значение: ');
  readln(a);
  write('Введите диапазон геометрической прогрессии: ');
  readln(n);
  write('Введите шаг геометрической прогрессии: ');
  readln(d);
  Sum := a;
  for i := 1 to n do
  begin
    Sum := Sum * d;
    write(Sum, ' ');
  end;
  readln;
end.
  
