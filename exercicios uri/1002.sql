

--ACCEPT area PROMPT 'Valor do raio: ';

DECLARE
    area        NUMBER(11,5);
    n           NUMBER(11,5) := 3.14159;
    raio        NUMBER(11,5) := &raio;
BEGIN
    area := n*(raio**2);
    DBMS_OUTPUT.PUT_LINE('AREA: ' || area);
END;