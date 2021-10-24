

--SELECT NO PL/SQL
--O select deve retornar apenas uma  linha


SET SERVEROUTPUT ON

DECLARE
    vFirstName      employees.first_name%TYPE;
    vLastName       employees.last_name%TYPE;
    vSalary         employees.salary%TYPE;
    vEmployeeId     employees.employee_id%TYPE := 121;
BEGIN
    SELECT first_name, last_name, salary
    INTO vFirstName, vLastName, vSalary
    FROM employees
    WHERE employee_id = vEmployeeId;
    
    DBMS_OUTPUT.put_line('Employee: ' || vFirstName || ' ' || vLastName);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

-----------------------------------------------

--Exemplo de funções de agregação

DECLARE
    vAvgSalary employees.salary%TYPE;
    vSumSalary employees.salary%TYPE;
BEGIN
    SELECT ROUND(AVG(salary),2), ROUND(SUM(salary),2)
    INTO vAvgSalary, vSumSalary
    FROM employees;
    DBMS_OUTPUT.put_line('Média dos salarios: ' || vAvgSalary);
    DBMS_OUTPUT.PUT_LINE('Soma dos salarios: ' || vSumSalary);
END;

----------------------------------------------

--Exemplo de NO_DATA_FOUND

DECLARE
    vFirstName      employees.first_name%TYPE;
    vLastName       employees.last_name%TYPE;
    vSalary         employees.salary%TYPE;
    vEmployeeId     employees.employee_id%TYPE := 1;
BEGIN
    SELECT first_name, last_name, salary
    INTO vFirstName, vLastName, vSalary
    FROM employees
    WHERE employee_id = vEmployeeId;
    
    DBMS_OUTPUT.put_line('Employee: ' || vFirstName || ' ' || vLastName);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

-------------------------------------------------

--Exemplo de TOO_MANY_ROWS

DECLARE
    vSalary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO vSalary
    FROM employees;
    DBMS_OUTPUT.put_line('Salarios: ' || vSalary);
END;