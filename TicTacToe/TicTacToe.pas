{ Задание №5 }
{ Напишите программу, чтобы компьютер с человеком играли в "Крестики-нолики" }

program TicTacToe;

const N = 3; { Константа для размерности массива }

var A: array [1..N, 1..N] of char;
    i, j, k, b, r, o, s: byte;
Begin
  writeln('Правила игры "Крестики-нолики":');
  writeln('Игровое поле 3x3, пользователь играет за крестики (X), компьютер играет за нолики (O)');
  writeln;
  
  { Вывод игрового поля }

  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      a[i, j] := '#';
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
    writeln('Первый ход компьютера (O)');
    r := random(1, N);
    o := random(1, N);
    a[r, o] := 'O';
    k := k + 10;
    writeln    
  end;
  if (k = 1) then
  begin
    write('Первый ход ваш (X), введите номер строки и столбца через пробел: ');
    readln(r, o);
    a[r, o] := 'X';
    k := k + 10;
    writeln;    
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

    if (b < k) then
    begin
      writeln('Ход компьютера (O)');
      writeln;
      repeat
        r := random(1, N);
        o := random(1, N);
      until (a[r, o] = '#');
      a[r, o] := 'O';
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

    if (k = b) then
    begin
      write('Ваш ход (X), введите строку столбик пустой клетки через пробел: ');
      readln(r, o);
      writeln;
      a[r, o] := 'X';
      k := k + 1;

      { Вывод массива }

      for i := 1 to N do
      begin
        for j := 1 to N do
          write(a[i, j], ' ');
        writeln;
      end;
      writeln;
    end;
  end;
  writeln('Игра окончена');
  readln;
end.