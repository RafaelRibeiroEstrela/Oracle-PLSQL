
DECLARE
    vNome           VARCHAR2(255) := 'JOAO';
    vSalario        NUMBER(11,2) := &vSalario;
    vTotalVendas    NUMBER(11,2) := &vTotalVendas;
    vTotal          NUMBER(11,2);
BEGIN
    DBMS_OUTPUT.PUT_LINE('SALARIO: '|| vSalario);
    DBMS_OUTPUT.PUT_LINE('VENDAS: '|| vTotalVendas);
    vTotal := vTotal + vTotalVendas * 0.15;
    DBMS_OUTPUT.PUT_LINE('TOTAL: '|| vTotal);
END;