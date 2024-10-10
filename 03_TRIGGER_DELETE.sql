/*03.write a PL/sql trigger to insert the value into newEmp  table when
   the record is deleted in emp table */
   
   set serveroutput on;
   CREATE or REPLACE TRIGGER TR_EMP_DEL
   before DELETE on empfor each ROW
BEGIN
	INSERT INTO newEmp(eid,ename,salary)
	VALUES(:OLD.eid,:OLD.ename,:OLD.salary);
end;
/
