DECLARE
    num number;
    armstrong number:=0;
    rev number;
    copy number;
 
BEGIN
    num:=&num;
	copy:=num;
    WHILE num>0
    LOOP
        rev:=MOD(num,10);
        armstrong:=armstrong+POWER(rev,3);
        num:=TRUNC(num/10);
    END LOOP;
    
    IF copy=armstrong THEN
        dbms_output.put_line('Armstrong number');
    ELSE
        dbms_output.put_line('NOT Armstrong number');
    END IF;
END;
/