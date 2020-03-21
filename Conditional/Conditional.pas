﻿{ Алгоритм ветвления. Условный оператор }

program Conditional;
var a, b, c, x: integer; { Объявление переменных целого типа }
    y: real; { Объявление переменной вещественного типа }
Begin { Начало программы }
  write('Введите переменные a, b и c: '); { Вывод подсказки "Введите переменные a, b, c" }
  readln(a, b, c); { Считывание данных (по строке) }
  x := a * a + b - c;
  if (x = 0) then { Условный оператор: если знаменатель равен нулю, то... }
  begin
    write('Ошибка! Деление на ноль! '); { Вывод строки с сообщением ошибки }
    readln;
    exit; { Выход из программы }
  end
  else { Иначе (оператор альтернативного условия): выполнять подсчет выражения }
  begin
    y := (a * a + b + 4) / (a * a + b - c);  { Оператор присваивания арифметического выражения }
  end;
  write('Ответ: ', y); { Вывод данных - переменной y с вычисленным значением }
  readln;
end. { Конец программы }