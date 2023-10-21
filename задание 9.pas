program z9;
var
arr: array[1..20] of integer;
i, posIndex, minIndex: integer;

begin
// Заполнение массива случайными числами
for i := 1 to 20 do
begin
arr[i] := Random(100) - 50; // Случайные числа от -50 до 49
end;

// Вывод исходного массива
writeln('Исходный массив:');
for i := 1 to 20 do
begin
write(arr[i], ' ');
end;

// Поиск и удаление первого положительного элемента
posIndex := 0;
for i := 1 to 20 do
begin
if arr[i] > 0 then
begin
posIndex := i;
break;
end;
end;

if posIndex > 0 then
begin
writeln;
writeln('Удаляем первый положительный элемент:', arr[posIndex]);
// Сдвиг элементов влево для удаления первого положительного элемента
for i := posIndex to 19 do
begin
  arr[i] := arr[i + 1];
end;

// Обнуление последнего элемента
arr[20] := 0;
end
else
begin
writeln;
writeln('В массиве нет положительных элементов.');
end;

// Поиск и удаление наименьшего элемента
minIndex := 1;
for i := 2 to 20 do
begin
if arr[i] < arr[minIndex] then
begin
minIndex := i;
end;
end;

writeln;
writeln('Удаляем наименьший элемент:', arr[minIndex]);

// Сдвиг элементов влево для удаления наименьшего элемента
for i := minIndex to 19 do
begin
arr[i] := arr[i + 1];
end;

// Обнуление последнего элемента
arr[20] := 0;

// Вывод измененного массива
writeln;
writeln('Измененный массив:');
for i := 1 to 19 do
begin
write(arr[i], ' ');
end;
end.





