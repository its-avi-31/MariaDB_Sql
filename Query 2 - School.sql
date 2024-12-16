SHOW DATABASES;
CREATE DATABASE School;
USE School;
CREATE TABLE Admission
(
 Rollno INT,
 Name_ VARCHAR(10),
 Course VARCHAR(10),
 Age INT,
 Fees INT,
 Address VARCHAR(20)
)
SHOW TABLES;
DESC Admission;
INSERT INTO Admission VALUES(1,'Avi','A level',22,10000,'LKO');
INSERT INTO Admission VALUES(2,'Mahi','ADCA',19,4200,'Gkp');
INSERT INTO Admission VALUES(1,'Nobita','A level',22,10000,'LKO');
INSERT INTO Admission VALUES(3,'Aman','A level',23,10000,'LKO');
INSERT INTO Admission VALUES(4,'Anamika','DCA',21,3600,'MRJ');
INSERT INTO Admission VALUES(6,'Xyz','DCA',20,3650,'-');
SELECT * FROM Admission;
SELECT * FROM admission WHERE rollno=1;
DELETE FROM Admission WHERE rollno=6; --Delete specific records based on condition
DELETE FROM Admission WHERE mobile=9555350896;
TRUNCATE Admission;  --Delete all records at once
UPDATE Admission
SET Rollno=5 WHERE RolLno=1 AND Name_='Nobita';
UPDATE admission
SET mobile=9555350896 WHERE rollno=1;
ALTER TABLE admission
ADD COLUMN Mobile VARCHAR(10);
ALTER TABLE admission
ADD COLUMN Dist VARCHAR(10);
ALTER TABLE Admission
DROP COLUMN Dist;
DROP DATABASE Admission;
