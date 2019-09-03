-- PL/SQL PROGRAM
DECLARE
	str1 VARCHAR(50):='&str';
	str2 VARCHAR(50);
	l NUMBER;
	i NUMBER;
BEGIN
	l:=LENGTH(str1);
	FOR i IN REVERSE 1..l
	LOOP
		str2:=str2 || SUBSTR(str1,i,1);
	END LOOP;
	dbms_output.put_line('Reverse:'||str2);
END;
/
