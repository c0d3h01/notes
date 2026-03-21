# Program 02

**Question:** Solve the following queries on the employee table.

______________________________________________________________________

### 1. Display details of employee working in deptno 20.

## Program

```sql
SELECT * FROM employee001 WHERE deptno = 20;
```

## Output

```
DEPTNO  EMPNO  ENAME   SALARY  JOINING_DATE
------  -----  ------  ------  ------------
20      102    ANIL    18000   25-03-2015
20      103    SUNIL   22000   10-01-2018
20      106    AMAN    20000   20-11-2016
```

______________________________________________________________________

### 2. Display empno, ename, salary of employee working as a 'Clerk'.

## Program

```sql
SELECT empno, ename, salary FROM employee001 WHERE job = 'Clerk';
```

## Output

```
no rows selected
```

______________________________________________________________________

### 3. Arrange employee data in descending order of salary.

## Program

```sql
SELECT * FROM employee001 ORDER BY salary DESC;
```

## Output

```
DEPTNO  EMPNO  ENAME   SALARY  JOINING_DATE
------  -----  ------  ------  ------------
30      104    RAHUL   30000   05-07-2009
10      105    KIRAN   28000   15-01-2011
10      101    ARUN    25000   12-01-2012
20      103    SUNIL   22000   10-01-2018
20      106    AMAN    20000   20-11-2016
20      102    ANIL    18000   25-03-2015
```

______________________________________________________________________

### 4. Display details of employee whose name ends with 'N'.

## Program

```sql
SELECT * FROM employee001 WHERE ename LIKE '%N';
```

## Output

```
DEPTNO  EMPNO  ENAME   SALARY  JOINING_DATE
------  -----  ------  ------  ------------
10      101    ARUN    25000   12-01-2012
10      105    KIRAN   28000   15-01-2011
20      106    AMAN    20000   20-11-2016
```

______________________________________________________________________

### 5. Count total number of employees.

## Program

```sql
SELECT COUNT(*) AS total_employees FROM employee001;
```

## Output

```
TOTAL_EMPLOYEES
---------------
6
```

______________________________________________________________________

### 6. Display total salary.

## Program

```sql
SELECT SUM(salary) AS total_salary FROM employee001;
```

## Output

```
TOTAL_SALARY
------------
143000
```

______________________________________________________________________

### 7. Display details of employees joined after 2010.

## Program

```sql
SELECT * FROM employee001 WHERE joining_date > TO_DATE('31-12-2010', 'DD-MM-YYYY');
```

## Output

```
DEPTNO  EMPNO  ENAME   SALARY  JOINING_DATE
------  -----  ------  ------  ------------
10      101    ARUN    25000   12-01-2012
20      102    ANIL    18000   25-03-2015
20      103    SUNIL   22000   10-01-2018
10      105    KIRAN   28000   15-01-2011
20      106    AMAN    20000   20-11-2016
```

______________________________________________________________________

### 8. Display name of the employees having maximum salary.

## Program

```sql
SELECT ename FROM employee001 WHERE salary = (SELECT MAX(salary) FROM employee001);
```

## Output

```
ENAME
-----
RAHUL
```

______________________________________________________________________

### 9. Display name of employees who have joined in January.

## Program

```sql
SELECT ename FROM employee001 WHERE TO_CHAR(joining_date, 'MM') = '01';
```

## Output

```
ENAME
-----
ARUN
SUNIL
KIRAN
```

______________________________________________________________________

### 10. Display joining date in 'dd-mm-yyyy' format.

## Program

```sql
SELECT ename, TO_CHAR(joining_date, 'DD-MM-YYYY') AS formatted_joining_date FROM employee001;
```

## Output

```
ENAME   FORMATTED_JOINING_DATE
------  ----------------------
ARUN    12-01-2012
ANIL    25-03-2015
SUNIL   10-01-2018
RAHUL   05-07-2009
KIRAN   15-01-2011
AMAN    20-11-2016
```
