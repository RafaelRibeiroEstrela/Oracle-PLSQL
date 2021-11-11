

--ASSOCIATIVE ARRAY

SET SERVEROUTPUT ON

DECLARE
    TYPE structAssociativeArray IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
    vAssociativeArray structAssociativeArray;
BEGIN
    FOR i IN 1..10 LOOP
        vAssociativeArray(i) := i;
    END LOOP;
    
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('Posicao '|| i || ' do array: '|| vAssociativeArray(i));
    END LOOP;
END;

DECLARE
    TYPE structAssociativeArray IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
    vAssociativeArray structAssociativeArray;
BEGIN
    vAssociativeArray(0) := 10;
    vAssociativeArray(1) := 20;
    vAssociativeArray(4) := 50;
    DBMS_OUTPUT.PUT_LINE('Posicao '|| 0 || ' do array: '|| vAssociativeArray(0));
    --DBMS_OUTPUT.PUT_LINE('Posicao '|| 2 || ' do array: '|| vAssociativeArray(2));
END;
