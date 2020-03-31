{ Генератор случайных чисел. Функция random }

program FunctionRandom;

const k = 10;

var i, n: integer;
    m: real;
Begin
  randomize;
  for i := 1 to k do
  begin
    n := random(10);
    write(n, ' ');
  end;
  writeln;
  for i := 1 to k do
  begin
    n := random(100);
    write(n, ' ');
  end;
  writeln;
  for i := 1 to k do
  begin
    n := random(200) - 100;
    write(n, ' ');
  end;
  writeln;
  for i := 1 to k do
  begin
    m := random(10) / 2;
    write(m, ' ');
  end;
  writeln;
  for i := 1 to k do
  begin
    m := random(100) / 2;
    write(m, ' ');
  end;
  writeln;
  for i := 1 to k do
  begin
    m := (random(200) - 100) / 2;
    write(m, ' ');
  end;
  readln;
end.
