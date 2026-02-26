DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    max_num NUMBER;
BEGIN
    a := &a;
    b := &b;
    c := &c;
    
    IF a > b AND a > c THEN
        max_num := a;
    ELSIF b > c THEN
        max_num := b;
    ELSE
        max_num := c;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Maximum number is: ' || max_num);
END;
/
