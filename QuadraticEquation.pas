{ Задание на работу с ветвлением }
{ Вычисление квадратного уравнения ax^2 + bx + c = 0 }

program QuadraticEquation;
var a, b, c: integer;
    D, x, x1, x2: real;
Begin
  write('Введите коэффициенты a, b и c квадратного уравнения ax^2 + bx + c: '); { Вывод строки с подсказкой }
  read(a, b, c); { Считывание данных }
  D := b * b - 4 * a * c;
  if (D < 0) then
    writeln('Нет решений!')
  else
  if (D = 0) then
  begin
    x := -b div (2 * a);
    writeln('Корень квадратного уравнения: x = ', x);
  end;
  if (D > 0) then
  begin
    x1 := (-b + sqrt(D)) / (2 * a);
    x2 := (-b - sqrt(D)) / (2 * a);
    writeln('Корни квадратного уравнения: x1 = ', x1, ' x2 = ', x2);
  end;
end.