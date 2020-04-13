{ Задание №2 }
{ Составить программу для нахождения наибольшего общего делителя.
  Алгоритм Евклида }

program EuclideanAlgorithm;
var m, n: integer;
Begin
  write('Введите два числа для нахождения их наибольшего общего делителя: ');
  readln(m, n);
  while m <> n do
  begin
    if m > n then
      m := m - n
    else
      n := n - m;
  end;
  writeln('Наибольший общий делитель: ', m);
  readln;
end.