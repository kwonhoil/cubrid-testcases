--+ server-message on
-- Verified for CBRD-24967
-- Implicit type conversion to Integer of lower bound, upper bound and step values of FOR loops

CREATE OR REPLACE procedure poo AS 
	j int := 0;
BEGIN  
	FOR i IN '0' .. '10' by '5' LOOP  
		dbms_output.put_line('test for loop ' || i);
	END LOOP;
	
	while j <= '10' LOOP  
		dbms_output.put_line('test while loop ' || j);
		j := j + 5;
	END LOOP;
END;

CREATE OR REPLACE procedure loop_with_varchar AS 
	j int := 0;
	start_val varchar(10) := '0';
	end_val  varchar(10) := '10';
	step_val  varchar(10) := '5';
BEGIN  
	FOR i IN start_val .. end_val by step_val LOOP  
		dbms_output.put_line('for with varchar ' || i);
	END LOOP;
 
	while j <= end_val LOOP  
		dbms_output.put_line('while with varchar ' || j);
		j := j + 5;
	END LOOP;
END;

CREATE OR REPLACE procedure loop_with_int_val AS 
	j int := 0;
	start_val int := 0;
	end_val  int := 10;
	step_val  int := 5;
BEGIN  
	FOR i IN start_val .. end_val by step_val LOOP  
		dbms_output.put_line('for with int ' || i);
	END LOOP;
 
	while j <= end_val LOOP  
		dbms_output.put_line('while with int ' || j);
		j := j + 5;
	END LOOP;
END;

CREATE OR REPLACE procedure loop_with_smallint_val1 AS
	j smallint := 0;
	start_val smallint := 32764;
	end_val int := 32780;
	step_val smallint := 10;
BEGIN
	FOR i IN start_val .. end_val by step_val LOOP
		dbms_output.put_line('for with smallint(auto cast to int) ' || i);
	END LOOP;
END;

/*
-- can not detect the overflow on plcsql
-- this bug will be fixed CBRD-25373
CREATE OR REPLACE procedure loop_with_smallint_val2 AS
	j smallint := 32764;
	end_val int := 32780;
	step_val smallint := 10;
BEGIN
	while j <= end_val LOOP  
		dbms_output.put_line('while with smallint ' || j);
		j := j + step_val  ;
	END LOOP;
END;
*/


call poo();
call loop_with_varchar();
call loop_with_int_val();
call loop_with_smallint_val1();
--call loop_with_smallint_val2();


drop procedure poo;
drop procedure loop_with_varchar;
drop procedure loop_with_int_val;
drop procedure loop_with_smallint_val1;
--drop procedure loop_with_smallint_val2;

--+ server-message off

