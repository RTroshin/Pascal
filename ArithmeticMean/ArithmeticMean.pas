{ Задание №1 }
{ Составить программу со вспомогательным алгоритмом - процедура, для вывода
  на экран среднего арифметического двух чисел }

program ArithmeticMean;

var AM: real; { Глобальная переменная }

procedure ArithMean(a, b: integer);
begin
  AM := (a + b) / 2;
end;

var x, y: integer;
Begin
  write('Введите числа x и y: ');
  readln(x, y);
  ArithMean(x, y);
  writeln('Среднее арифметическое равно ', AM);
  readln;
end.
