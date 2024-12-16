Show DATABASES;
CREATE DATABASE Joinop;
USE Joinop;
SELECT DATABASE();a
CREATE Table Employee(
    Emp_ID int PRIMARY KEY,
    Emp_Name VARCHAR(20),
    City VARCHAR(12) not NULL,
    Salary INT,
    Age INT NOT null
);
SHOW tables;
CREATE table Project(
    Project_no INT,
    Emp_ID INT,
    Department VARCHAR(10)
);
DESCRIBE Employee;
INSERT INTO employee VALUES(1,'Avi','Lko',50000,22);
INSERT INTO employee VALUES(2,'Aman','Lko',30000,23);
INSERT INTO employee VALUES(3,'Mahi','GKP',45000,19);
INSERT INTO employee VALUES(4,'Swati','Agra',15000,20);
INSERT INTO employee VALUES(5,'Ismail','Pak',5000,16);
SELECT * FROM Employee;
DESC Project;
INSERT into Project VALUES(2,1,'Science');
INSERT into Project VALUES(1,3,'Commerce');
INSERT into Project VALUES(3,3,'Science');
INSERT into Project VALUES(5,2,'English');
INSERT into Project VALUES(6,7,'English');
INSERT into Project VALUES(4,5,'Maths');
SELECT * FROM Project;
-- Inner Join
SELECT Employee.Emp_ID,Employee.Emp_Name,Project.Department from Employee
INNER JOIN Project ON Project.Emp_iD=Employee.Emp_iD;

-- SELECT * from Employee AND Project from employee inner JOIN Project ON Project.Emp_ID=Employee.Emp_ID;

-- Left outer join
SELECT Employee.Emp_Name,Project.Department FROM employee LEFT JOIN
Project ON employee.Emp_ID=Project.Emp_ID; 

-- RIGHT outer join
SELECT Employee.Emp_Name,Project.Department FROM employee RIGHT OUTER JOIN
project ON Project.Emp_ID=Employee.Emp_ID;

/* Full join(Don't Run this Query Syntax in MariaDB)
-- SELECT Employee.Emp_Name,Project.Department FROM Employee FULL JOIN
-- project on Project.Emp_id=Employee.Emp_Id; */

-- Full Join(Right Syntax)
SELECT Employee.Emp_Name,Project.Department FROM employee LEFT OUTER JOIN
project on Project.Emp_id=Employee.emp_id
UNION
SELECT Employee.Emp_Name,Project.Department FROM Employee RIGHT OUTER JOIN
project on Project.Emp_Id=Employee.emp_id;



/* Foreign Key concept --> */

SHOW TABLES;
CREATE Table Persons(
    PersonId INT PRIMARY Key,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Age INT
);
DESC Persons;
CREATE TABLE Orders(
    OrderId INT NOT NULL,
    OrderNumber INT NOT NULL,
    PersonId int,
    PRIMARY KEY(OrderId),
    Foreign Key (PersonId) REFERENCES Persons(PersonId)
);
DESC Orders;
Select * from Persons;
insert into Persons values(1,'Gond','Avi',22);
insert into Persons values(2,'Gond','Aliya',19);
insert into Persons values(3,'Prajapati','Aman',23);

SELECT * from Orders;
INSERT into Orders values(101,1,3);
INSERT into Orders values(102,2,3);
INSERT into Orders values(103,3,2);
INSERT into Orders values(104,4,1);
DESC orders;

Select * from Persons;
SELECT orderNumber=3 from Persons;