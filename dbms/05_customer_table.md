# Program 05

**Question:** Create following table with proper constraints (Enter at least 5 valid records). Customer (Custno, Name, City, Birthdate, Occupation, Duebalance).

## Program

```sql
CREATE TABLE Customer (
    Custno     NUMBER(5) PRIMARY KEY,
    Name       VARCHAR2(50) NOT NULL,
    City       VARCHAR2(30),
    Birthdate  DATE,
    Occupation VARCHAR2(30),
    Duebalance NUMBER(10, 2)
);

INSERT INTO Customer VALUES (101, 'Ravi Kumar',   'Pune',   TO_DATE('12-03-1980', 'DD-MM-YYYY'), 'Engineer', 12000);
INSERT INTO Customer VALUES (102, 'Suman Das',    'Mumbai', TO_DATE('20-07-1985', 'DD-MM-YYYY'), 'Doctor',   4000);
INSERT INTO Customer VALUES (103, 'Vijay More',   'Nashik', TO_DATE('15-05-1980', 'DD-MM-YYYY'), 'Engineer', 15000);
INSERT INTO Customer VALUES (104, 'Anita Desai',  'Pune',   TO_DATE('05-09-1990', 'DD-MM-YYYY'), 'Teacher',  3000);
INSERT INTO Customer VALUES (105, 'Rahul Jain',   'Delhi',  TO_DATE('10-02-1982', 'DD-MM-YYYY'), 'Doctor',   8000);

COMMIT;

SELECT * FROM Customer;
```

## Output

```
CUSTNO  NAME          CITY    BIRTHDATE   OCCUPATION  DUEBALANCE
------  ------------  ------  ----------  ----------  ----------
101     Ravi Kumar    Pune    12-03-1980  Engineer    12000
102     Suman Das     Mumbai  20-07-1985  Doctor      4000
103     Vijay More    Nashik  15-05-1980  Engineer    15000
104     Anita Desai   Pune    05-09-1990  Teacher     3000
105     Rahul Jain    Delhi   10-02-1982  Doctor      8000

5 rows selected.
```

---

### 1. Display details of customer living other than 'Pune' city.

## Program

```sql
SELECT * FROM Customer WHERE City != 'Pune';
```

## Output

```
CUSTNO  NAME          CITY    BIRTHDATE   OCCUPATION  DUEBALANCE
------  ------------  ------  ----------  ----------  ----------
102     Suman Das     Mumbai  20-07-1985  Doctor      4000
103     Vijay More    Nashik  15-05-1980  Engineer    15000
105     Rahul Jain    Delhi   10-02-1982  Doctor      8000
```

---

### 2. Display details of customer eliminating duplicate occupation.

## Program

```sql
SELECT DISTINCT Occupation FROM Customer;
```

## Output

```
OCCUPATION
----------
Engineer
Doctor
Teacher
```

---

### 3. Display details of customer whose duebalance is less than 5000 or greater than 10000.

## Program

```sql
SELECT * FROM Customer WHERE Duebalance < 5000 OR Duebalance > 10000;
```

## Output

```
CUSTNO  NAME          CITY    BIRTHDATE   OCCUPATION  DUEBALANCE
------  ------------  ------  ----------  ----------  ----------
102     Suman Das     Mumbai  20-07-1985  Doctor      4000
101     Ravi Kumar    Pune    12-03-1980  Engineer    12000
103     Vijay More    Nashik  15-05-1980  Engineer    15000
104     Anita Desai   Pune    05-09-1990  Teacher     3000
```

---

### 4. Display details of customer born in the year 1980.

## Program

```sql
SELECT * FROM Customer WHERE TO_CHAR(Birthdate, 'YYYY') = '1980';
```

## Output

```
CUSTNO  NAME         CITY    BIRTHDATE   OCCUPATION  DUEBALANCE
------  -----------  ------  ----------  ----------  ----------
101     Ravi Kumar   Pune    12-03-1980  Engineer    12000
103     Vijay More   Nashik  15-05-1980  Engineer    15000
```
