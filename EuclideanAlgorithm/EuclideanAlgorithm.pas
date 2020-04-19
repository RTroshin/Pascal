{ Задание №2 }
{ Составить программу для нахождения наибольшего общего делителя.
  Алгоритм Евклида }

program EuclideanAlgorithm;

function Euclid(x, y: integer): integer;
begin
  while x <> y do
  begin
    if x > y then
      x := x - y
    else
      y := y - x;
  end;
  Euclid := x;
end;

var m, n: integer;
Begin
  write('Введите два числа для нахождения их наибольшего общего делителя: ');
  readln(m, n);
  writeln('Наибольший общий делитель: ', Euclid(m, n));
  readln;
end.