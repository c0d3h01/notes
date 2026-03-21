# Program 01

**Question:** Create table employee, add at least 6 rows. Employee (deptno, empno, ename, salary, joining date).

## Program

```sql
CREATE TABLE employee001 (
    deptno NUMBER(2),
    empno NUMBER(4),
    ename VARCHAR2(20),
    salary NUMBER(8),
    joining_date DATE
);

INSERT INTO employee001 VALUES (10, 101, 'ARUN',  25000, TO_DATE('12-01-2012', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 102, 'ANIL',  18000, TO_DATE('25-03-2015', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 103, 'SUNIL', 22000, TO_DATE('10-01-2018', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (30, 104, 'RAHUL', 30000, TO_DATE('05-07-2009', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (10, 105, 'KIRAN', 28000, TO_DATE('15-01-2011', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 106, 'AMAN',  20000, TO_DATE('20-11-2016', 'DD-MM-YYYY'));

COMMIT;

SELECT * FROM employee001;
```

## Output

```
DEPTNO  EMPNO  ENAME   SALARY  JOINING_DATE
------  -----  ------  ------  ------------
10      101    ARUN    25000   12-01-2012
20      102    ANIL    18000   25-03-2015
20      103    SUNIL   22000   10-01-2018
30      104    RAHUL   30000   05-07-2009
10      105    KIRAN   28000   15-01-2011
20      106    AMAN    20000   20-11-2016

6 rows selected.
```
