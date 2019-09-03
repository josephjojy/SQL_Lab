CREATE TABLE nstudent(rollno NUMBER,name VARCHAR(30),m1 NUMBER,m2 NUMBER,m3 NUMBER,tot_marks NUMBER);
CREATE TABLE grada(rollno NUMBER, name VARCHAR(30),tot_marks NUMBER);
CREATE TABLE gradb(rollno NUMBER, name VARCHAR(30),tot_marks NUMBER);
CREATE TABLE gradc(rollno NUMBER, name VARCHAR(30),tot_marks NUMBER);

DELARE
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
		INSERT INTO grada VALUES(rollno,name,tot_marks);
	ELSIF tot_marks>60 THEN
		INSERT INTO gradb VALUES(rollno,name,tot_marks);
	ELSE
		INSERT INTO gradc VALUES(rollno,name,tot_marks);
	END IF;
END;

