/*
JOINS -> To connect one table with other table
Two types of joins
INNER JOIN
OUTER JOIN
	- LEFT OUTER JOIN
    - RIGHT OUTER JOIN
	- CROSS JOIN
*/

CREATE DATABASE batch2;
use batch2;

CREATE TABLE CUSTOMER(
custid INT PRIMARY KEY,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Delhi'
);

INSERT INTO CUSTOMER 
VALUES(1000,'Rajesh','Chennai'),
(1001,'Aveek','Bangalore'),
(1002,'Venkatesh','Hyderabad'),
(1003,'Prakash','Pune');

SELECT * FROM CUSTOMER;

CREATE TABLE ORDER_TBL(
orderid INT PRIMARY KEY,
custid INT,
product_name VARCHAR(100) NOT NULL,
amount DECIMAL(12,2)
);

INSERT INTO ORDER_TBL
VALUES(1,1000,'Mobile',25000),
(2,1001,'Laptop',70000),
(3,1000,'Charger',1500),
(4,1001,'Tab',20000),
(5,1002,'Desktop',15000),
(6,1100,'Powebank',3000);

SELECT * FROM ORDER_TBL;

SELECT * FROM CUSTOMER c INNER JOIN ORDER_TBL o ON c.custid=o.custid;

SELECT * FROM CUSTOMER c LEFT JOIN ORDER_TBL o ON c.custid=o.custid;

SELECT * FROM CUSTOMER c RIGHT JOIN ORDER_TBL o ON c.custid=o.custid;

SELECT * FROM CUSTOMER c CROSS JOIN ORDER_TBL o;








