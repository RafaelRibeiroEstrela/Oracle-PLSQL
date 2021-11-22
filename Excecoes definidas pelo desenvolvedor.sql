

SET SERVEROUTPUT ON

DECLARE
    vFirstName      employees.first_name%TYPE;
    vLastName       employees.last_name%TYPE;
    vJobId          employees.job_id%TYPE;
    vEmployeeId     employees.employee_id%TYPE := &vEmployeeId;
    ePresident      EXCEPTION;
BEGIN
    SELECT first_name, last_name, employee_id, job_id
    INTO vFirstName, vLastName, vEmployeeId, vJobId
    FROM employees
    WHERE employee_id = vEmployeeId;
    
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE: '|| vFirstName || ' ' || vLastName || ' ' || vJobId);
    
    IF vJobId = 'AD_PRES' THEN
        RAISE ePresident;
    ELSE
        DBMS_OUTPUT.PUT_LINE('O EMPREGADO NÃO É DO AD_PRES');
    END IF;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'EMPREGADO NÃO LOCALIZADO COM ID = ' || vEmployeeId);
    
    WHEN ePresident THEN
        UPDATE employees
        SET salary = 33333
        WHERE employee_id = vEmployeeId;
        --COMMIT;
    
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);
END;


SELECT *
FROM employees;

ROLLBACK;
