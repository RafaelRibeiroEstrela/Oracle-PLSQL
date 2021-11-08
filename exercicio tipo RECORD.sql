
SET SERVEROUTPUT ON

DECLARE
    vIndice         employees.employee_id%TYPE := 100;
    vCont           NUMBER := 1;
    vNumLinhas      NUMBER;
    vRecord         employees%ROWTYPE;
BEGIN
    SELECT COUNT(*)
    INTO vNumLinhas
    FROM employees;
    
    WHILE vCont <= vNumLinhas LOOP
        
        SELECT *
        INTO vRecord
        FROM employees
        WHERE employee_id = vIndice;
        
        DBMS_OUTPUT.PUT_LINE('ID: '|| vRecord.employee_id);
        DBMS_OUTPUT.PUT_LINE('FIRST_NAME: '|| vRecord.first_name);
        DBMS_OUTPUT.PUT_LINE('LAST_NAME: '|| vRecord.last_name);
        DBMS_OUTPUT.PUT_LINE('SALARY: '|| vRecord.salary);
        DBMS_OUTPUT.PUT_LINE('');
        
        vIndice := vIndice + 1;
        vCont := vCont + 1;
        
    END LOOP;
        
END;

SELECT *
FROM employees;