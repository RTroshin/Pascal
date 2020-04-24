{ Задание №1 }
{ Найдите в массиве все простые числа и скопируйте их в новый массив }

program PrimeNumbers;

const N = 10; { Константа для размерности массива }

var A: array[1..N] of integer;
    B: array[1..N] of integer;
    number, i, j, k, count: integer;
    stop: boolean;
Begin
  stop := false;
  k := 1;
  while (stop = false) do
  begin
    write('Введите значения в массив (целые положительные числа): ');
    for i := 1 to N do
    begin
      readln(number);
      if (number < 0) then
      begin
        while (number < 1) do
        begin
          writeln('Введите целое положительное число!');
          readln(number);
        end;
      end;
        A[i] := number;
    end;
    write('Исходный массив: ');
    for i := 1 to N do
      write(A[i], ' ');
    writeln;
    write('Массив простых чисел: ');
    for i := 1 to N do
    begin
      count := 0;
      for j := 1 to i do
      begin
      if (A[i] mod j = 0) then
        inc(count);
      end;
      if (count = 2) then
      begin
        B[k] := A[i];
        inc(k);
      end;
    end;
    stop := true;
  end;
  for i := 1 to N do
    write(B[i], ' ');  
  readln;
end.