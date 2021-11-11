
SET SERVEROUTPUT ON

DECLARE
    CURSOR structCursor(pSalary employees.salary%TYPE) 
    IS
    SELECT *
    FROM employees
    WHERE salary > pSalary
    ORDER BY salary DESC;
BEGIN
    FOR vRecord IN structCursor(10000) LOOP
        DBMS_OUTPUT.PUT_LINE(vRecord.first_name);
        DBMS_OUTPUT.PUT_LINE(vRecord.last_name);
        DBMS_OUTPUT.PUT_LINE(vRecord.salary);
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;

END;