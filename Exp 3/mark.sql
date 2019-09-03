create table nstudent(rollno number,name varchar(30),m1 number,m2 number,m3 number,tot_marks number);
create table grada(rollno number, name varchar(30),tot_marks number);
create table gradb(rollno number, name varchar(30),tot_marks number);
create table gradc(rollno number, name varchar(30),tot_marks number);

declare
rollno number:=&rollno;
name varchar(30):='&name';
m1 number:=&m1;
m2 number:=&m2;
m3 number:=&m3;
tot_marks number;
begin
tot_marks:=(m1+m2+m3)/3;
insert into nstudent values(rollno,name,m1,m2,m3,tot_marks);
IF tot_marks>75 THEN
insert into grada values(rollno,name,tot_marks);
ELSIF tot_marks>60 THEN
insert into gradb values(rollno,name,tot_marks);
ELSE
insert into gradc values(rollno,name,tot_marks);
END IF;
end;
/
select * from grada;
select * from gradb;
select * from gradc;
