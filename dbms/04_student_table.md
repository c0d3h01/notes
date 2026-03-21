# Program 04

**Question:** Create following table with proper constraints (Enter at least 5 valid records). Student (Roll no, Name, City, Birthdate, Feespaid, Course).

## Program

```sql
CREATE TABLE Student (
    Rollno    NUMBER(5) PRIMARY KEY,
    Name      VARCHAR2(50) NOT NULL,
    City      VARCHAR2(30),
    Birthdate DATE,
    Feespaid  NUMBER(10, 2),
    Course    VARCHAR2(30)
);

INSERT INTO Student VALUES (1, 'Amit Sharma',   'Mumbai', TO_DATE('10-05-2002', 'DD-MM-YYYY'), 45000, 'BCA');
INSERT INTO Student VALUES (2, 'Anjali Patil',  'Pune',   TO_DATE('22-03-2001', 'DD-MM-YYYY'), 50000, 'MCA');
INSERT INTO Student VALUES (3, 'Rahul Verma',   'Mumbai', TO_DATE('15-05-2000', 'DD-MM-YYYY'), 42000, 'BCA');
INSERT INTO Student VALUES (4, 'Anil Desai',    'Nashik', TO_DATE('08-07-2003', 'DD-MM-YYYY'), 48000, 'MBA');
INSERT INTO Student VALUES (5, 'Sneha Kulkarni','Delhi',  TO_DATE('30-11-2001', 'DD-MM-YYYY'), 55000, 'MCA');

COMMIT;

SELECT * FROM Student;
```

## Output

```
ROLLNO  NAME             CITY    BIRTHDATE   FEESPAID  COURSE
------  ---------------  ------  ----------  --------  ------
1       Amit Sharma      Mumbai  10-05-2002  45000     BCA
2       Anjali Patil     Pune    22-03-2001  50000     MCA
3       Rahul Verma      Mumbai  15-05-2000  42000     BCA
4       Anil Desai       Nashik  08-07-2003  48000     MBA
5       Sneha Kulkarni   Delhi   30-11-2001  55000     MCA

5 rows selected.
```

______________________________________________________________________

### 1. Display details of student born in the month of 'May'.

## Program

```sql
SELECT * FROM Student WHERE TO_CHAR(Birthdate, 'MON') = 'MAY';
```

## Output

```
ROLLNO  NAME          CITY    BIRTHDATE   FEESPAID  COURSE
------  ------------  ------  ----------  --------  ------
1       Amit Sharma   Mumbai  10-05-2002  45000     BCA
3       Rahul Verma   Mumbai  15-05-2000  42000     BCA
```

______________________________________________________________________

### 2. Display maximum feespaid.

## Program

```sql
SELECT MAX(Feespaid) AS Maximum_Fees FROM Student;
```

## Output

```
MAXIMUM_FEES
------------
55000
```

______________________________________________________________________

### 3. Display details of student living in 'Mumbai'.

## Program

```sql
SELECT * FROM Student WHERE City = 'Mumbai';
```

## Output

```
ROLLNO  NAME          CITY    BIRTHDATE   FEESPAID  COURSE
------  ------------  ------  ----------  --------  ------
1       Amit Sharma   Mumbai  10-05-2002  45000     BCA
3       Rahul Verma   Mumbai  15-05-2000  42000     BCA
```

______________________________________________________________________

### 4. Display details of student whose name starts with 'A'.

## Program

```sql
SELECT * FROM Student WHERE Name LIKE 'A%';
```

## Output

```
ROLLNO  NAME           CITY    BIRTHDATE   FEESPAID  COURSE
------  -------------  ------  ----------  --------  ------
1       Amit Sharma    Mumbai  10-05-2002  45000     BCA
2       Anjali Patil   Pune    22-03-2001  50000     MCA
4       Anil Desai     Nashik  08-07-2003  48000     MBA
```
