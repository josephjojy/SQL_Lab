-- PL/SQL PROGRAM
DECLARE
a NUMBER;
n NUMBER;
s NUMBER := 0;
r NUMBER;
BEGIN
	a:= &a;
	n:=a;
	WHILE n>0 LOOP
		r:=MOD(n,10);
		s:=(s*10)+r;
		n:=TRUNC(n/10);
	END LOOP;
	IF a=s THEN
		dbms_output.put_line('Number is a palindrome');
	ELSE
		dbms_output.put_line('Number is not a palindrome');
	END IF;
END;
/
