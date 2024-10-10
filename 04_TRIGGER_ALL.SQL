/*04.write a PL/sql trigger for all operation */

create or REPLACE TRIGGER TR_ALL
before INSERT OR UPDATE OR DELETE ON emp
for each ROW

BEGIN

if insert then 
	INSERT into newEmp values(:NEW.eid,:NEW.ename,:new.salary);
ELSE
	INSERT into newEmp values(:OLD.eid,:OLD.ename,:OLD.salary);
end if;
end;
/	
