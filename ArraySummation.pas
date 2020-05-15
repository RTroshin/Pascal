{ Задание: заполнить массив случайными числами.
  Вычислить сумму его элементов }

program ArraySummation;

const N = 5;

var A: array[1..N] of integer;
    i, sum: integer ;
Begin
  randomize;
  sum := 0;
  for i := 1 to N do
  begin
    A[i] := random(5) + 1;
    write(A[i], ' ');
  end;
  for i := 1 to N do
  begin
    sum := sum + A[i];
  end;
  writeln;
  writeln('Сумма элементов массива равна: ', sum);
  readln;
end.