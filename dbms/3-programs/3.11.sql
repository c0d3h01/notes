SET SERVEROUTPUT ON

DECLARE
    str VARCHAR2(50) := '&Enter_String';
    len NUMBER := 0;
BEGIN
    WHILE SUBSTR(str, len + 1, 1) IS NOT NULL LOOP
        len := len + 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Length of String = ' || len);
END;
/
