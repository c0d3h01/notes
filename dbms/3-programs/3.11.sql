SET SERVEROUTPUT ON

DECLARE
    str VARCHAR2(50) := '&Enter_String';
    len NUMBER := 0;
BEGIN
    -- Note: The logic provided uses LENGTH in the loop header
    FOR i IN 1..LENGTH(str) LOOP
        len := len + 1;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Length of String = ' || len);
END;
/
