/*write a pl/sql block to increase the salary of employee to 10% who are having salary less then 27000 and
deduct the salary to 3% who are having more then 28000. 
also display ho many records updated using this.*/

BEGIN
    
    UPDATE employee SET emp_salary = emp_salary * 0.10 WHERE emp_salary < 27000;

    UPDATE employee SET emp_salary = emp_salary * 0.03 WHERE emp_salary > 28000;

    IF SQL%ROWCOUNT > 0 THEN
        dbms_output.put_line(SQL%ROWCOUNT || ' records updated.');
    ELSE
        dbms_output.put_line('No records updated.');
    END IF;
END;
/
