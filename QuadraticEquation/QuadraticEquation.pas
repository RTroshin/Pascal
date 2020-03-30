{ Задание на работу с ветвлением }
{ Вычисление квадратного уравнения ax^2 + bx + c = 0 }

program QuadraticEquation;
var a, b, c: integer;
    D, x, x1, x2: real;
Begin
  write('Введите коэффициенты a, b и c квадратного уравнения ax^2 + bx + c: '); { Вывод строки с подсказкой }
  readln(a, b, c); { Считывание данных }
  D := b * b - 4 * a * c;
  if (D < 0) then
  begin
    write('Нет решений!');
    readln;
  end
  else
  if (D = 0) then
  begin
    x := -b div (2 * a);
    write('Корень квадратного уравнения: x = ', x);
    readln;
  end;
  if (D > 0) then
  begin
    x1 := (-b + sqrt(D)) / (2 * a);
    x2 := (-b - sqrt(D)) / (2 * a);
    write('Корни квадратного уравнения: x1 = ', x1, ' x2 = ', x2);
    readln;
  end;
end.
