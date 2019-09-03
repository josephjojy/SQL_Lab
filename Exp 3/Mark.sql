-- CREATION OF REQUIRED TABLES
CREATE TABLE student(rollno NUMBER,name VARCHAR(30),m1 NUMBER,m2 NUMBER,m3 NUMBER,tot_marks NUMBER);
CREATE TABLE gradeA(rollno NUMBER, name VARCHAR(30),tot_marks NUMBER);
CREATE TABLE gradeB(rollno NUMBER, name VARCHAR(30),tot_marks NUMBER);
CREATE TABLE gradeC(rollno NUMBER, name VARCHAR(30),tot_marks NUMBER);

-- PL/SQL PROGRAM
DECLARE
	rollno NUMBER:=&rollno;
	name VARCHAR(30):='&name';
	m1 NUMBER:=&m1;
	m2 NUMBER:=&m2;
	m3 NUMBER:=&m3;
	tot_marks NUMBER;
BEGIN
	tot_marks:=(m1+m2+m3)/3;
	INSERT INTO nstudent VALUES(rollno,name,m1,m2,m3,tot_marks);
	IF tot_marks>75 THEN
		INSERT INTO gradeA VALUES(rollno,name,tot_marks);
	ELSIF tot_marks>60 THEN
		INSERT INTO gradeB VALUES(rollno,name,tot_marks);
	ELSE
		INSERT INTO gradeC VALUES(rollno,name,tot_marks);
	END IF;
END;
