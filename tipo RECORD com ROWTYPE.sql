

DECLARE
    vRecord         employees%ROWTYPE;
BEGIN
    SELECT *
    INTO vRecord
    FROM employees
    WHERE employee_id = 100;
    
    DBMS_OUTPUT.put_line(vRecord.first_name);
    DBMS_OUTPUT.put_line(vRecord.last_name);
    
END;