

SET SERVEROUTPUT ON

DECLARE
    vFirstName employees.first_name%TYPE;
    vLastName employees.last_name%TYPE;
    vSalary employees.salary%TYPE;
BEGIN
    INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
    VALUES (employees_seq.NEXTVAL, 'Kobe', 'Bryant', 'KBRYANT', '55566644414', SYSDATE, 'IT_PROG', 15000, 0.4, 103, 60);
    COMMIT;
    
END;

SELECT *
FROM employees;