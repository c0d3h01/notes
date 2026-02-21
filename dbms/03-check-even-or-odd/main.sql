SET SERVEROUTPUT ON;

DECLARE
  input_number NUMBER;
BEGIN
  input_number := &input_number;

  IF MOD(input_number, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Number is Even');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Number is Odd');
  END IF;
END;
/
