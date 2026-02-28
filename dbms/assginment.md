# DBMS Journal Assignments

---

## Program 1

**Question:**
Create table employee, add at least 6 rows. Employee (deptno, empno, ename, salary, joining date).

**Query Code:**

```sql
CREATE TABLE employee001 (
    deptno NUMBER(2),
    empno NUMBER(4),
    ename VARCHAR2(20),
    salary NUMBER(8),
    joining_date DATE
);

INSERT INTO employee001 VALUES (10, 101, 'ARUN', 25000, TO_DATE('12-01-2012', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 102, 'ANIL', 18000, TO_DATE('25-03-2015', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 103, 'SUNIL', 22000, TO_DATE('10-01-2018', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (30, 104, 'RAHUL', 30000, TO_DATE('05-07-2009', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (10, 105, 'KIRAN', 28000, TO_DATE('15-01-2011', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 106, 'AMAN', 20000, TO_DATE('20-11-2016', 'DD-MM-YYYY'));

COMMIT;

SELECT * FROM employee001;
```

**Output:**

| DEPTNO | EMPNO | ENAME | SALARY | JOINING_DATE |
| ------ | ----- | ----- | ------ | ------------ |
| 10     | 101   | ARUN  | 25000  | 12-01-2012   |
| 20     | 102   | ANIL  | 18000  | 25-03-2015   |
| 20     | 103   | SUNIL | 22000  | 10-01-2018   |
| 30     | 104   | RAHUL | 30000  | 05-07-2009   |
| 10     | 105   | KIRAN | 28000  | 15-01-2011   |
| 20     | 106   | AMAN  | 20000  | 20-11-2016   |

---

## Program 2

### 1. Display details of employee working in deptno 20.

**Query Code:**

```sql
SELECT * FROM employee001 WHERE deptno = 20;
```

**Output:**

| DEPTNO | EMPNO | ENAME | SALARY | JOINING_DATE |
| ------ | ----- | ----- | ------ | ------------ |
| 20     | 102   | ANIL  | 18000  | 25-03-2015   |
| 20     | 103   | SUNIL | 22000  | 10-01-2018   |
| 20     | 106   | AMAN  | 20000  | 20-11-2016   |

---

### 2. Display empno, ename, salary of employee working as a 'Clerk'.

**Query Code:**

```sql
SELECT empno, ename, salary FROM employee001 WHERE job = 'Clerk';
```

**Output:**
```
no rows selected
```

---

### 3. Arrange employee data in descending order of salary.

**Query Code:**

```sql
SELECT * FROM employee001 ORDER BY salary DESC;
```

**Output:**

| DEPTNO | EMPNO | ENAME | SALARY | JOINING_DATE |
| ------ | ----- | ----- | ------ | ------------ |
| 30     | 104   | RAHUL | 30000  | 05-07-2009   |
| 10     | 105   | KIRAN | 28000  | 15-01-2011   |
| 10     | 101   | ARUN  | 25000  | 12-01-2012   |
| 20     | 103   | SUNIL | 22000  | 10-01-2018   |
| 20     | 106   | AMAN  | 20000  | 20-11-2016   |
| 20     | 102   | ANIL  | 18000  | 25-03-2015   |

---

### 4. Display details of employee whose name ends with 'N'.

**Query Code:**

```sql
SELECT * FROM employee001 WHERE ename LIKE '%N';
```

**Output:**

| DEPTNO | EMPNO | ENAME | SALARY | JOINING_DATE |
| ------ | ----- | ----- | ------ | ------------ |
| 10     | 101   | ARUN  | 25000  | 12-01-2012   |
| 10     | 105   | KIRAN | 28000  | 15-01-2011   |
| 20     | 106   | AMAN  | 20000  | 20-11-2016   |

---

### 5. Count total number of employees.

**Query Code:**

```sql
SELECT COUNT(*) AS total_employees FROM employee001;
```

**Output:**

| TOTAL_EMPLOYEES |
| --------------- |
| 6               |

---

### 6. Display total salary.

**Query Code:**

```sql
SELECT SUM(salary) AS total_salary FROM employee001;
```

**Output:**

| TOTAL_SALARY |
| ------------ |
| 143000       |

---

### 7. Display details of employees joined after 2010.

**Query Code:**

```sql
SELECT * FROM employee001 WHERE joining_date > TO_DATE('31-12-2010', 'DD-MM-YYYY');
```

**Output:**

| DEPTNO | EMPNO | ENAME | SALARY | JOINING_DATE |
| ------ | ----- | ----- | ------ | ------------ |
| 10     | 101   | ARUN  | 25000  | 12-01-2012   |
| 20     | 102   | ANIL  | 18000  | 25-03-2015   |
| 20     | 103   | SUNIL | 22000  | 10-01-2018   |
| 10     | 105   | KIRAN | 28000  | 15-01-2011   |
| 20     | 106   | AMAN  | 20000  | 20-11-2016   |

---

### 8. Display name of the employees having maximum salary.

**Query Code:**

```sql
SELECT ename FROM employee001 WHERE salary = (SELECT MAX(salary) FROM employee001);
```

**Output:**

| ENAME |
| ----- |
| RAHUL |

---

### 9. Display name of employees who have joined in January.

**Query Code:**

```sql
SELECT ename FROM employee001 WHERE TO_CHAR(joining_date, 'MM') = '01';
```

**Output:**

| ENAME |
| ----- |
| ARUN  |
| SUNIL |
| KIRAN |

---

### 10. Display joining date in 'dd-mm-yyyy' format.

**Query Code:**

