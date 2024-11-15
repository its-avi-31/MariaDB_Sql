CREATE DATABASE Employee;
SHOW DATABASES;
USE Employee;
CREATE Table Emp(
    Eid INT PRIMARY KEY,
    Ename VARCHAR(15) NOT NULL,
    Esalary INT,
    Eaddress VARCHAR(20),
    Mobile VARCHAR(10) UNIQUE
);
DROP TABLE Emp;
SHOW TABLES;
DESC Emp;
INSERT INTO Emp VALUES(1,'Avinash',55000,'Gkp',9555350896);
INSERT INTO Emp VALUES(2,'Abhishek',25000,'LKO',9555350890);
INSERT INTO Emp VALUES(3,'Govind',15000,'Gkp',8755350896);
INSERT INTO Emp VALUES(4,'Sandeep',35000,'MRJ',9555090896);
INSERT INTO Emp VALUES(5,'Mahi',55000,'Gkp',891350896);
SELECT * FROM Emp;
ALTER TABLE Emp
ADD COLUMN Department VARCHAR(10);
DESC Emp;
ALTER Table Emp
DROP COLUMN Department;
SELECT Eid,Ename,Esalary FROM Emp;
SELECT Eid,EName,Mobile FROM Emp WHERE Esalary=15000;
SELECT Ename FROM Emp WHERE
Ename LIKE 'A%';
SELECT Ename FROM Emp WHERE
Ename LIKE '%H';
SELECT Ename FROM Emp WHERE
Ename LIKE 'A______';          --Shows matching Words
SELECT Ename FROM Emp WHERE
Ename LIKE '____a__';  		--Shows matching Words
SELECT Ename FROM Emp 
ORDER BY Esalary;
SELECT Ename,Esalary FROM Emp 
ORDER BY Esalary;
SELECT * FROM Emp 
ORDER BY Esalary;
SELECT Ename,Esalary FROM Emp 
ORDER BY Esalary DESC;
SELECT DISTINCT Esalary FROM Emp;    --Duplicate Values are Escaped