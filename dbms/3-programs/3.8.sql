DECLARE
    n NUMBER;
BEGIN
    n := &n;
    
    IF MOD(n,2) != 0 THEN
        FOR i IN 1..10 LOOP
            DBMS_OUTPUT.PUT_LINE(n || ' x ' || i || ' = ' || (n*i));
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is not odd');
    END IF;
END;
/
