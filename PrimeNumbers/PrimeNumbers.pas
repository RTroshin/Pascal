{ Задание №1 }
{ Найдите в массиве все простые числа и скопируйте их в новый массив }

program PrimeNumbers;

{ const N = 10; { Константа для размерности массива }

var { A: array[1..N] of integer; }
    { B: array[1..N] of integer; }
    a, b, i, n, count: integer;
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