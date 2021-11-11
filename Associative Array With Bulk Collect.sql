
SET SERVEROUTPUT ON

DECLARE
    TYPE structAssociativeArray IS TABLE OF employees%ROWTYPE INDEX BY BINARY_INTEGER;
    vAssociativeArray structAssociativeArray;
BEGIN
    SELECT *
    BULK COLLECT INTO vAssociativeArray
    FROM employees;
    
    FOR i IN vAssociativeArray.first..vAssociativeArray.last LOOP
        DBMS_OUTPUT.PUT_LINE(vAssociativeArray(i).employee_id);
    END LOOP;
END;

---------------------------------------------------------------------------------

DECLARE
    TYPE structAssociativeArray IS TABLE OF employees.salary%TYPE INDEX BY BINARY_INTEGER;
    vAssociativeArray structAssociativeArray;
BEGIN
    SELECT salary
    BULK COLLECT INTO vAssociativeArray
    FROM employees
    WHERE salary > 10000;
    
    FOR i IN vAssociativeArray.first..vAssociativeArray.last LOOP
        DBMS_OUTPUT.PUT_LINE(vAssociativeArray(i));
    END LOOP;
END;