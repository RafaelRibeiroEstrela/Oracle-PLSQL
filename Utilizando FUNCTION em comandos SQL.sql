

CREATE OR REPLACE FUNCTION func_consulta_titulo_cargo_empregado(pJobId IN jobs.job_title%TYPE)
    RETURN VARCHAR2
IS
    vJobTitle       jobs.job_title%TYPE;
BEGIN
    SELECT  job_title
    INTO vJobTitle
    FROM jobs
    WHERE job_id = pJobId;
    
    RETURN (vJobTitle);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Object not found by id = '|| pJobId);
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);
END;

SET SERVEROUTPUT ON

SELECT employee_id, first_name, last_name, job_id, func_consulta_titulo_cargo_empregado(job_id)
FROM employees;

SELECT func_consulta_titulo_cargo_empregado('IT_PROG')
FROM dual;

SELECT em.employee_id, em.first_name, em.last_name, jb.job_id, jb.job_title
FROM employees em
JOIN jobs jb ON (em.job_id = jb.job_id);