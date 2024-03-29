CREATE DATABASE IF NOT EXISTS retail;
 DROP DATABASE retail;

USE retail;

/*
Datatypes:
==========
INT (DIGITS 0-9)
CHAR -> FIXED LENGTH OF CHARACTER
VARCHAR ->Variable Character
date
*/
CREATE TABLE customer(
custid INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
gender CHAR(1),
age INT,
city VARCHAR(20),
contact VARCHAR(50)
);

-- LOAD THE DATA INTO THE TABLE USING INSERT INTO QUERY
-- SYNTAX : INSERT INTO <TABLE_NAME>(COLUMN_NAME) VALUES(.....);

INSERT INTO CUSTOMER VALUES(1000,'Raghul','Ramesh','M',37,'ÇHENNAI','Raghul.R@gmail.com');

-- VIEW THE RECORDS LOADED IN TO THE TABLE
-- SELECT QUERY : Sytax=> SELECT * | Columns FROM TABLES

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(1001,'Satya','Raja','F',20,'Bangalore','+91-9876789899'),(1002,'Prabha','Bala','M',19,'Hyderabad','+91-9876789890'),
(1003,'Raj','Anand','M',21,'Chennai','+91-9876789892');


CREATE TABLE retail.TEST_TABLE(
id INT,
name VARCHAR(100)
);

CREATE DATABASE AMAZON;

USE AMAZON;

CREATE TABLE CUSTOMER(
custid INT,
custname VARCHAR(100),
age INT,
city VARCHAR(25),
mobile varchar(20)
);


INSERT INTO CUSTOMER
VALUES(1004,'Ashwin Sekar',17,'Chennai','9878987692');

SELECT custname,age FROM CUSTOMER WHERE city='Bangalore' AND age<30;

SELECT * FROM CUSTOMER;
SET sql_safe_updates=0;


UPDATE CUSTOMER SET city='Hyderabad' WHERE city='Bangalore';

DELETE FROM CUSTOMER WHERE AGE<18;


-- SELECT QUERY 

SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER WHERE city='ÇHENNAI' AND age>10;

SELECT * FROM CUSTOMER WHERE city='ÇHENNAI' OR age>10;

SELECT firstname,lastname,age FROM customer WHERE age>=20;
