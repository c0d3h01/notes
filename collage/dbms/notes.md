## Question: 1

```sql
-- Table Structure
CREATE TABLE employee001 (
 deptno NUMBER(2),
 empno NUMBER(4),
 ename VARCHAR2(20),
 salary NUMBER(8),
 joining_date DATE
);

-- Insert Records
INSERT INTO employee001 VALUES (10, 101, 'ARUN', 25000, TO_DATE('12-01-2012','DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 102, 'ANIL', 18000, TO_DATE('25-03-2015','DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 103, 'SUNIL', 22000, TO_DATE('10-01-2018','DD-MM-YYYY'));
INSERT INTO employee001 VALUES (30, 104, 'RAHUL', 30000, TO_DATE('05-07-2009','DD-MM-YYYY'));
INSERT INTO employee001 VALUES (10, 105, 'KIRAN', 28000, TO_DATE('15-01-2011','DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 106, 'AMAN', 20000, TO_DATE('20-11-2016','DD-MM-YYYY'));
COMMIT;

-- 1. Display details of employees working in department 20
SELECT * FROM employee001 WHERE deptno = 20;

-- 2. Display empno, ename and salary of employee working as Clerk
SELECT empno, ename, salary FROM employee001 WHERE ename = 'CLERK';

-- 3. Arrange employee data in descending order of salary
SELECT * FROM employee001 ORDER BY salary DESC;

-- 4. Display details of employee whose name ends with 'N'
SELECT * FROM employee001 WHERE ename LIKE '%N';

-- 5. Count total number of employees
SELECT COUNT(*) FROM employee001;

-- 6. Display total salary
SELECT SUM(salary) FROM employee001;

-- 7. Display details of employees joined after 2010
SELECT * FROM employee001
WHERE joining_date > TO_DATE('31-12-2010','DD-MM-YYYY');

-- 8. Display name of employee having maximum salary
SELECT ename FROM employee001
WHERE salary = (SELECT MAX(salary) FROM employee001);

-- 9. Display name of employees who joined in January
SELECT ename FROM employee001
WHERE TO_CHAR(joining_date,'MM') = '01';

-- 10. Display joining date in 'DD-MM-YYYY' format
SELECT ename, TO_CHAR(joining_date,'DD-MM-YYYY') FROM employee001;
```

## Question: 2

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
