INSERT INTO DEPARTMENT VALUES(10,'IT','New York');
INSERT INTO DEPARTMENT VALUES(20,'CS','Dallas');
INSERT INTO DEPARTMENT VALUES(30,'ECE','Chicago');
INSERT INTO DEPARTMENT VALUES(40,'ME','Boston');
INSERT INTO STUDENT VALUES(1,'Smith','Smith@abc.com',9874747474,'17-dec-80',160.2,10,10000);
INSERT INTO STUDENT VALUES(2,'Allen','Allen@abc.com',9874747475,'20-feb-81',161.2,20,10200);
INSERT INTO STUDENT VALUES(3,'Ward','Ward@abc.com',9874747476,'22-feb-81',162.2,30,10400);
INSERT INTO STUDENT VALUES(4,'Jones','Jones@abc.com',9874747477,'02-apr-81',163.2,20,10600);
INSERT INTO STUDENT VALUES(5,'Martin','Martin@abc.com',9874747478,'28-sep-81',164.2,20,10800);
INSERT INTO STUDENT VALUES(6,'Blake','Smith@abc.com',9874747479,'01-may-81',165.2,30,11000);
INSERT INTO STUDENT VALUES(7,'Clark','Allen@abc.com',9874747480,'09-jun-81',166.2,10,11200);
INSERT INTO STUDENT VALUES(8,'Scott','Ward@abc.com',9874747481,'09-dec-82',167.2,20,11400);
INSERT INTO STUDENT VALUES(9,'King','Jones@abc.com',9874747482,'17-nov-81',168.2,10,11600);
INSERT INTO STUDENT VALUES(10,'Turner','Martin@abc.com',9874747483,'08-sep-81',163.2,30,11800);
INSERT INTO STUDENT VALUES(11,'Adam','Adam@abc.com',9874747484,'12-jan-83',164.2,20,12000);
INSERT INTO STUDENT VALUES(12,'James','James@abc.com',9874747485,'03-dec-81',165.2,30,12200);
INSERT INTO STUDENT VALUES(13,'Ford','Ford@abc.com',9874747486,'03-dec-81',166.2,20,12400);
INSERT INTO STUDENT VALUES(14,'Miller','Miller@abc.com',9874747487,'23-jan-82',173.2,10,12600);
-- CANCEL THE MAIL ID OF ALL IT STUDENTS
UPDATE STUDENT SET EMAIL = null WHERE DEPTNO =(SELECT DEPTNO FROM DEPARTMENT WHERE DNAME='IT');
-- MODIFY THE MAIL ID, PHONE NO AND DOB OF JONES
UPDATE STUDENT SET EMAIL='Jones1@abc.com', PHONENO=9874758690, DOB='01-apr-1982' WHERE NAME='Jones';
SELECT ID,NAME FROM STUDENT WHERE DEPTNO=(SELECT DEPTNO FROM DEPARTMENT WHERE DNAME='IT');
SELECT * FROM STUDENT WHERE (DEPTNO=30 OR DEPTNO=10);
SELECT UNIQUE HEIGHT_IN_CM FROM STUDENT;
SELECT NAME FROM STUDENT WHERE NAME LIKE 'Sm%';
SELECT NAME,STIPEND,(STIPEND*1.10) AS UPDATED_STIPEND FROM STUDENT; 
SELECT NAME,EMAIL,PHONENO FROM STUDENT WHERE DOB BETWEEN '20-feb-81' AND '01-may-81' ORDER BY DOB;
SELECT MAX(STIPEND),AVG(STIPEND),COUNT(NAME) FROM STUDENT WHERE DEPTNO=30; 
SELECT COUNT(NAME) FROM STUDENT WHERE DEPTNO=(SELECT DEPTNO FROM DEPARTMENT WHERE DNAME='CS');
SELECT DNAME FROM DEPARTMENT WHERE DEPTNO IN(SELECT DEPTNO FROM (SELECT DEPTNO,CNT FROM(SELECT DEPTNO,COUNT(DEPTNO)AS CNT FROM STUDENT WHERE HEIGHT_IN_CM<165 GROUP BY DEPTNO)WHERE CNT=1));
SELECT * FROM(SELECT DEPTNO,COUNT(DEPTNO) AS COUNT1 FROM STUDENT GROUP BY DEPTNO ORDER BY COUNT(DEPTNO) DESC)WHERE ROWNUM=1;
SELECT DEPTNO,COUNT(NAME) FROM STUDENT GROUP BY DEPTNO;
SELECT DEPTNO,MIN(STIPEND) FROM STUDENT GROUP BY DEPTNO ORDER BY MIN(STIPEND) DESC;
SELECT * FROM (SELECT DEPTNO,AVG(STIPEND) AS AG FROM STUDENT GROUP BY DEPTNO ORDER BY AVG(STIPEND)) WHERE ROWNUM=1;
SELECT DEPTNO,MIN(STIPEND),MAX(STIPEND),AVG(STIPEND) FROM STUDENT GROUP BY DEPTNO;
SELECT NAME FROM STUDENT WHERE (DEPTNO=10 AND STIPEND>=(SELECT MAX(STIPEND) FROM STUDENT WHERE DEPTNO=30));
SELECT DNAME FROM DEPARTMENT WHERE DEPTNO NOT IN(SELECT DEPTNO FROM STUDENT);
