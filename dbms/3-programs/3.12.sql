DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    min_num NUMBER;
BEGIN
    a := &a;
    b := &b;
    c := &c;

    IF a < b AND a < c THEN
        min_num := a;
    ELSIF b < c THEN
        min_num := b;
    ELSE
        min_num := c;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Minimum number is: ' || min_num);
END;
/
