SET SERVEROUTPUT ON;

DECLARE
  input_number NUMBER;
BEGIN
  input_number := &input_number;

  IF input_number > 0 THEN
    DBMS_OUTPUT.PUT_LINE('Number is Positive');
  ELSIF input_number < 0 THEN
    DBMS_OUTPUT.PUT_LINE('Number is Negative');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Number is Zero');
  END IF;
END;
/
