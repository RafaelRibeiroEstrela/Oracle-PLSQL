

CREATE OR REPLACE PACKAGE pack_empregado
IS
    gMinSalary          employees.salary%TYPE;
    
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
        pDepartmentId   IN NUMBER
    );
    
    PROCEDURE proc_aumenta_salario_empregado(
        pEmployeeId     IN NUMBER,
        pPercentual     IN NUMBER
    );
    
    FUNCTION func_consulta_salario_empregado(
        pEmployeeId     IN NUMBER
    )RETURN NUMBER;
    
END pack_empregado;