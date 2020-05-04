{ Задание №1 }
{ Найдите в массиве все простые числа и скопируйте их в новый массив }

program PrimeNumbers;

const N = 10; { Константа для размерности массива }

var A: array[1..N] of integer;
    B: array[1..N] of integer;
    number, i, k, count: integer;
Begin
  k := 1;
  writeln('Введите значения в массив (только натуральные числа):');
  for i := 1 to N do
  begin
    readln(number);
    if (number < 0) then
    begin
      while (number <= 0) do
      begin
        writeln('Введите натуральное число!');
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
    count := 2;
    while (A[i] mod count <> 0) and (count * count <= A[i]) do
      inc(count);
    if (count * count > A[i]) and (A[i] > 1) then
    begin
      B[k] := A[i];
      inc(k);
    end;
  end;
  for i := 1 to N do
    write(B[i], ' ');  
  readln;
end.