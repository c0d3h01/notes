SET SERVEROUTPUT ON;

DECLARE
  input_number NUMBER;
  temp_number NUMBER;
  reversed_number NUMBER := 0;
BEGIN
  input_number := &input_number;
  temp_number := ABS(input_number);

  WHILE temp_number > 0 LOOP
    reversed_number := reversed_number * 10 + MOD(temp_number, 10);
    temp_number := FLOOR(temp_number / 10);
  END LOOP;

  IF input_number < 0 THEN
    reversed_number := reversed_number * -1;
  END IF;

  DBMS_OUTPUT.PUT_LINE('Reversed number = ' || reversed_number);
END;
/
