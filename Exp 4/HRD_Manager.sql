-- CREATING EMPLOYEE TABLE
CREATE TABLE employee(name varchar(6), empno NUMBER(5) PRIMARY KEY, salary NUMBER(5), deptno NUMBER(5));

-- CREATING EMP_RAISE TABLE
CREATE TABLE emp_raise(emp_no NUMBER(5) PRIMARY KEY, raise_date DATE, raise_amt NUMBER(5));

-- INSERT VALUES INTO EMPLOYEE TABLE
INSERT INTO employee VALUES('Joseph',100,10000,1); 
INSERT INTO employee VALUES('Vishnu',101,25000,1); 
INSERT INTO employee VALUES('Vaneesa',102,12500,2); 
INSERT INTO employee VALUES('Clinton',103,18400,1); 
INSERT INTO employee VALUES('Thejus',104,16430,2);

-- PL/SQL PROGRAM
DECLARE
	input NUMBER(3) := &deptno;
	empno employee.empno%type;
	salary employee.salary%type;
	calc_sal number(5):= 0;
	CURSOR raise IS
	SELECT empno, salary FROM employee WHERE deptno=input;
BEGIN
	OPEN raise;
	LOOP
		FETCH raise INTO empno, salary;
		EXIT WHEN raise%notfound;
			calc_sal := salary*0.005;
			INSERT INTO emp_raise VALUES(empno,'03-SEP-19',calc_sal);
	END LOOP;
END;                                                                                       
                                                                                       
