﻿{ Задание 2 }
{ Составить программу со вспомогательным алгоритмом - функция, для вычисления
  суммы  чисел - N }

program Summation;

function sum(N: integer): longint;
begin
  if N > 0 then
    sum := N + sum(N - 1);
end;

var N: integer;
Begin
  write('Введите целое положительное число N: ');
  readln(N);
  if N < 0 then
    while N < 0 do
    begin
      writeln('Ошибка! Введите целое положительное число!');
      readln(N);
    end;
  writeln('Сумма чисел от 1 до N: ', sum(N));
  readln;
end.