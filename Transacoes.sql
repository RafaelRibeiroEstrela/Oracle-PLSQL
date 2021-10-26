
SET SERVEROUTPUT ON

DECLARE
    vEmployeeId     employees.employee_id%TYPE := 150;
BEGIN
    UPDATE employees
    SET salary = 15000
    WHERE employee_id = vEmployeeId;
    COMMIT;
END;

DECLARE
    vEmployeeId     employees.employee_id%TYPE := 150;
    vFirstName      employees.first_name%TYPE;
BEGIN
    UPDATE employees
    SET salary = 25000
    WHERE employee_id = vEmployeeId;
    
    DELETE 
    FROM employees
    WHERE employee_id = vEmployeeId;
    ROLLBACK;
    
    SELECT first_name
    INTO vFirstName
    FROM employees
    WHERE employee_id = vEmployeeId;
    
    DBMS_OUTPUT.PUT_LINE('FIRST NAME: ' || vFirstName);
END;

DECLARE
    vSalary     employees.salary%TYPE;
BEGIN
    SAVEPOINT save1;
    
    UPDATE employees
    SET salary = 60354.22;
    
    SELECT salary
    INTO vSalary
    FROM employees
    WHERE employee_id = 100;
    
    DBMS_OUTPUT.PUT_LINE('salary1: ' || vSalary);
    
    ROLLBACK TO save1;
    
    SELECT salary
    INTO vSalary
    FROM employees
    WHERE employee_id = 100;
    
    DBMS_OUTPUT.PUT_LINE('salary2: ' || vSalary);
END;
