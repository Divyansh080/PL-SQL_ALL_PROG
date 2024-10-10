/*05.create a trigger which restrict the user from withdrawal operation if the balance
  amount after withdrawal operation is less then rs.1000.use WHEN clause*/
  
  CREATE OR REPLACE TRIGGER TR_BAL
  BEFORE INSERT OR UPDATE OF SALARY ON EMP
  FOR EACH ROW
  WHEN (NEW.SALARY<1000)
  
  BEGIN
	RAISE_APPLICATION_ERROR(-20650,'MINIMUM SALARY FOR EACH EMPLOYEE IS RS.1000');
  END;
  /