{ Задание №5 }
{ Напишите программу-игру «Крестики-нолики».
  Реализуйте игру так, чтобы компьютер играл с человеком }

program TicTacToe;

const N = 3; { Константа для размерности массива }

type arrayOfChar = array [1..N, 1..N] of char;

procedure userTurn(var A: arrayOfChar; r, o: byte);
begin
  readln(r, o);
  A[r, o] := 'X';
end;

procedure computerTurn(var r, o: byte);
begin
  r := random(1, N);
  o := random(1, N);
end;

{ Процедура вывода массива }

procedure arrayOutput(A: arrayOfChar; i, j: byte);
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
      write(A[i, j], ' ');
    writeln;
  end;
  writeln;
end;

var A: arrayOfChar;
    i, j, k, r, o, s: byte;
Begin
  writeln('Правила игры "Крестики-нолики":');
  writeln('Игровое поле 3x3, пользователь играет за крестики (X), компьютер');
  writeln('играет за нолики (O)');
  writeln;
  
  { Заполнение игрового поля }
  
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      A[i, j] := '#';
      //write(A[i, j], ' ');
    end;
    //writeln;
  end;
  //writeln;
  arrayOutput(A, i, j);
  k := random(0, 1);

  { Первый ход }

  if (k = 0) then
  begin
    writeln('Первый ход компьютера (O)');
    computerTurn(r, o);
    A[r, o] := 'O';
    writeln
  end;
  if (k = 1) then
  begin
    write('Первый ход ваш (X), введите номер строки и столбца через пробел: ');
    userTurn(A, r, o);
    writeln;
  end;
  arrayOutput(A, i, j);

  { Проверка завершенности игры }

  s := 1;
  repeat
    writeln('ХОД', ' ', s + 1);

    { Ход компьютера, генерация клетки }

    if (k = 1) then 
    begin
      writeln('Ход компьютера (O)');
      writeln;
      repeat
        r := random(1, N);
        o := random(1, N);
      until (A[r, o] = '#');
      A[r, o] := 'O';
      dec(k);
      arrayOutput(A, i, j);
    end;

    { Ход пользователя }

    if (k = 0) then
    begin
      write('Ваш ход (X), введите номер строки и столбца пустой клетки через пробел: ');
      userTurn(A, r, o);
      writeln;
      inc(k);
      arrayOutput(A, i, j);
    end;
    inc(s);
  until (s > 3);
  writeln('Игра окончена');
  readln;
end.