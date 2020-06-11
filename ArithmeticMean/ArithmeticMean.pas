{ Задание №1 }
{ Составить программу со вспомогательным алгоритмом - процедура, для вывода
  на экран среднего арифметического двух чисел }

program ArithmeticMean;

var AM: real; { Глобальная переменная }

procedure arithMean(a, b: integer);
begin
  AM := (a + b) / 2;
end;

var x, y: integer;
Begin
  write('Введите числа x и y: ');
  readln(x, y);
  arithMean(x, y);
  writeln('Среднее арифметическое чисел x и y равно ', AM);
  readln;
end.