﻿{ Линейный алгоритм }
{ Вычисление арифметического выражения y = (a^2 + b + c) / (a^2 + b) }

program LinearAlgorithm;
var a, b, c: integer; { Объявление переменных целого типа }
    y: real; { Объявление переменной вещественного типа }
Begin { Начало программы }
  write('Введите переменные a, b и c: '); { Вывод подсказки "Введите переменные a, b, c" }
  read(a, b, c); { Считывание данных (по строке) }
  y := (a * a + b + c) / (a * a + b); { Оператор присваивания арифметического выражения }
  writeln('Ответ: ', y); { Вывод данных - переменной y с вычисленным значением }
end. { Конец программы }