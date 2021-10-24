

SET SERVEROUTPUT ON

DECLARE
    nota1 NUMBER(8,2) := 7.00;
    nota2 NUMBER(8,2) := 5.50;
    nota3 NUMBER(8,2) := 8.35;
    nota4 NUMBER(8,2) := 6.50;
    peso1 NUMBER := 1;
    peso2 NUMBER := 2;
    peso3 NUMBER := 3;
    peso4 NUMBER := 4;
    media NUMBER(8,2);
BEGIN
    media := ((nota1 * peso1) + (nota2 * peso2) + (nota3 * peso3) + (nota4 * peso4)) / 10;
    DBMS_OUTPUT.PUT_LINE('MEDIA: '|| media);
END;