﻿{ Задание: отсортировать массив методом пузырька }

program BubbleSort;

const N = 5; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, j, temp: integer;
Begin
  randomize;
  writeln('Неотсортированный массив: ');
  for i := 1 to N do
  begin
    A[i] := random(100) + 1;
    write(A[i], ' ');
  end;
  for i := 1 to N - 1 do
    for j := 1 to N - i do
      if (A[j] > A[j + 1]) then
      begin
        temp := A[j];
        A[j] := A[j + 1];
        A[j + 1] := temp;
      end;
  writeln;
  writeln('Отсортированный массив по возрастанию: ');
  for i := 1 to N do
    write(A[i], ' ');
  readln;
end.