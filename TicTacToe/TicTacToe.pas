{ Задание №5 }
{ Напишите программу-игру «Крестики-нолики».
  Реализовать игру так, чтобы компьютер играл с человеком
  Дополнить условие, которое должно определять ход событий
  предыдущего игрока, а также выводит сообщение о выигравшем
  ходе, например, "Игра окончена! Вы выиграли!" }

program TicTacToe;

const N = 3; { Константа для размерности массива }

type arrayOfChar = array [1..N, 1..N] of char;

procedure userTurn(var A: arrayOfChar; userChoice: char; r, o: byte);
begin
  readln(r, o);
  if (r < 1) or (r > 3) then
  while (r < 1) or (r > 3) do
  begin
    writeln;
    writeln('Числа должны быть в диапазоне от 1 до 3!');
    writeln('Пример: "1 3" или "3 1"');
    write('Введите номер строки и столбца через пробел: ');
    readln(r, o);
  end;
  if (o < 1) or (o > 3) then // Попадая в этот цикл, я снова могу ввести любое r. Исправить!
  while (o < 1) or (o > 3) do
  begin
    writeln;
    writeln('Числа должны быть в диапазоне от 1 до 3!');
    writeln('Пример: "1 3" или "3 1"');
    write('Введите номер строки и столбца через пробел: ');
    readln(r, o);
  end;
  // Придумать другой подход
  //if (r < 1) or (o < 1) then
  //while (r < 1) or (o < 1) do
  //begin
  //  writeln;
  //  writeln('Числа должны быть в диапазоне от 1 до 3!');
  //  writeln('Пример: "1 3" или "3 1"');
  //  write('Введите номер строки и столбца через пробел: ');
  //  readln(r, o);
  //end;
  while (A[r, o] <> '#') do
  begin
    writeln;
    writeln('Клетка занята! Попробуйте ещё раз');
    write('Введите номер строки и столбца через пробел: ');
    readln(r, o);
  end;
  if (userChoice = 'X') then
    A[r, o] := 'X'
  else
    A[r, o] := 'O';
end;

procedure computerTurn(var A: arrayOfChar; userChoice: char; r, o: byte);
begin
  repeat
    r := random(1, N);
    o := random(1, N);
  until (A[r, o] = '#');
  if (userChoice = 'X') then
    A[r, o] := 'O'
  else
    A[r, o] := 'X';
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
    i, j, k, uC, r, o, step, count: byte;
    userChoice: char;
    win: boolean;
Begin
  writeln('Правила игры "Крестики-нолики":');
  writeln('Игроки по очереди ставят на свободные клетки поля 3x3 знаки (один всегда крестики, другой всегда нолики)');
  writeln('Первый, выстроивший в ряд 3 своих фигуры по вертикали, горизонтали или диагонали, выигрывает');
  writeln('Первый ход делает игрок, ставящий крестики');
  writeln;
  write('За кого будете играть? Введите X или O: ');
  readln(userChoice);  
  writeln;
  if (userChoice <> 'X') and (userChoice <> 'O') then
  repeat
    write('Введите X или O: ');
    readln(userChoice);
    writeln;
  until (userChoice = 'X') or (userChoice = 'O');
  if (userChoice = 'X') then // Переделать
    uC := 1
  else
    uC := 0;

  { Заполнение игрового поля }

  for i := 1 to N do
    for j := 1 to N do
      A[i, j] := '#';
  arrayOutput(A, i, j);

  { Проверка завершенности игры }

  step := 0; // Неправильно считает ходы, исправить
  win := false;
  repeat
    writeln('ХОД', ' ', step + 1);

    { Ход пользователя }

    if (uc = 1) then
    begin
      if (step = 0) then
        writeln('Первый ход ваш')
      else
        writeln('Ваш ход');
      write('Введите номер строки и столбца пустой клетки через пробел: ');
      userTurn(A, userChoice, r, o);
      writeln;
      arrayOutput(A, i, j);
      dec(uC);
    end

    { Ход компьютера, генерация клетки }

    else
    begin
      if (step = 0) then
        writeln('Первый ход компьютера')
      else
        writeln('Ход компьютера');
      writeln;
      computerTurn(A, userChoice, r, o);
      arrayOutput(A, i, j);
      inc(uC);
    end;
    inc(step);
  
  // Проверяем элементы на главной диагонали

    count := 0;
    for i := 1 to N do
      if (A[i, i] = 'X') then
        inc(count);
    if (count = 3) then
    begin
      writeln('Игра окончена!');
      writeln('Победитель - X');
      win := true;  
    end;

    count := 0;
    for i := 1 to N do
      if (A[i, i] = 'O') then
        inc(count);
    if (count = 3) then
    begin
      writeln('Игра окончена!');
      writeln('Победитель - O');
      win := true;  
    end;

  // Проверяем элементы на побочной диагонали

    count := 0;
    for i := 1 to N do
      if (A[i, N + 1 - i] = 'X') then
        inc(count);
    if (count = 3) then
    begin
      writeln('Игра окончена!');
      writeln('Победитель - X');
      win := true;  
    end;

    count := 0;
    for i := 1 to N do
      if (A[i, N + 1 - i] = 'O') then
        inc(count);
    if (count = 3) then
    begin
      writeln('Игра окончена!');
      writeln('Победитель - O');
      win := true;  
    end;

  // Проверяем элементы в строках

    count := 0;
    for i := 1 to N do
    begin
      for j := 1 to N do
        if (A[i, j] = 'X') then
          inc(count);
      if count < 3 then
        count := 0;
    end;
    if (count = 3) then
    begin
      writeln('Игра окончена!');
      writeln('Победитель - X');
      win := true;  
    end;

    count := 0;
    for i := 1 to N do
    begin
      for j := 1 to N do
        if (A[i, j] = 'O') then
          inc(count);
      if count < 3 then
        count := 0;
    end;
    if (count = 3) then
    begin
      writeln('Игра окончена!');
      writeln('Победитель - O');
      win := true;  
    end;

  until win = true;
  readln;
end.