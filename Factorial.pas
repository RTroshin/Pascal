{ Задание №1 }
{ Написать программу для определения факториала }

program Factorial;
var fact: longint; { Для вычисления факториала использовать тип longint }
    i, n: byte; { Тип byte для неотрицательных значений }
    stop: boolean;
Begin
  stop := false;
  repeat
    write('Введите число: ');
    read(n);
    if (n = 0) then
      writeln(n);
    fact := 1;
    for i := 1 to n do
      fact := fact * i;
    writeln(n, '! = ', fact);
    writeln;
  until stop = true;
end.