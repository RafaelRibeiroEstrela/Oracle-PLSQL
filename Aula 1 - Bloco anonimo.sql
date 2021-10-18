
-- SERVEROUTPUT � UM COMANDO PARA HABILITAR UM BUFFER DE SAIDA DE DADOS
SET SERVEROUTPUT ON

DECLARE
    texto VARCHAR(255) := 'Ol� mundo';
BEGIN
    DBMS_OUTPUT.PUT_LINE(texto);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('UMA EXCE��O OCORREU');
END;

---------------------------------------------------------------------

DECLARE
    numero NUMBER := 10;
BEGIN
    DBMS_OUTPUT.PUT_LINE(numero);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('UMA EXCE��O OCORREU');
END;

--------------------------------------------------------------------

DECLARE
    texto VARCHAR(255) := 'Opera��o de soma';
    num1 NUMBER(11, 2) := 100.50;
    num2 NUMBER(11, 2) := 50.00;
    soma NUMBER(11, 2);
BEGIN
    soma := num1 + num2;
    DBMS_OUTPUT.PUT_LINE('TOTAL: ' || soma);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('UMA EXCE��O OCORREU');
END;

---------------------------------------------------------------------
