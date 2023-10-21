program z10;
const
N = 20; // Размер массива

var
arr: array[1..N] of integer;
i, j: integer;

begin
// Заполняем массив случайными числами
Randomize;
for i := 1 to N do
arr[i] := Random(101) - 50; // Числа от -50 до 50

// Выводим исходный массив
Writeln('Исходный массив:');
for i := 1 to N do
Write(arr[i], ' ');
Writeln;

// Удаляем отрицательные элементы массива
j := 1;
for i := 1 to N do
begin
if arr[i] >= 0 then
begin
arr[j] := arr[i];
Inc(j);
end;
end;

// Обнуляем оставшиеся элементы
for i := j to N do
arr[i] := 0;

// Выводим измененный массив
Writeln('Измененный массив:');
for i := 1 to N do
Write(arr[i], ' ');
Writeln;

end.