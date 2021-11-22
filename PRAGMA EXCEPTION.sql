

DECLARE
    vFirstName              employees.first_name%TYPE := 'Robert';
    vLastName               employees.last_name%TYPE := 'Ford';
    vJobId                  employees.job_id%TYPE := 'IT_PROG';
    vPhoneNumber            employees.phone_number%TYPE := '650.511.9844';
    vEmail                  employees.email%TYPE := 'RFORD';
    eForeignKeyInexistente  EXCEPTION;
    eTipoDeDadoIncorreto    EXCEPTION;
    eValorMuitoGrande       EXCEPTION;
    PRAGMA EXCEPTION_INIT(eForeignKeyInexistente, -2291);
    PRAGMA EXCEPTION_INIT(eTipoDeDadoIncorreto, -00932);
    PRAGMA EXCEPTION_INIT(eValorMuitoGrande, -12899);
BEGIN
    INSERT INTO employees(employee_id, first_name, last_name, phone_number, email, hire_date, job_id)
    VALUES (employees_seq.NEXTVAL, vFirstName, vLastName, vPhoneNumber, vEmail, SYSDATE, vJobId);
    --COMMIT;

EXCEPTION
    
    WHEN eForeignKeyInexistente THEN
        RAISE_APPLICATION_ERROR(-20003, 'FOREIGN KEY INSERIDO NÃO EXISTE');
        
    WHEN eTipoDeDadoIncorreto THEN
        RAISE_APPLICATION_ERROR(-20004, 'TIPO DE DADO NÃO ESTÁ DE ACORDO COM O TIPO DE DADO DA COLUNA');
        
    WHEN eValorMuitoGrande THEN
        RAISE_APPLICATION_ERROR(-20005, 'VALOR INSERIDO É MUITO GRANDE');
        
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);

END;