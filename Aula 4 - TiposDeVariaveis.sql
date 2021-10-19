

SET SERVEROUTPUT ON

DECLARE
    
    numeroInteiro               NUMBER := 10;
    numeroInteiro2              NUMBER(8) := 10;
    numeroReal                  NUMBER(8,2) := 110.25;
    caracterTamanhoFixo         CHAR(2) := 'BR';
    caracterTamanhoVariavel      VARCHAR2(100) := 'Brasil';
    booleano                    BOOLEAN := TRUE;
    vData                       DATE := SYSDATE;
    vLong                       LONG := 'Texto com tamanho máximo de 32670 bytes';
    vRowId                      ROWID;
    vTimestamp                  TIMESTAMP := SYSTIMESTAMP;
    vTimestampz                 TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
    numeroInteiroBinary         BINARY_INTEGER := 1200;
    numeroFloat                 BINARY_FLOAT := 150000000;
    numeroDouble                BINARY_DOUBLE := 150000000;

BEGIN

    DBMS_OUTPUT.PUT_LINE('Numero inteiro 1: ' || numeroInteiro);
    DBMS_OUTPUT.PUT_LINE('Numero inteiro 2: ' || numeroInteiro2);
    DBMS_OUTPUT.PUT_LINE('Numero real: ' || numeroReal);
    DBMS_OUTPUT.PUT_LINE('Caracter de tamanho fixo: ' || caracterTamanhoFixo);
    DBMS_OUTPUT.PUT_LINE('Caracter de tamanho variavel: ' || caracterTamanhoVariavel);
    
    --BLOCO IF
    
    IF booleano = TRUE
    THEN
        DBMS_OUTPUT.PUT_LINE('O BOOLEANO É VERDADEIRO');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O BOOLEANO É FALSO');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Data : ' || vData);
    DBMS_OUTPUT.PUT_LINE('Timestamp: ' || vTimestamp);
    DBMS_OUTPUT.PUT_LINE('Timestampz: ' || vTimestampz);




    SELECT ROWID
    INTO vRowId
    FROM employees
    WHERE first_name = 'Steven' AND last_name = 'King';
    
    DBMS_OUTPUT.PUT_LINE('ROWID: ' || vRowId);



END;