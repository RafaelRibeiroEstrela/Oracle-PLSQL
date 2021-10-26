

DECLARE
    vDepartmentId       employees.department_id%TYPE := 60;
    vPercentual         NUMBER := 10;
BEGIN   
    UPDATE employees
    SET salary = salary * (1 + vPercentual / 100)
    WHERE department_id = vDepartmentId;
    
    DBMS_OUTPUT.put_line('Numero de linhas atualizadas: ' || SQL%ROWCOUNT);
    
    ROLLBACK;
END;

