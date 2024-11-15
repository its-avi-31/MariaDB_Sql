SHOW DATABASES;
CREATE DATABASE Hospital_Management_System;
SELECT DATABASE();
SHOW TABLES;
USE Hospital_Management_System;
CREATE TABLE tblPatient
(
 Patient_id VARCHAR(10) PRIMARY KEY,
 Name_ VARCHAR(50),
 Age INT,
 Gender VARCHAR(50),
 Address VARCHAR(50),
 Disease VARCHAR(50),
 Doctor_id VARCHAR(20) 
);
DESC tblpatient;
INSERT INTO tblpatient VALUES(1,'Sahu',15,'Male','Gorakhpur','Love',111);
INSERT INTO tblpatient VALUES(2,'Shatyam',25,'Male','Shaharanpur','Fever',101);
INSERT INTO tblpatient VALUES(3,'Vasudha',18,'Female','Delhi','Vommiting',102);
INSERT INTO tblpatient VALUES(5,'Durgesh',67,'Male','Mrj','Heart Attack',121);
INSERT INTO tblpatient VALUES(4,'Shabir',15,'Male','LKO','Blindness',112);
SELECT * FROM tblpatient;
SHOW TABLES;
DROP TABLE tblpatient;
CREATE TABLE tblDoctor
(
 Doctor_id VARCHAR(10) PRIMARY KEY,
 NAME_ VARCHAR(30),
 Age INT,
 Gender VARCHAR(50),
 Address VARCHAR(50) 
);
DESC tblDoctor;
INSERT INTO tblDoctor VALUES(1,'Avi',15,'Male','Gorakhpur');
INSERT INTO tblDoctor VALUES(5,'Sahu',15,'Male','Gorakhpur');
INSERT INTO tblDoctor VALUES(2,'Sahu',15,'Male','Gorakhpur');
INSERT INTO tblDoctor VALUES(3,'Sahu',15,'Male','Gorakhpur');
INSERT INTO tblDoctor VALUES(4,'Sahu',15,'Male','Gorakhpur');
SELECT * FROM tblDoctor;
UPDATE tblDoctor
SET NAME_='Aditya' where Doctor_id=5;
CREATE TABLE tblLab
(
 Lab_no VARCHAR(10) PRIMARY KEY,
 Patient_id VARCHAR(10),
 Doctor_id VARCHAR(10),
 Date_ VARCHAR(10),
 Amount INT
);
DESC tblLab;
INSERT INTO tblLab VALUES(2,1,101,'2024-11-13',2000);
UPDATE tblLab
SET Date_='2024-11-13' WHERE Lab_no=5;
INSERT INTO tblLab VALUES(1,2,102,'2024-11-13',2000);
INSERT INTO tblLab VALUES(4,3,103,'2024-11-13',2000);
INSERT INTO tblLab VALUES(3,4,104,'2024-11-13',2000);
INSERT INTO tblLab VALUES(5,5,105,'2024-11-13',2000);
SELECT * FROM tblLab;
CREATE TABLE tbllnPatient
(
 Patient_id VARCHAR(10) PRIMARY KEY,
 Room_no VARCHAR(50),
 Date_of_adm DATETIME,
 Date_of_dis DATETIME,
 Lab_no VARCHAR(10) 
);
DESC tbllnPatient;
INSERT INTO tbllnPatient values(1,2,'2024-10-09','2024-11-13',3);
INSERT INTO tbllnPatient values(3,2,'2024-10-09','2024-11-13',3);
INSERT INTO tbllnPatient values(2,2,'2024-10-09','2024-11-13',3);
INSERT INTO tbllnPatient values(4,2,'2024-10-09','2024-11-13',3);
INSERT INTO tbllnPatient values(5,2,'2024-10-09','2024-11-13',3);
SELECT * from tbllnPatient;
CREATE TABLE tblRoom
(
 Room_no VARCHAR(50) PRIMARY KEY,
 Room_type VARCHAR(50),
 Status_ VARCHAR(20)
);
DESC tblRoom;
INSERT INTO tblRoom values(1,'OPD','Normal');
INSERT INTO tblRoom values(2,'Emergency','Normal');
INSERT INTO tblRoom values(3,'OPD','Normal');
INSERT INTO tblRoom values(4,'Emergency','Normal');
INSERT INTO tblRoom values(5,'OPD','Normal');
SELECT * FROM tblRoom;
CREATE TABLE tblOutpatient
(
 Patient_id VARCHAR(10) PRIMARY KEY,
 Date_ VARCHAR(10), 
 Lab_no VARCHAR(20) 
);
DESC tblOutpatient;
INSERT INTO tblOutpatient VALUES(1,'2024-11-10',4);
INSERT INTO tblOutpatient VALUES(2,'2024-11-10',4);
INSERT INTO tblOutpatient VALUES(3,'2024-11-10',4);
SELECT * FROM tblOutpatient;
CREATE TABLE tblBill
(
 Bill_no INT PRIMARY KEY,
 Patient_id INT,
 Doctor_charge INT,
 Room_charge INT,
 No_of_days INT,
 Lab_charge INT,
 Bill INT
 );
 DESC tblBill;
 INSERT into tblBill VALUES(1,1,2500,500,10,1000,4000);
 INSERT into tblBill VALUES(2,2,2500,500,10,1000,4000);
 INSERT into tblBill VALUES(3,3,2500,500,10,1000,4000);
 INSERT into tblBill VALUES(4,4,2500,500,10,1000,4000);
 INSERT into tblBill VALUES(5,5,2500,500,10,1000,4000);
 SELECT * FROM tblBill;
 SHOW TABLES;
 