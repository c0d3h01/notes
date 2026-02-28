-- Table Structure
CREATE TABLE employee001 (
  deptno NUMBER(2),
  empno NUMBER(4),
  ename VARCHAR2(20),
  salary NUMBER(8),
  joining_date DATE
);

-- Insert Records
INSERT INTO employee001 VALUES (10, 101, 'ARUN', 25000, TO_DATE('12-01-2012', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 102, 'ANIL', 18000, TO_DATE('25-03-2015', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 103, 'SUNIL', 22000, TO_DATE('10-01-2018', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (30, 104, 'RAHUL', 30000, TO_DATE('05-07-2009', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (10, 105, 'KIRAN', 28000, TO_DATE('15-01-2011', 'DD-MM-YYYY'));
INSERT INTO employee001 VALUES (20, 106, 'AMAN', 20000, TO_DATE('20-11-2016', 'DD-MM-YYYY'));
COMMIT;

-- SQL Queries
SELECT * FROM employee001 WHERE deptno = 20;
SELECT * FROM employee001 ORDER BY salary DESC;
SELECT * FROM employee001 WHERE ename LIKE '%N';
SELECT COUNT(*) AS total_employees FROM employee001;
SELECT SUM(salary) AS total_salary FROM employee001;
SELECT * FROM employee001 WHERE joining_date > TO_DATE('31-12-2010', 'DD-MM-YYYY');
SELECT ename FROM employee001 WHERE salary = (SELECT MAX(salary) FROM employee001);
SELECT ename FROM employee001 WHERE TO_CHAR(joining_date, 'MM') = '01';
SELECT ename, TO_CHAR(joining_date, 'DD-MM-YYYY') AS formatted_joining_date FROM employee001;
