
SET SERVEROUTPUT ON

DECLARE
    -- DEFININDO O TIPO DE DADO DA ESTRUTURA
    TYPE structNestedTable IS TABLE OF NUMBER;
    
    -- ATRIBUINDO O E INICIALIZANDO A ESTRUTURA EM UMA VARIAVEL
    vNestedTable structNestedTable := structNestedTable();
BEGIN
    FOR i IN 1..10 LOOP
        -- ALOCANDO ESPACO
        vNestedTable.EXTEND;
        
        -- ATRIBUINDO UM VALOR NO ESPACO ALOCADO
        vNestedTable(i) := i;
    END LOOP;
    
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('Indice: '|| i || ' Valor: '|| vNestedTable(i));
    END LOOP;
        
END;