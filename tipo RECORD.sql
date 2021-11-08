

SET SERVEROUTPUT ON

DECLARE
    TYPE record_struct IS RECORD
    (employee_id employees.employee_id%TYPE,
    salary employees.salary%TYPE,
    last_name employees.last_name%TYPE);
    vRecord record_struct;
BEGIN
    SELECT employee_id, salary, last_name
    INTO vRecord
    FROM employees
    WHERE employee_id = 100;
    
    DBMS_OUTPUT.PUT_LINE('employee_id = ' || vRecord.employee_id || ' salary = ' || vRecord.salary || ' last_name = ' || vRecord.last_name);
END;