SHOW DATABASES;
CREATE DATABASE student;
USE student;
CREATE TABLE student 
(
  Rollno INT,
  N_ame VARCHAR(10),
  Address VARCHAR(20),
  Age INT
);
INSERT INTO student VALUES(1,'Mahi','GKP',19);
INSERT INTO student VALUES(2,'Nobita','LKO',22);
SELECT * FROM student;