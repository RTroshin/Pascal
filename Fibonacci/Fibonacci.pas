{ Задание №3}
{ Создать программу для вывода чисел Фибоначчи на экран рекурсивным методом }

program Fibonacci;

function fibo(i: integer): longint;
begin
  if i = 1 then
    fibo := 1
  else
    if i = 2 then
      fibo := 1
    else
      fibo := fibo(i - 1) + fibo(i - 2);
end;

var n, i: integer;
Begin
  write('Введите число n: ');
  readln(n);
  i := 1;
  repeat
    write(fibo(i), ' ');
    inc(i);
    dec(n);
  until n < 0;
  readln;
end.