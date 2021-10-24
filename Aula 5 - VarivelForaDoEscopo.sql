SET SERVEROUTPUT ON

VARIABLE media NUMBER;

DECLARE
    numero1 NUMBER := 1.54;
    numero2 NUMBER := 30;
    
BEGIN

    :media := (numero1 + numero2) / 2;
    DBMS_OUTPUT.PUT_LINE('MEDIA: ' || :media);
    
END;