DECLARE 
    n NUMBER; 
    sum NUMBER := 0; 
    r NUMBER; 
BEGIN 
    n := &n;
    
    WHILE n > 0 LOOP 
        r := MOD(n,10); 
        sum := sum + r; 
        n := FLOOR(n/10); 
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || sum);
END;
/
