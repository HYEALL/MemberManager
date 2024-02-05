-- Active: 1706606808596@@127.0.0.1@3306@membermanager

USE membermanager; 
CREATE TABLE Member
( 
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,  
birthDate DATE NOT NULL, 
createDate DATE NOT NULL, 
expirationDate DATE, 
remainCount INT, 
valid BOOLEAN DEFAULT TRUE
);

INSERT INTO Member(ID, Name, BirthDate, CreateDate, ExpirationDate, Valid) VALUES
(1, '곽성은', '2001-01-01', '2023-12-31', '2024-03-01', True),
(2, '곽은성', '2000-01-01', '2023-1-31', '2024-04-01', True);

