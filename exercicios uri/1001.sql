
SET SERVEROUTPUT ON

ACCEPT A PROMPT 'Variavel A: ';
ACCEPT B PROMPT 'Variavel B: ';

DECLARE
    A       NUMBER := &A;
    B       NUMBER := &B;
    X       NUMBER;
BEGIN
    X := A + B;
    DBMS_OUTPUT.PUT_LINE('X = ' || X);
END;