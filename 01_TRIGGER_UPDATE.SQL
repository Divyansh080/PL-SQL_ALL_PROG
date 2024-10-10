/*write a trigger to insert the existing values of the emp table 
  into newEmp table when the record is updated in EMP.*/
  
  CREATE OR REPLACE TRIGGER TR_UPDATE_SAL
  BEFORE UPDATE OF SALARY ON emp
  FOR EACH ROW
  
  BEGIN
	INSERT INTO NEWEMP(EMPNO,ENAME,SAL)
	VLAUES (:OLD.emp_id,:OLD.emp_name,:OLD.salary);
 end;
 /
