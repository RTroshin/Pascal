{ Задание №5 }
{ Напишите программу, чтобы компьютер с человеком играли в "Крестики-нолики" }

program TicTacToe;

const N = 3; { Константа для размерности массива }

var A: array [1..N, 1..N] of integer;
    i, j, k, b, r, o, s, l: byte;
Begin
  writeln('Правила игры - "Крестики-Нолики": поле 3х3, пользователь играет 2(это - x), компьютер играет 1(это - o)');

  { Вывод игрового поля }

  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      a[i, j] := 0;
      write(a[i, j], ' ');
    end;
    writeln;
  end;
  writeln;
  k := random(0, 1);
  b := 10;

  { Первый ход }

  if (k = 0) then
  begin
    writeln('Первый ход компьютера (1)');
    r := random(1, N);
    o := random(1, N);
    a[r, o] := 1;
    k := k + 10;
  end;
  if (k = 1) then
  begin
    writeln('Первый ход ваш (2), введите строку столбик через пробел');
    readln(r, o);
    a[r, o] := 2;
    k := k + 10;
  end;

  { Вывод массива }

  for i := 1 to N do
  begin
    for j := 1 to N do
      write(a[i, j], ' ');
    writeln;
  end;
  writeln;

  { Проверка завершенности игры }

  for s := 1 to 3 do
  begin
    writeln('ХОД', ' ', s + 1);

    { Ход компьютера, генерация клетки }

    if (b < k) and (l <> 20) then
    begin
      writeln('Ход компьютера (1)');
      repeat
        r := random(1, N);
        o := random(1, N);
      until (a[r, o] = 0);
      a[r, o] := 1;
      b := b + 1;

      { Вывод массива }

      for i := 1 to N do
      begin
        for j := 1 to N do
          write(a[i, j], ' ');
        writeln;
      end;
      writeln;
    end;

    { Ход пользователя }

    if (k = b) and (l <> 20) then
    begin
      writeln('Ваш ход (2), введите строку столбик пустой клетки через пробел');
      readln(r, o);
      a[r, o] := 2;
      k := k + 1;

      { Вывод массива ИЗМЕНИТЬ }

      for i := 1 to N do
        for j := 1 to N do
        begin
          if (j < N) then
            write(a[i, j], ' ')
          else
            writeln(a[i, j], ' ');
        end;
    end;
  end;
  writeln('Игра окончена');
  readln;
end.