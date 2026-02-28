SET SERVEROUTPUT ON;

DECLARE
    N   NUMBER;
    SUM NUMBER := 0;
    R   NUMBER;
BEGIN
    N := &N;
    WHILE N > 0 LOOP
        R := MOD(N, 10);
        SUM := SUM + R;
        N := FLOOR(N / 10);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || SUM);
END;
/
