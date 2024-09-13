declare 
	sal emp.salary%type;
	
begin
	select emp_name,salary into name,sal from emp where emp_id='&id';
	dbms_output.put_line('name is'|| name);
	dbms_output.put_line('the salary is'|| SAL);
	
exception
	when no_data_found then
	dbms_output.put_line('no record are found');
	when invalid_number then
	dbms_output.put_line('invalid value');
	
end;
/