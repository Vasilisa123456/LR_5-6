program z4;
var
A, B: array[1..30] of integer;
i, j: integer;

begin
randomize;

// заполняем массив А
for i := 1 to 30 do
A[i] := random(167) - 99;

j := 0;

// формируем массив B
for i := 1 to 30 do
begin
if A[i] mod 2 = 0 then
begin
j := j + 1;
B[j] := A[i];
end;
end;

// выводим массив B
writeln('Массив B: ');
for i := 1 to j do
write(B[i], ' ');

end.