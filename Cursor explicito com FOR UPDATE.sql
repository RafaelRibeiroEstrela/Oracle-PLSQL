

SET SERVEROUTPUT ON

DECLARE
    CURSOR structCursor(vNum employees.employee_id%TYPE)
    IS
    SELECT *
    FROM employees
    WHERE employee_id < vNum
    FOR UPDATE;
BEGIN
    FOR vRecord IN structCursor(110) LOOP
        UPDATE employees
        SET salary = 555
        WHERE CURRENT OF structCursor;
    END LOOP;
    --COMMIT;
END;

SELECT *
FROM employees
WHERE employee_id < 110;

ROLLBACK;