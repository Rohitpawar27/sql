set serveroutput on

create or replace procedure spdemo
as
begin
dbms_output.put_line('stored procedure called');
end;
execute spdemo

create or replace procedure rp
as
begin
dbms_output.put_line('stored procedure called');
end;
execute rp

--------------------------------------------------------
--------------------------------------------------------


create or replace procedure rpadd(a number, b number)
as
c number;
begin
c:=a+b;
dbms_output.put_line('addition ='||c);
end;
execute rpadd (10,5)
execute rpadd (15,5)
execute rpadd (15,15)

create or replace procedure rpmulti(a number, b number)
as
c number;
begin
c:=a*b;
dbms_output.put_line('multiplication ='||c);
end;

execute rpmulti(10,5)
==========================================================================

create or replace procedure rpdev(a number, b number)
as
c number;
begin
c:=a/b;
dbms_output.put_line('devision ='||c);
end;

execute rpdev(100,5)
======================================================================

create or replace procedure rpsub(a number, b number)
as
c number;
begin
c:=a-b;
dbms_output.put_line('substraction ='||c);
end;

execute rpsub(100,90)
======================================================================

create or replace procedure rpadd(a number, b number)
as
c number;
d number;
e number;
begin
c:=a+b;
d:=a*b;
e:=a-b;
dbms_output.put_line('addition ='||c);
dbms_output.put_line('multiplication ='||d);
dbms_output.put_line('substraction ='||e);
end;

execute rpadd (100,20)
=================================================================
create or replace procedure rpadd(a number, b number)
as
c number;
d number;
e number;
begin
c:=a+b;
d:=a*b;
e:=a-b;
dbms_output.put_line('addition ='||c);
dbms_output.put_line('multiplication ='||d);
dbms_output.put_line('substraction ='||e);
if (a>b) then
begin
dbms_output.put_line('a is greater');
end;
else
begin
dbms_output.put_line('b is greater');
end;
else
if (a=b) then
begin
dbms_output.put_line('both are equal');
end;
end if;
end if;
end;
===================================================

create table student
(rno number,
name varchar (100))

create or replace procedure rpstudent (r number, n varchar)
as
begin
insert into student (rno,name) values (r,n);
end;

execute rpstudent (1,'pandu')
select * from student
================================================================================
create or replace procedure prstudent (r number, n varchar)
as
begin
update student set name=n where rno=r;
end;

execute prstudent (1,'pandu')
select * from student
================================================================================
create or replace procedure spstudent (r number, n varchar)
as
begin
delete from student where rno=r;
end;
execute spstudent(1,'pandu')
================================================================================
create table students
(rno number,
name varchar(50))

create or replace procedure xystudents (type varchar, r number, n varchar )
as
begin 
if type='insert' then
insert into students(rno,name) values (r,n);
end if;
if type='update' then
update students set name=n where rno=r;
end if;
if type= 'delete' then
delete from students where rno=r;
end if;
end;

execute xystudents ('insert',1,'ajay');
execute xystudents ('insert',2,'sujay');
execute xystudents ('update',2,'vijay');
execute xystudents ('delete',1,'vijay');

select * from students

