
SET SERVEROUTPUT ON

DECLARE
    
BEGIN
    FOR i IN 0..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;

DECLARE
    vInicio     NUMBER := 0;
    vFim        NUMBER := 1000;
BEGIN
    FOR i IN vInicio..vFim LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;

