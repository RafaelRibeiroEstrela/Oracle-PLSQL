

SET SERVEROUTPUT ON

DECLARE
    bloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
    DBMS_OUTPUT.PUT_LINE('REFERENCIANDO ' || bloco1);
    
    DECLARE
        bloco2 VARCHAR(20) := 'Bloco 2';
    BEGIN
        DBMS_OUTPUT.PUT_LINE('REFERENCIANDO ' || bloco1);
        DBMS_OUTPUT.PUT_LINE('REFERENCIANDO ' || bloco2);
    END;
    
    DBMS_OUTPUT.PUT_LINE('REFERENCIANDO ' || bloco1);
    --DBMS_OUTPUT.PUT_LINE('REFERENCIANDO ' || bloco2);
END;