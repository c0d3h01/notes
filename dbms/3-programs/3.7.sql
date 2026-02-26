DECLARE
    n NUMBER;
BEGIN
    n := &n;
    
    IF MOD(n,5) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is divisible by 5');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is NOT divisible by 5');
    END IF;
END;
/
