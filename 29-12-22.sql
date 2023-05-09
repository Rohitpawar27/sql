set serveroutput on

declare
emp hr.employees.employee_id%type :=&emp;
fn hr.employees.first_name%type;
sal hr.employees.salary%type;
hd hr.employees.hire_date%type;
begin
select first_name,salary,hire_date into fn,sal,hd from hr.employees where employee_id=&emp;
dbms_output.put_line ('first_name='||fn||'salary='||sal||'hire_date='||hd);
end;

declare
dep hr.departments.department_id%type :=&dep;
e hr.departments %rowtype;
begin
select * into d from hr.departments where department_id =&dep;
dbms_output.put_line(d.department_name);
dbms_output.put_line(d.job_id);
dbms_output.put_line(d.location);
end;


declare
emp hr.employees.employee_id%type :=&emp;
e hr.employees % rowtype;
begin
select * into e from hr.employees where employee_id =&emp;
dbms_output.put_line(e.first_name);
dbms_output.put_line(e.salary);
dbms_output.put_line(e.hire_date);
end;

declare
cursor empcursor is select employee_id, first_name from hr.employees;
eid number;
fn varchar(100);
begin
open empcursor;
loop
fetch empcursor into eid,fn;
dbms_output.put_line('Employee_ID='||eid||'First_Name='||fn);
exit when empcursor%notfound;
end loop;
end;

declare
cursor empcursor is select employee_id,first_name from hr.employees;
type emptype is record
(eid number;
 fn varchar (100));
 e emp;
 begin
 open empcursor;
 loop
 fetch empcursor into e;
 dbms-output.put_line(e.eid);
 dbms-output.put_line(e.fn);
 exit when empcursor%notfound;
 end loop;
 end;


