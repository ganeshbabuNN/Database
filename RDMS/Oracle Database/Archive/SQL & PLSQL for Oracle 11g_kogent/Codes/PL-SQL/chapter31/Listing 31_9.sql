declare
Xglobal number(2);
procedure sample(X in out number)is
begin
X := 10;
Xglobal:= 20;
end;
begin
Xglobal := 5;
sample(Xglobal);
dbms_output.put_line (to_char(Xglobal));
-- prints 10 if paramter is passed by value--result
-- prints 20 if parameter is passed by reference
end;
/                 