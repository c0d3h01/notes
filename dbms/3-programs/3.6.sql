DECLARE
    n1 NUMBER;
    n2 NUMBER;
BEGIN
    n1 := &n1;
    n2 := &n2;
    
    FOR i IN n1..n2 LOOP
        IF MOD(i,2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(i);
        END IF;
    END LOOP;
END;
/
