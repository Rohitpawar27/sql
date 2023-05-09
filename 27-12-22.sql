set serveroutput on 
declare
i number;
begin
i:=10;
loop
dbms_output.put_line(i);
i:=i-1;
exit when i <1;
end loop;
end;

declare
i number;
begin
i:=1;
loop
dbms_output.put_line(i);
i:=i+2;
exit when i > 100;
end loop;
end;

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

