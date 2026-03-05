```sql
CREATE TABLE Customer (
    Custno NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    City VARCHAR2(30),
    Birthdate DATE,
    Occupation VARCHAR2(30),
    Duebalance NUMBER(10, 2)
);


INSERT INTO Customer VALUES (101, 'Ravi Kumar', 'Pune', TO_DATE('12-03-1980', 'DD-MM-YYYY'), 'Engineer', 12000);
INSERT INTO Customer VALUES (102, 'Suman Das', 'Mumbai', TO_DATE('20-07-1985', 'DD-MM-YYYY'), 'Doctor', 4000);
INSERT INTO Customer VALUES (103, 'Vijay More', 'Nashik', TO_DATE('15-05-1980', 'DD-MM-YYYY'), 'Engineer', 15000);
INSERT INTO Customer VALUES (104, 'Anita Desai', 'Pune', TO_DATE('05-09-1990', 'DD-MM-YYYY'), 'Teacher', 3000);
INSERT INTO Customer VALUES (105, 'Rahul Jain', 'Delhi', TO_DATE('10-02-1982', 'DD-MM-YYYY'), 'Doctor', 8000);

COMMIT;


SELECT * FROM Student 
WHERE TO_CHAR(Birthdate, 'MON') = 'MAY';


SELECT MAX(Feespaid) AS Maximum_Fees 
FROM Student;


SELECT * FROM Student 
WHERE City = 'Mumbai';


SELECT * FROM Student 
WHERE Name LIKE 'A%';

```
