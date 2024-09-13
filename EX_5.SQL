DECLARE
	a number := &a;
	b number := &b;
	c number;
begin
	c:=a+b;
	dbms_output.out_line('addition'||c);
	c:=a*b;
	dbms_output.out_line('multiplication'||c);
	c:=a/b;
	dbms_output.out_line('division'||c);
exception
	when zero_divide then
		dbms_output.out_line('divison by zero is not possible');
	when invalid_number then
		dbms_output.out_line('number are only allowed');
end;
/