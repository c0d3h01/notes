-- Program to accept a number and check whether it is Even or Odd
DECLARE
  n NUMBER;
BEGIN
  n := &n;

  IF MOD(n, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Number is Even');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Number is odd');
  END IF;
END;
/