```sql
SELECT ename, TO_CHAR(joining_date, 'DD-MM-YYYY') AS formatted_joining_date FROM employee001;
```

**Output:**

| ENAME | FORMATTED_JOINING_DATE |
| ----- | ---------------------- |
| ARUN  | 12-01-2012             |
| ANIL  | 25-03-2015             |
| SUNIL | 10-01-2018             |
| RAHUL | 05-07-2009             |
| KIRAN | 15-01-2011             |
| AMAN  | 20-11-2016             |

---

## Program 3

### 1. Write a PL/SQL code to accept a number and check whether it is positive, negative or zero.

**Query Code:**

```sql
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
```

**Output:**
```
Enter value for n: 5
old   2:     n := &n;
new   2:     n := 5;
Number is Positive

PL/SQL procedure successfully completed.
```

---

### 2. Write a PL/SQL code to accept a number and print whether the number is even or odd.

**Query Code:**

```sql
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
```

**Output:**
```
Enter value for n: 7
old   2:     n := &n;
new   2:     n := 7;
Number is Odd

PL/SQL procedure successfully completed.
```

---

### 3. Write a PL/SQL code to accept a number and print a sum of digits of that number.

**Query Code:**

```sql
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
```

**Output:**
```
Enter value for n: 1234
old   2:     n := &n;
new   2:     n := 1234;
Sum of digits = 10

PL/SQL procedure successfully completed.
```

---

### 4. Write a PL/SQL code to accept a number and print reverse of that number.

**Query Code:**

```sql
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

**Output:**
```
Enter value for n: 1234
old   2:     n := &n;
new   2:     n := 1234;
Reverse number = 4321

PL/SQL procedure successfully completed.
```

---

### 5. Print the name, job of employees working as a 'Manager' (using cursor).

**Query Code:**

```sql
DECLARE
    CURSOR c1 IS
        SELECT ename, job FROM emp
        WHERE job = 'MANAGER';
    v_name emp.ename%TYPE;
    v_job emp.job%TYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v_name, v_job;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name || ' Job: ' || v_job);
    END LOOP;
    CLOSE c1;
END;
/
```

**Output:**
```
Name: JONES Job: MANAGER
Name: BLAKE Job: MANAGER
Name: CLARK Job: MANAGER

PL/SQL procedure successfully completed.
```

---

### 6. Write a PL/SQL block to accept 2 numbers and print table of even numbers between that range of that numbers.

**Query Code:**

```sql
DECLARE
    n1 NUMBER;
    n2 NUMBER;
BEGIN
    n1 := &n1;
    n2 := &n2;

    FOR i IN n1..n2 LOOP
        IF MOD(i,2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(i);
        END IF;
    END LOOP;
END;
/
```

**Output:**
```
Enter value for n1: 3
Enter value for n2: 15
old   2:     n1 := &n1;
new   2:     n1 := 3;
old   3:     n2 := &n2;
new   3:     n2 := 15;
4
6
8
10
12
14

PL/SQL procedure successfully completed.
```

---

### 7. Write a PL/SQL block to accept a number and check whether it is divisible by 5.

**Query Code:**

```sql
DECLARE
    n NUMBER;
BEGIN
    n := &n;

    IF MOD(n,5) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is divisible by 5');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is NOT divisible by 5');
    END IF;
END;
/
```

**Output:**
```
Enter value for n: 25
old   2:     n := &n;
new   2:     n := 25;
Number is divisible by 5

PL/SQL procedure successfully completed.
```

---

### 8. Write a PL/SQL block to accept a number if the number is odd print table of that number.

**Query Code:**

```sql
DECLARE
    n NUMBER;
BEGIN
    n := &n;

    IF MOD(n,2) != 0 THEN
        FOR i IN 1..10 LOOP
            DBMS_OUTPUT.PUT_LINE(n || ' x ' || i || ' = ' || (n*i));
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is not odd');
    END IF;
END;
/
```

**Output:**
```
Enter value for n: 5
old   2:     n := &n;
new   2:     n := 5;
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
5 x 4 = 20
5 x 5 = 25
5 x 6 = 30
5 x 7 = 35
5 x 8 = 40
5 x 9 = 45
5 x 10 = 50

PL/SQL procedure successfully completed.
```

---

### 9. Write a PL/SQL block to accept 2 numbers and print table of numbers between range of that numbers.

**Query Code:**

```sql
DECLARE
    n1 NUMBER;
    n2 NUMBER;
BEGIN
    n1 := &n1;
    n2 := &n2;

    FOR i IN n1..n2 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/
```

**Output:**
```
Enter value for n1: 3
Enter value for n2: 7
old   2:     n1 := &n1;
new   2:     n1 := 3;
old   3:     n2 := &n2;
new   3:     n2 := 7;
3
4
5
6
7

PL/SQL procedure successfully completed.
```

---

### 10. Write a PL/SQL block to accept 3 numbers and print maximum number (without using max() function).

**Query Code:**

```sql
DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    max_num NUMBER;
BEGIN
    a := &a;
    b := &b;
    c := &c;

    IF a > b AND a > c THEN
        max_num := a;
    ELSIF b > c THEN
        max_num := b;
    ELSE
        max_num := c;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Maximum number is: ' || max_num);
END;
/
```

**Output:**
```
Enter value for a: 12
Enter value for b: 45
Enter value for c: 30
old   2:     a := &a;
new   2:     a := 12;
old   3:     b := &b;
new   3:     b := 45;
old   4:     c := &c;
new   4:     c := 30;
Maximum number is: 45

PL/SQL procedure successfully completed.
```
