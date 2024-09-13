--CURSOR RELATED EXCEPTION UNIT_3 PROGRAME-6

DECLARE
	m_name emp.emp_name%type;
	m_sal emp.salary%type;
	cursor c3 is select emp_name,salary from emp;
	
BEGIN open c3;
loop
	fetch c3 into m_name,m_sal;
	dbms_output.put_line(m_name||''||m_sal);
	--open c3
		exit when c3% notfound;
end loop;
close c3;

EXCEPTION 
		WHEN invalid_cursor then 
		dbms_output.put_line('cursor error');
		
when cursor_already_open then
	dbms_output.put_line('cursor is alrady open');
when other then
	dbms_output.put_line('some error occur..'||SQLERRM);

end;
/