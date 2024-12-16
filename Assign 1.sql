SHOW DATABASES;
CREATE DATABASE Mumbai;
USE Mumbai;
SELECT database();
show tables;
create table Hotel(
    Hotel_no int,
    Name_ VARCHAR(20),
    Address_ varchar(20),
    PRIMARY key(Hotel_no)
);
DROP TABLE Hotel;
desc Hotel;
insert into hotel values(1,'Taj','Mumbai');
insert into hotel values(2,'Oyo','Mumbai');
insert into hotel values(3,'Bob','Mumbai');
--UPDATE Hotel
--SET Address_='Mumbai' WHERE Hotel_no=3; 
DELETE from Hotel;
SELECT * from Hotel;
CREATE table Room(
    Room_no int,
    Hotel_no int,
    Type_ VARCHAR(10),
    Price INT,
    PRIMARY key(Hotel_no,Room_no),
    Foreign Key (Hotel_no) REFERENCES Hotel(Hotel_no)
);
DROP TABLE Room;
DESCRIBE room;
Insert into Room VALUES(101,2,'Single',1000);
Insert into Room VALUES(104,1,'Double',800);
Insert into Room VALUES(103,3,'Double',1500);
INSERT into room values(105,3,'Single',700);
AlTER table Room modify Type_ VARCHAR(10);
SELECT * from Room;
CREATE table Booking(
    Hotel_no INT,
    Guest_no INT,
    Date_from date,
    Date_to DATE,
    Room_no int,
    PRIMARY key(Hotel_no,Guest_no,Date_from)
);
DROP TABLE Booking;
DESC Booking;
INSERT into Booking VALUES(1,11,'2024-10-13','2024-10-23',101);
INSERT into Booking VALUES(2,12,'2024-11-13','2024-10-23',104);
INSERT into Booking VALUES(3,13,'2024-10-11','2024-10-23',105);
SELECT * from Booking;
Create table Guest(
    Guest_no int,
    Name_ VARCHAR(10),
    Address_ VARCHAR(20),
    PRIMARY key(Guest_no)
);
DROP TABLE Guest;
SHOW tables;
DESC Guest;
INSERT INTO Guest VALUES(12,'Avinash','GKP');
INSERT INTO Guest VALUES(13,'Mahi','GKP');
INSERT INTO Guest VALUES(11,'Aman','LKO');
SELECT * FROM Guest;
