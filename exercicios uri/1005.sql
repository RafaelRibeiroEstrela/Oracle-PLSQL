

DECLARE
    vNotaA          NUMBER(11,2) := &vNotaA;
    vNotaB          NUMBER(11,2) := &vNotaB;
    vMedia          NUMBER(11,2);
BEGIN
    vMedia := ((vNotaA * 2) + (vNotaB * 3)) / 5;
    DBMS_OUTPUT.PUT_LINE('media: '|| vMedia);
END;