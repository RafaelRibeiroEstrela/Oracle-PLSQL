



DECLARE
    vMatricula                      NUMBER := &vMatricula;
    vNumeroHorasTrabalhadas         NUMBER := &vNumeroHorasTrabalhadas;
    vValorPorHora                   NUMBER(11,2) := &vValorPorHora;
    vSalario                        NUMBER(11,2);
BEGIN
    vSalario := vNumeroHorasTrabalhadas * vValorPorHora;
    DBMS_OUTPUT.PUT_LINE('Matr�cula: '|| vMatricula);
    DBMS_OUTPUT.PUT_LINE('Sal�rio: U$ '||vSalario);   
END;