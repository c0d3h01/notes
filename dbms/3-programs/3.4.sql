DECLARE 
    n NUMBER; 
    rev NUMBER := 0; 
    r NUMBER;
BEGIN 
    n := &n;
    
    WHILE n > 0 LOOP
        r := MOD(n,10); 
        rev := rev * 10 + r;
        n := FLOOR(n/10); 
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Reverse number = ' || rev);
END;
/
