DECLARE
    n1 NUMBER;
    n2 NUMBER;
BEGIN
    n1 := &n1;
    n2 := &n2;
    
    FOR i IN n1..n2 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/
