

SET SERVEROUTPUT ON

DECLARE
    vEmployeeId employees.employee_id%TYPE := 101;
    vPercentual NUMBER := 10;
BEGIN
    UPDATE  employees
    SET     salary = salary + 100
    WHERE   employee_id = vEmployeeId;
    COMMIT;
END;

SELECT *
FROM employees
WHERE employee_id = 101;