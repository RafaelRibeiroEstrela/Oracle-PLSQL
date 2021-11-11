

SET SERVEROUTPUT ON

DECLARE

    -- DECLARE A ESTRUTURA DO ARRAY COM O TAMANHO E O TIPO DE DADO
    TYPE structArray IS ARRAY (10) OF NUMBER;
    
    -- SETA EM UMA VARIAVEL O TIPO DA ESTRUTURA
    varArray structArray := structArray();
BEGIN
    FOR i IN 1..10 LOOP
        
        -- ALOCA UM ESPACO NA ESTRUTURA
        varArray.EXTEND;
        varArray(i) := 1;
    END LOOP;
    
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('Indice: '|| i || ' Valor: '|| varArray(i));
    END LOOP;
END;