DECLARE
	id student.id%type;
	name student.name%type;
	CURSOR display IS
	SELECT id, name FROM student;
BEGIN
	OPEN display;
	LOOP
		FETCH display INTO id, name;
		EXIT WHEN display%NOTFOUND;
			dbms_output.put_line(id || ' ' || name);
	END LOOP;
	CLOSE display;
END;	