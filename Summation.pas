{ Задание 2 }
{ Составить программу со вспомогательным алгоритмом - функция, для вычисления
  суммы  чисел - N }

program Summation;

function Sum(N: integer): longint;
begin
  if N > 0 then
    Sum := N + Sum(N - 1);
end;

var N: integer;
Begin
  write('Введите число N: ');
  readln(N);
  writeln('Сумма чисел от 1 до N равна ', Sum(N));
  readln;
end.