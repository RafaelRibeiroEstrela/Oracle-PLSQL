

CREATE OR REPLACE FUNCTION func_consulta_salario_empregado(pEmployeeId IN NUMBER) 
    RETURN NUMBER
IS
    vSalary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO  vSalary
    FROM employees
    WHERE employee_id = pEmployeeId;
    RETURN (vSalary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Object not found by id = ' || pEmployeeId);
        
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);
END;


SET SERVEROUTPUT ON

DECLARE
    vEmployeeId         employees.employee_id%TYPE := &vEmployeeId;
    vSalary             employees.salary%TYPE;
BEGIN
    vSalary := func_consulta_salario_empregado(vEmployeeId);
    DBMS_OUTPUT.PUT_LINE('SALARIO: ' || vSalary);
END;