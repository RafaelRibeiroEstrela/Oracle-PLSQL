
SET SERVEROUTPUT ON

DECLARE
    vNumber     NUMBER := 0;
BEGIN
    LOOP
        vNumber := vNumber + 1;
        DBMS_OUTPUT.PUT_LINE('vNumber = ' || vNumber);
    EXIT WHEN vNumber = 999;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('vNumber = ' || vNumber);
END;


DECLARE
    vNumber     NUMBER := 0;
BEGIN
    LOOP
        vNumber := vNumber + 1;
        IF vNumber = 10
        THEN
            EXIT;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('vNumber = ' || vNumber);
END;