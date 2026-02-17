```sql
-- Execute before running programs
SET SERVEROUTPUT ON

-- 3.1 Program to accept a number and check whether it is Positive, Negative or Zero
DECLARE
 n NUMBER;
BEGIN
 n := &n;
 IF n > 0 THEN
  DBMS_OUTPUT.PUT_LINE('Number is Positive');
 ELSIF n < 0 THEN
  DBMS_OUTPUT.PUT_LINE('Number is Negative');
 ELSE
  DBMS_OUTPUT.PUT_LINE('Number is Zero');
 END IF;
END;
/

-- 3.2 Program to accept a number and check whether it is Even or Odd
DECLARE
 n NUMBER;
BEGIN
 n := &n;
 IF MOD(n, 2) = 0 THEN
  DBMS_OUTPUT.PUT_LINE('Number is Even');
 ELSE
  DBMS_OUTPUT.PUT_LINE('Number is Odd');
 END IF;
END;
/

-- 3.3 Program to accept a number and print the Sum of Digits
DECLARE
 n NUMBER;
 sum NUMBER := 0;
 r NUMBER;
BEGIN
 n := &n;
 WHILE n > 0 LOOP
  r := MOD(n,10);
  sum := sum + r;
  n := FLOOR(n/10);
 END LOOP;
 DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || sum);
END;
/

-- 3.4 Program to accept a number and print its Reverse
DECLARE
 n NUMBER;
 rev NUMBER := 0;
 r NUMBER;
BEGIN
 n := &n;
 WHILE n > 0 LOOP
  r := MOD(n,10);
  rev := rev * 10 + r;
  n := FLOOR(n/10);
 END LOOP;
 DBMS_OUTPUT.PUT_LINE('Reverse number = ' || rev);
END;
/
```
