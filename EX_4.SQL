DECLARE
	no number(5);
begin 
	select to_number('0001A')into no from dual;
	dbms_output.put_line(no);
exception
	when invalid_number then
	dbms_output.put_line();
end;