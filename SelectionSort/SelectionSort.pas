{ Задание: отсортировать массив методом выбора }

program SelectionSort;

const N = 5; { Константа для размерности массива }

var A: array[1..N] of integer;
    temp: integer;
    i, j, imax: byte;
Begin
  randomize;
  writeln('Исходный массив:');
  for i := 1 to N do
  begin
    A[i] := random(100) + 1;
    write(A[i], ' ');
  end;
  for i := 1 to N - 1 do
  begin
    imax := i;
    for j := i + 1 to N do
      if (A[imax] < A[j]) then
        imax := j;
    temp := A[i];
    A[i] := A[imax];
    A[imax] := temp;
  end;
  writeln;
  writeln;
  writeln('Отсортированный массив по убыванию:');
  for i := 1 to N do
    write(A[i], ' ');
  readln;
end.