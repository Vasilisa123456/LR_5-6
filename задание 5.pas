program z5;
var
  array1, array2: array [1..10] of Integer;
  sum1, sum2: Integer;
  i: Integer;

begin
  // Инициализация массивов
  for i := 1 to 10 do
  begin
    array1[i] := Random(20) - 10; // Заполняем массив1 случайными значениями от -10 до 10
    array2[i] := Random(20) - 10; // Заполняем массив2 случайными значениями от -10 до 10
  end;

  // Вычисление суммы положительных элементов в массиве1
  sum1 := 0;
  for i := 1 to 10 do
  begin
    if array1[i] > 0 then
      sum1 := sum1 + array1[i];
  end;

  // Вычисление суммы положительных элементов в массиве2
  sum2 := 0;
  for i := 1 to 10 do
  begin
    if array2[i] > 0 then
      sum2 := sum2 + array2[i];
  end;

  // Умножение на 10 элементов массива с меньшей суммой
  if sum1 < sum2 then
  begin
    for i := 1 to 10 do
      array1[i] := array1[i] * 10;
  end
  else
  begin
    for i := 1 to 10 do
      array2[i] := array2[i] * 10;
  end;

  // Печать обоих массивов
  writeln('Array1:');
  for i := 1 to 10 do
    writeln(array1[i]);
  
  writeln('Array2:');
  for i := 1 to 10 do
    writeln(array2[i]);
end.