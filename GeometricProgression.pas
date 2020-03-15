{ Задание №4.2 }
{ Составить программу для вычисления прогрессии }
{ Геометричкая прогрессия }

program GeometricProgression;
var a, Sum, i, n, d: integer;
Begin
  write('Введите a: ');
  read(a);
  write('Введите n: '); { Диапазон геометрической прогрессии }
  read(n);
  write('Введите d: '); { Шаг геометрической прогрессии }
  read(d);
  Sum := a;
  for i := 1 to n do
  begin
    Sum := Sum * d;
    write(Sum, ' ');
  end;
  writeln;
end.
  
