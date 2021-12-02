
CREATE OR REPLACE PACKAGE BODY pack_empregado
IS
    PROCEDURE proc_insere_empregado(
        pFirstName      IN VARCHAR2,
        pLastName       IN VARCHAR2,
        pEmail          IN VARCHAR2,
        pPhoneNumber    IN VARCHAR2,
        pHireDate       IN DATE DEFAULT SYSDATE,
        pJobId          IN VARCHAR2,
        pSalary         IN NUMBER,
        pCommissionPCT  IN NUMBER,
        pManangerId     IN NUMBER,
        pDepartmentId   IN NUMBER)
    IS
    BEGIN
        INSERT INTO employees
        VALUES (employees_seq.NEXTVAL, pFirstName, pLastName, pEmail, pPhoneNumber, pHireDate, 
        pJobId, pSalary, pCommissionPCT, pManangerId, pDepartmentId);
    EXCEPTION
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20001, 'ERRO ORACLE: ' || SQLCODE || SQLERRM);
    END;
    
    
    
    PROCEDURE proc_aumenta_salario_empregado(
        pEmployeeId     IN NUMBER,
        pPercentual     IN NUMBER)
    IS
    BEGIN
        UPDATE employees
        SET salary = salary * (1 + pPercentual / 100)
        WHERE employee_id = pEmployeeId;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Object not found by id = ' || pEmployeeId);
    
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE: ' || SQLCODE || SQLERRM);
    END;
    
    
    
    FUNCTION func_consulta_salario_empregado(
        pEmployeeId     IN NUMBER)
        RETURN NUMBER
    IS
        vSalary     employees.salary%TYPE;
    BEGIN
        SELECT salary
        INTO vSalary
        FROM employees
        WHERE employee_id = pEmployeeId;
        
        RETURN vSalary;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Object not found by id = ' || pEmployeeId);
    
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE: ' || SQLCODE || SQLERRM);
    END;

END pack_empregado;