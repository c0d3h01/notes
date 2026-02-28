# DBMS Journal Assignments

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

### 2. Display empno, ename, salary of employee working as a 'Clerk'.

**Query Code:**

```sql
SELECT empno, ename, salary FROM employee001 WHERE job = 'Clerk';

```

**Output:**
`no rows selected`

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

### 5. Count total number of employees.

**Query Code:**

```sql
SELECT COUNT(*) AS total_employees FROM employee001;

```

**Output:**

| TOTAL_EMPLOYEES |
| --------------- |
| 6               |

### 6. Display total salary.

**Query Code:**

```sql
SELECT SUM(salary) AS total_salary FROM employee001;

```

**Output:**

| TOTAL_SALARY |
| ------------ |
| 143000       |

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

### 8. Display name of the employees having maximum salary.

**Query Code:**

```sql
SELECT ename FROM employee001 WHERE salary = (SELECT MAX(salary) FROM employee001);

```

**Output:**

| ENAME |
| ----- |
| RAHUL |

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
