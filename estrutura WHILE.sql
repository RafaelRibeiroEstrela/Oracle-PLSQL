
SET SERVEROUTPUT ON

DECLARE

    vTam        NUMBER := &vTam;
    vIndice     NUMBER := 1;
BEGIN
    
    WHILE vIndice < vTam LOOP
        DBMS_OUTPUT.PUT_LINE('Indice: '|| vIndice);
        vIndice := vIndice + 1;
    END LOOP;
END;