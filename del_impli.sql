/*write a pl/sql block to deleted record from emp table for enterd emp how many record deleted 
and if not then display proper message.*/
begin 
	DELETE from employee salary where depr_id=10;
	if SQL%FOUND then 
		dbms_output.put_line('employee deleted');
		
	ELSE 
	dbms_output.put_line('no record found');
	end if;
	dbms_output.put_line(SQL%ROWcount||'row deleted');
	
end;
/