-- CREATING TABLE FOR BANK DETAILS --
CREATE TABLE bankDetails(accno NUMBER(10) PRIMARY KEY, amt NUMBER(8)); 

-- INSERT SOME VALUES INTO THE TABLE --
INSERT INTO bankDetails VALUES(1001, 1200);
INSERT INTO bankDetails VALUES(1002, 2400);
INSERT INTO bankDetails VALUES(1003, 3600);
INSERT INTO bankDetails VALUES(1004, 4800);
INSERT INTO bankDetails VALUES(1005, 6000);

-- CREATING PROCEDURE --
CREATE OR REPLACE PROCEDURE updateBalance (acc_no IN NUMBER,balance IN NUMBER) IS
   lowBal  EXCEPTION;
BEGIN
	IF balance < 1000 THEN
		RAISE lowBal;
 	ELSE
		UPDATE bankDetails SET amt=balance WHERE accno=acc_no;
	END IF;
EXCEPTION 
   WHEN lowBal THEN 
      dbms_output.put_line('Low Balance!'); 
END;

-- PL/SQL PROGRAM --
DECLARE 
   accN bankDetails.accno%type:= &accN; 
   balance NUMBER(8) ;
   currentAmt NUMBER(8); 
   withdrawalAmt NUMBER(8) := &withdrawal_amount; 
BEGIN 
   SELECT amt INTO currentAmt FROM bankDetails WHERE accno=accN;  
   balance := currentAmt - withdrawalAmt;
   updateBalance(accN,balance);
END; 
/