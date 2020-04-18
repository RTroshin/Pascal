{ Задание №5 }
{ Создать программу для отбора нужных элементов в массиве }

program NumbersSelection;

const N = 10; { Константа для размерности массива }

var A: array[1..N] of integer;
    B: array[1..N] of integer;
    i, count, userChoice: integer;
Begin
  writeln('Исходный массив:');
  for i := 1 to N do
  begin
    A[i] := i;
    write(A[i], ' ');
  end;
  count := 0;
  writeln;
  writeln;
  writeln('Выберите 5 чисел из данного массива: ');
  while count < 5 do
  begin
    readln(userChoice);
    for i := 1 to N do
    begin
      if A[i] = userChoice then
      begin
        inc(count);
        B[count] := A[i];
      end;
    end;
  end;
  writeln;
  writeln('Выбранные числа:');
  for i := 1 to count do
    write(B[i], ' ');
  readln;
end.
