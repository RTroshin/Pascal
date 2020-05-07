{ Задание №4 }
{ Создать программу для поиска элемента в массиве, определить количество
  четных и нечетных чисел }

program EvenOddNumbers;

const N = 10; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, j, number, even, odd: integer;
Begin
  j := N;
  even := 0;
  odd := 0;
  write('Исходный массив: ');
  for i := 1 to N do
  begin
    A[i] := j;
    write(A[i], ' ');
    dec(j);
  end;
  writeln;
  write('Введите номер искомого элемента в массиве (от 1 до ', N, ' ): ');
  readln(number);
  for i := 1 to N do
  begin
    if number = i then
    begin
      writeln('Найденный элемент: ', A[i]);
      break;
    end
  end;
  for i := 1 to N do
  begin
    if A[i] mod 2 = 0 then
      inc(even)
    else
      inc(odd);
  end;
  writeln('Количество четных цифр: ', even);
  writeln('Количество нечетных цифр: ', odd);
  readln;
end.