{ Задание: заполнить массив случайными числами.
  Вычислить произведение его элементов }

program ArrayMultiplication;

const N = 5;

var A: array[1..N] of integer;
    i, mult: integer ;
Begin
  randomize;
  mult := 1;
  for i := 1 to N do
  begin
    A[i] := random(5) + 1;
    write(A[i], ' ');
  end;
  for i := 1 to N do
  begin
    mult := mult * A[i];
  end;
  writeln;
  writeln('Произведение элементов массива равно: ', mult);
  readln;
end.
