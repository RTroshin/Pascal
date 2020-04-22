{ Задание №2 }
{ Напишите программу, которая вводит натуральные числа a и b и выводит все
  простые числа в диапазоне от a до b }

program PrimeNumbers;
var a, b, i, n, count: integer;
    stop: boolean;
Begin
  stop := false;
  while (stop = false) do
  begin
    write('Введите диапазон a и b: ');
    readln(a, b);
    if (b <= 1) then
    begin
      while (b <= 1) do
      begin
        writeln('Число b должно быть больше единицы!! ');
        write('Введите диапазон a и b: ');
        readln(a, b);
      end;
    end;
    writeln('Простые числа: ');
    for i := a to b do
    begin
      count := 0;
      for n := 1 to i do
      begin
        if (i mod n = 0) then
          inc(count);
      end;
      if (count = 2) then
        write(i, ' ');
    end;
    stop := true;
  end;
  readln;
end.
