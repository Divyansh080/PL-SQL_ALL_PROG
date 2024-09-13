declare 
	sal,number;
	
begin
	select salary into sal into sal from myemp where emp_id=10;
	dbms_output.put_line('the salary is'|| SAL);
	
exception
	when no_data_found then
	dbms_output.put_line('no record are found for empno 10');
end;
/