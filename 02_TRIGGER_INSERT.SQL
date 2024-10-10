/*write a PL/SQL TRIGGER into the newEmp table when the record are inserted int the emp table.*/

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER TR_EMP_INSERT
BEFORE INSERT ON emp 
FOR EACH ROW

BEGIN
	INSERT INTO newEmp(eid,ename,salary)
	VALUES (:NEW.eid,:NEW.ename,:NEW.salary);
end;
/