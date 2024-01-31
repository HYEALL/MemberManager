-- Active: 1706606808596@@127.0.0.1@3306@membermanger

CREATE TABLE Member
( 
ID INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
BirthDate DATE NOT NULL, 
CreateDate DATE NOT NULL, 
ExpirationDate DATE, 
RemainCount INT, 
Valid BOOLEAN
);

INSERT INTO Member(ID, Name, BirthDate, CreateDate, ExpirationDate, Valid) VALUES
(1, '곽성은', '2001-01-01', '2023-12-31', '2024-03-01', True),
(2, '곽은성', '2000-01-01', '2023-1-31', '2024-04-01', True);