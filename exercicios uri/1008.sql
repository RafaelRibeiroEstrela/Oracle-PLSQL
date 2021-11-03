



DECLARE
    vMatricula                      NUMBER := &vMatricula;
    vNumeroHorasTrabalhadas         NUMBER := &vNumeroHorasTrabalhadas;
    vValorPorHora                   NUMBER(11,2) := &vValorPorHora;
    vSalario                        NUMBER(11,2);
BEGIN
    vSalario := vNumeroHorasTrabalhadas * vValorPorHora;
    DBMS_OUTPUT.PUT_LINE('Matrícula: '|| vMatricula);
    DBMS_OUTPUT.PUT_LINE('Salário: U$ '||vSalario);   
END;