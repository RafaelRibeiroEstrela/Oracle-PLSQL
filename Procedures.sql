

CREATE OR REPLACE PROCEDURE proc_atualiza_salario(
    pEmployeeId IN NUMBER,
    pPercentual IN NUMBER)
IS

BEGIN
    UPDATE employees
    SET salary = salary * (1 + pPercentual / 100)
    WHERE employee_id = pEmployeeId;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERRO ORACLE: ' || SQLCODE || SQLERRM);
END;

BEGIN
    proc_atualiza_salario(100, 10);
END;
