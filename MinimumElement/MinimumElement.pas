{ Задание: найти и вывести минимальный элемент в массиве }

program MinimumElement;

const N = 5; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, min: integer;
Begin
  randomize;
  write('Исходный массив: ');
  for i := 1 to N do
  begin
    A[i] := random(100) + 1;
    write(A[i], ' ');
  end;
  min := A[1];
  for i := 1 to N do
  begin
    if (A[i] < min) then
      min := A[i];
  end;
  writeln;
  writeln('Минимальный элемент в массиве: ', min);
  readln;
end.
