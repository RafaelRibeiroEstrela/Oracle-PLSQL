

--Métodos do cursor

--%ISOPEN           (RETORNA TRUE SE O CURSOR ESTIVER ABERTO)
--%NOTFOUND         (RETORNA TRUE SE O ULTIMO FETCH NÃO RETORNOU UMA LINHA)
--%FOUND            (RETORNA TRUE SE O ULTIMO FETCH RETORNA UMA LINHA)
--%ROWCOUNT         (RETORNA O NUMERO DE LINHAS RECUPERADAS POR FETCH ATÉ O MOMENTO)


SET SERVEROUTPUT ON

DECLARE

    -- DECLARAÇÃO DO CURSOR
    CURSOR structCursorEmployees IS 
    SELECT * 
    FROM employees;
    
     -- DECLARANDO UMA VARIAVEL RECORD
    vRecordEmployees     structCursorEmployees%ROWTYPE;
    
    vBoolean            BOOLEAN := TRUE;
    
BEGIN

    -- ABRE O CURSOR, EXECUTA O SELECT E SALVA AS LINHAS RECUPERADAS DENTRO DO CURSOR
    OPEN structCursorEmployees;
    
    WHILE vBoolean LOOP
    
        -- RECUPERANDO UMA LINHA DO CURSOR E SALVANDO NA VARIAVEL RECORD
        FETCH structCursorEmployees INTO vRecordEmployees;
        
        DBMS_OUTPUT.PUT_LINE(vRecordEmployees.last_name);
        
        IF structCursorEmployees%NOTFOUND THEN
           vBoolean := FALSE; 
        END IF;
        
    END LOOP;
    
    -- FECHA O CURSOR
    CLOSE structCursorEmployees;
    
END;

-------------------------------------------------------------------------------------------------------------

DECLARE
    -- DECLARAÇÃO DO CURSOR
    CURSOR structCursorCountries IS 
    SELECT * 
    FROM countries;
    
BEGIN
    FOR vRecordCountries IN structCursorCountries LOOP
        --DBMS_OUTPUT.PUT_LINE('Numero de linhas dentro do cursor: '|| structCursorCountries%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE(vRecordCountries.country_name);
    END LOOP;
    
END;