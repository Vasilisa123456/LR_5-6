program z3;
uses crt;
const
size = 20;
var
arr: array[1..size] of integer;
i, maxElem, maxIndex, minPosElem, minPosIndex, multipleOfFiveIndex: integer;
begin
randomize;

// Заполняем массив случайными числами из заданного диапазона
for i := 1 to size do
begin
arr[i] := random(118) - 52;
writeln('Element ', i, ': ', arr[i]);
end;

// Находим наибольший элемент массива и его индекс
maxElem := arr[1];
maxIndex := 1;
for i := 2 to size do
begin
if arr[i] > maxElem then
begin
maxElem := arr[i];
maxIndex := i;
end;
end;
writeln('Max element: ', maxElem);
writeln('Max element index: ', maxIndex);

// Находим наименьший положительный элемент массива и его индекс
minPosElem := 65;  // Предполагаем, что максимальное значение элемента не превышает 65
minPosIndex := -1; // Индекс -1 означает, что положительный элемент еще не найден
for i := 1 to size do
begin
if (arr[i] > 0) and (arr[i] < minPosElem) then
begin
minPosElem := arr[i];
minPosIndex := i;
end;
end;
writeln('Min positive element: ', minPosElem);
writeln('Min positive element index: ', minPosIndex);

// Находим индекс последнего элемента массива, кратного 5
multipleOfFiveIndex := -1; // Индекс -1 означает, что такой элемент не найден
for i := size downto 1 do
begin
if arr[i] mod 5 = 0 then
begin
multipleOfFiveIndex := i;
break; // Прерываем цикл, как только находим первый элемент, кратный 5
end;
end;
writeln('Index of last element multiple of 5: ', multipleOfFiveIndex);

readln;
end.