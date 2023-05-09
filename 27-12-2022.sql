set serveroutput on

declare
i number;
begin
i:=2;
while (i<=20)
loop
dbms_output.put_line(i);
i:=i+2;
end loop;
end;

declare 
i number;
begin
for i in reverse 1..10
loop
dbms_output.put_line(i);
end loop;
end;

declare
a number :=10;
b number :=20;
c number;
begin
c:=a+b;
dbms_output.put_line('addition='||c);
end;

declare
a number :=10;
b number :=20;
c number;
begin
c:=a*b;
dbms_output.put_line('multi='||c);
end;

declare
a number :=10;
b number :=20;
c number;
begin
c:=a-b;
dbms_output.put_line('subs='||c);
end;

declare
a number :=10;
b number :=20;
c number;
begin
c:=a/b;
dbms_output.put_line('devide='||c);
end;

declare
a number :=&num1;
b number :=&num2;
c number;
begin
c:=a-b;
dbms_output.put_line('addition='||c);
end;

declare
a number:=&num1;
b number:=&num2;

begin
if (a>b)then
begin
dbms_output.put_line ('a is greater');
end;
else
begin
dbms_output.put_line ('b is greater');
end;
end if;
end;
