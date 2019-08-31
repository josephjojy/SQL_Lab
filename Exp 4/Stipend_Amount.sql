DECLARE
	id student.id%type;
	name student.name%type;
	stipend student.stipend%type;
	amount number:=&num;
	CURSOR display IS
	SELECT id, name FROM student WHERE stipend<amount;
BEGIN
	OPEN display;
	LOOP
		FETCH display INTO id, name,stipend;
		EXIT WHEN display%NOTFOUND;
			dbms_output.put_line(id || ' ' || name || ' ' || stipend);
	END LOOP;
	CLOSE display;
END;	