{ Задание №3}
{ Создать программу для вывода чисел Фибоначчи на экран рекурсивным методом }

program Fibonacci;

function Fibo(i: integer): longint;
begin
  if i = 1 then
    Fibo := 1
  else
    if i = 2 then
      Fibo := 1
    else
      Fibo := Fibo(i - 1) + Fibo(i - 2);
end;

var n, i: integer;
Begin
  write('Введите число n: ');
  readln(n);
  i := 1;
  repeat
    write(Fibo(i), ' ');
    inc(i);
    dec(n);
  until n < 0;
  readln;
end.