# Program 03

**Question:** Write the following PL/SQL programs.

---

### 1. Write a PL/SQL code to accept a number and check whether it is positive, negative or zero.

## Program

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

## Output

```
Enter value for n: 5
old   2:     n := &n;
new   2:     n := 5;
Number is Positive

PL/SQL procedure successfully completed.
```

---

### 2. Write a PL/SQL code to accept a number and print whether the number is even or odd.

## Program

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

## Output

```
Enter value for n: 7
old   2:     n := &n;
new   2:     n := 7;
Number is Odd

PL/SQL procedure successfully completed.
```

---

### 3. Write a PL/SQL code to accept a number and print a sum of digits of that number.

## Program

```sql
DECLARE
    n   NUMBER;
    sum NUMBER := 0;
    r   NUMBER;
BEGIN
    n := &n;

    WHILE n > 0 LOOP
        r   := MOD(n, 10);
        sum := sum + r;
        n   := FLOOR(n / 10);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || sum);
END;
/
```

## Output

```
Enter value for n: 1234
old   2:     n := &n;
new   2:     n := 1234;
Sum of digits = 10

PL/SQL procedure successfully completed.
```

---

### 4. Write a PL/SQL code to accept a number and print reverse of that number.

## Program

```sql
DECLARE
    n   NUMBER;
    rev NUMBER := 0;
    r   NUMBER;
BEGIN
    n := &n;

    WHILE n > 0 LOOP
        r   := MOD(n, 10);
        rev := rev * 10 + r;
        n   := FLOOR(n / 10);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Reverse number = ' || rev);
END;
/
```

## Output

```
Enter value for n: 1234
old   2:     n := &n;
new   2:     n := 1234;
Reverse number = 4321

PL/SQL procedure successfully completed.
```

---

### 5. Print the name, job of employees working as a 'Manager' (using cursor).

## Program

```sql
DECLARE
    CURSOR c1 IS
        SELECT ename, job FROM emp
        WHERE job = 'MANAGER';
    v_name emp.ename%TYPE;
    v_job  emp.job%TYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v_name, v_job;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name || '  Job: ' || v_job);
    END LOOP;
    CLOSE c1;
END;
/
```

## Output

```
Name: JONES  Job: MANAGER
Name: BLAKE  Job: MANAGER
Name: CLARK  Job: MANAGER

PL/SQL procedure successfully completed.
```

---

### 6. Write a PL/SQL block to accept 2 numbers and print table of even numbers between that range of that numbers.

## Program

```sql
DECLARE
    n1 NUMBER;
    n2 NUMBER;
BEGIN
    n1 := &n1;
    n2 := &n2;

    FOR i IN n1..n2 LOOP
        IF MOD(i, 2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(i);
        END IF;
    END LOOP;
END;
/
```

## Output

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

## Program

```sql
DECLARE
    n NUMBER;
BEGIN
    n := &n;

    IF MOD(n, 5) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is divisible by 5');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is NOT divisible by 5');
    END IF;
END;
/
```

## Output

```
Enter value for n: 25
old   2:     n := &n;
new   2:     n := 25;
Number is divisible by 5

PL/SQL procedure successfully completed.
```

---

### 8. Write a PL/SQL block to accept a number if the number is odd print table of that number.

## Program

```sql
DECLARE
    n NUMBER;
BEGIN
    n := &n;

    IF MOD(n, 2) != 0 THEN
        FOR i IN 1..10 LOOP
            DBMS_OUTPUT.PUT_LINE(n || ' x ' || i || ' = ' || (n * i));
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is not odd');
    END IF;
END;
/
```

## Output

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

## Program

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

## Output

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

### 10. Write a PL/SQL block to accept 3 numbers and print maximum number. (without using max() function).

## Program

```sql
DECLARE
    a       NUMBER;
    b       NUMBER;
    c       NUMBER;
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

## Output

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

---

### 11. Write a PL/SQL block to accept a string and print length of string. (without using length() function).

## Program

```sql
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
```

## Output

```
Enter value for Enter_String: HELLO
old   2:     str VARCHAR2(50) := '&Enter_String';
new   2:     str VARCHAR2(50) := 'HELLO';
Length of String = 5

PL/SQL procedure successfully completed.
```

---

### 12. Write a PL/SQL block to accept 3 numbers and print minimum number. (without using min() function).

## Program

```sql
DECLARE
    a       NUMBER;
    b       NUMBER;
    c       NUMBER;
    min_num NUMBER;
BEGIN
    a := &a;
    b := &b;
    c := &c;

    IF a < b AND a < c THEN
        min_num := a;
    ELSIF b < c THEN
        min_num := b;
    ELSE
        min_num := c;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Minimum number is: ' || min_num);
END;
/
```

## Output

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
Minimum number is: 12

PL/SQL procedure successfully completed.
```
