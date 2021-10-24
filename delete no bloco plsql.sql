

SET SERVEROUTPUT ON

DECLARE
    vEmployeeId employees.employee_id%TYPE := 207;
BEGIN
    DELETE 
    FROM employees
    WHERE employee_id = vEmployeeId;
    COMMIT;
END;

SELECT *
FROM employees;