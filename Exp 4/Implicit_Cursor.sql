BEGIN
	FOR i IN (SELECT * FROM student) LOOP
		dbms_output.put_line(i.id || ' ' || i.name);
	END LOOP;
END;