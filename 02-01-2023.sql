set serveroutput on

Function
=========

create or replace function funadd(a number,b number)
return varchar
as
c number;
begin
c:=a+b;
return 'additon='||c;
end;

select funadd (10,20) from dual

Substraction

create or replace function funsub(a number,b number)
return varchar
as
c number;
begin
c:=a-b;
return 'substraction='||c;
end;

select funsub(20,15) from dual

Multiplication

create or replace function funmul(a number,b number)
return varchar
as
c number;
begin
c:=a*b;
return 'multilication='||c;
end;

select funmul(10,5) from dual

devision

create or replace function fundev(a number,b number)
return varchar
as
c number;
begin
c:=a/b;
return 'devision='||c;
end;

select fundev(100,50) from dual

create or replace function funope(a number,b number)
return varchar
as
c number;
d number;
e number;
f number;
begin
c:=a+b;
d:=a-b;
e:=a*b;
f:=a/b;

return 'addition='||c||'substraction='||d||'multiplication='||e||'division='||f;
end;

select funope (20,10) from dual
================================================================================
TRIGEER
================================================================================
BEFORE TRIGGER
================
create table Studentop
(rn0 number,
name varchar(100))

create or replace trigger tg 
before insert on Studentop
for each row
begin
dbms_output.put_line('before trigger is called');
end;

insert into Studentop values (1,'ajay');
insert into Studentop values (2,'vijay');
insert into Studentop values (3,'sujay');
insert into Studentop values (4,'prajay');

select * from Studentop

create or replace trigger tgab
after insert on Studentop
for each row
begin
dbms_output.put_line('after insert trigger is called');
dbms_output.put_line(:new.rn0|| ' ' ||:new.name);
end;
insert into Studentop values (6,'vaibhav');
select * from Studentop

create or replace trigger tgup
after update on Studentop
for each row
begin
dbms_output.put_line(:old.rn0||' '||:old.name);
dbms_output.put_line(:new.rn0||' '||:new.name);
end;
update Studentop set name = 'shrikant' where rn0=1;

create or replace trigger tgdel
after delete on Studentop
for each row
begin
dbms_output.put_line(:old.rn0||' '||:old.name);
end;
delete from Studentop where rn0 = 2
select * from Studentop 



















