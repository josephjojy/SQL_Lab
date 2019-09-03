-- CREATION OF REQUIRED TABLE
CREATE TABLE AREAS(radius NUMBER(2), area NUMBER(14,2));

-- PL/SQL PROGRAM
DECLARE
	radius NUMBER(5);
	area NUMBER(14,2);
	pi_const NUMBER(4,2):=3.14;
BEGIN
	radius:=3;
	WHILE radius<=7 LOOP
		area:=pi_const*POWER(radius,2);
		INSERT INTO areas VALUES(radius,area);
		radius:=radius+1;
	END LOOP; 
END;