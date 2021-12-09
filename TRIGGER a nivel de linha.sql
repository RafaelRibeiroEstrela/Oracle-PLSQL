CREATE TABLE employees_log
(employees_log_id NUMBER (11) NOT NULL,
 dt_log    DATE DEFAULT SYSDATE NOT NULL ,
 usuario   VARCHAR2(30),
 evento    CHAR(1) NOT NULL,
 employee_id  NUMBER(6) NOT NULL,
 salary_old  NUMBER(8,2),
 salary_new  NUMBER(8,2));
 
ALTER TABLE employees_log
ADD CONSTRAINT employees_log_pk PRIMARY KEY (employees_log_id);

CREATE SEQUENCE employees_log_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE
NOMAXVALUE;

CREATE OR REPLACE TRIGGER trigger_log_auditoria_employees
AFTER INSERT OR UPDATE OR DELETE
ON employees
FOR EACH ROW
DECLARE
    vEvento         employees_log.evento%TYPE;
    vEmployeeId     employees.employee_id%TYPE;
BEGIN
    IF (INSERTING) THEN
        vEvento     := 'I';
        vEmployeeId := :new.employee_id;
        ELSE IF (UPDATING) THEN
            vEvento     := 'U';
            vEmployeeId := :new.employee_id;
        ELSE
            vEvento     := 'D';
            vEmployeeId := :old.employee_id;
        END IF;
    END IF;
    
    INSERT INTO employees_log(
        employees_log_id, 
        dt_log, 
         usuario, 
         evento, 
         employee_id, 
         salary_old, 
         salary_new)
	VALUES
		(employees_log_seq.nextval,
		 SYSDATE,
		 USER,
		 vEvento,
		 vEmployeeId,
		 :old.salary,
		 :new.salary);
END;

ALTER TRIGGER trigger_before_statment_employees DISABLE;

UPDATE employees 
SET    salary = salary * 1.5;

SELECT *
FROM   employees_log;
