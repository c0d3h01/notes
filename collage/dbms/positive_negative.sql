-- Program to accept a number and check whether it is positive Negative or Zero

DECLARE
  n NUMBER;
BEGIN
  n := &n;

  IF n > 0 THEN
    DBMS_OUTPUT.PUT_LINE('Number is positive');
  ELSIF n < 0 THEN
    DBMS_OUTPUT.PUT_LINE('Number is Negative');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Number is Zero');
  END IF;
END;

/
