{ Задание №3 }
{ Составить программу (комбинаторная задача) для определения числа сочетаний }

program Combination;
var n, k, i, nfact, kfact, nkfact: integer;
    C: real; 
Begin
  write('Введите n и k: ');
  readln(n, k);
  
  if (n = 0) then
  begin
    write(n);
    readln;
    exit;
  end;
  
  if (k = 0) then
  begin
    write(k);
    readln;
    exit;
  end;
  
  nfact := 1;
  for i := 1 to n do
  begin
    nfact := nfact * i;
  end;
  
  kfact := 1;
  for i := 1 to k do
  begin
    kfact := kfact * i;
  end;
  
  nkfact := 1;
  for i := 1 to n - k  do
  begin
    nkfact :=  nkfact * i;
  end;
  
  C := nfact / (kfact * nkfact);
  writeln('n! = ', nfact);
  writeln('k! = ', kfact);
  writeln('(n - k)! = ', nkfact);
  writeln('C = ', C);
  readln;
end.