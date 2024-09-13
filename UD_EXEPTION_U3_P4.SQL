-- PROGRAME 4 TO THE LAB MANUAL OF UNIT_3

declare 
sal emp.salary%type;

BEGIN

SELECT salary int.sal from emp where age =50;
dbms_output.put_line('salary is||sal');

EXCEPTION
		when no_data_found then 
			dbms_output.put_line('no record found');
		when too_many_row then
			dbms_output.put_line('no record found');
			
end;
/