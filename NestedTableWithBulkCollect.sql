

SET SERVEROUTPUT ON

DECLARE
    TYPE structNestedTable IS TABLE OF employees%ROWTYPE;
    vNestedTable structNestedTable := structNestedTable();
BEGIN
    SELECT *
    BULK COLLECT INTO vNestedTable
    FROM employees;
    
    FOR i IN vNestedTable.FIRST..vNestedTable.LAST LOOP
        DBMS_OUTPUT.PUT_LINE('Indice :' || i);
        DBMS_OUTPUT.PUT_LINE('Employee_id :' || vNestedTable(i).employee_id);
        DBMS_OUTPUT.PUT_LINE('First_name :' || vNestedTable(i).first_name);
        DBMS_OUTPUT.PUT_LINE('Last_name :' || vNestedTable(i).last_name);
        DBMS_OUTPUT.PUT_LINE('Salary :' || vNestedTable(i).salary);
        DBMS_OUTPUT.PUT_LINE('');
        
    END LOOP;
END;

