SET SERVEROUTPUT ON;

DECLARE
  input_number NUMBER;
  temp_number NUMBER;
  digit_sum NUMBER := 0;
BEGIN
  input_number := &input_number;
  temp_number := ABS(input_number);

  WHILE temp_number > 0 LOOP
    digit_sum := digit_sum + MOD(temp_number, 10);
    temp_number := FLOOR(temp_number / 10);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || digit_sum);
END;
/
