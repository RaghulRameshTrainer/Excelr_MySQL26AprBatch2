/*
  DDL -> Data Definition Language (CREATE TABLE/CREATE DATABASE/CREATE VIEW/CREATE INDEX/ALTER STATEMENTS)
  DML -> Data Manupulation Language (INSERT, UPDATE, DELETE)
  DCL -> Data Control Language ( GRANT, REVOKE)
  TCL -> Transaction Control Language (COMMIT , ROLLBACK, SAVEPOINT)
*/

SELECT * FROM CUSTOMER;

START TRANSACTION;

UPDATE customer SET age=100;

ROLLBACK;

COMMIT;


/*
 DATABASE CONSTRAINTS:
 
 UNIQUE  -> Accept only the unique values
 NOT NULL -> WIll not accept the null value
 DEFAULT -> Go with default values when we dont give value for the particular column
 CHECK -> Check the value before it get inserted
 PRIMARY KEY -> combination of both UNIQUE and NOT NULL
 FOREIGN KEY -> To have reference with other column
*/

CREATE DATABASE constraints_test;

USE constraints_test;

CREATE TABLE unique_table(
custid INT UNIQUE,
custname VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO unique_table VALUES(100,'Levin Lenus','Hyderabad');

SELECT * FROM unique_table;

INSERT INTO unique_table VALUES(102,'Siva Murugan','Bangalore');


CREATE TABLE notnull_table(
custid INT NOT NULL,
custname VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO notnull_table VALUES(100,'Dinesh Kuamr','Pune');

SELECT * FROM notnull_table;

INSERT INTO notnull_table(custname,city) VALUES('Kavta Baskar','Delhi');
INSERT INTO notnull_table(custid,custname,city) VALUES(100,'Kavta Baskar','Delhi');


CREATE TABLE unique_notnull_table(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO unique_notnull_table(custid,custname,city) VALUES(100,'Rishabh Kumar','UP');

SELECT * FROM unique_notnull_table;

INSERT INTO unique_notnull_table(custid,custname,city) VALUES(101,'Aveek Mishra','Kolkatta');

SELECT count(*) FROM unique_notnull_table;


CREATE TABLE default_const_tbl(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Hyderabad'
);

INSERT INTO default_const_tbl(custid,custname) VALUES(1000,'Rajesh Kuamr');
SELECT * FROM default_const_tbl;
INSERT INTO default_const_tbl(custid,custname,city) VALUES(1001,'Ashwin Sekar','Chennai');

-- CHECK CONSTAINTS

CREATE TABLE check_const_tbl(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Hyderabad',
age INT CHECK (age >=0 AND age<=100)
);

INSERT INTO check_const_tbl VALUES(100,'Ravi Kuamr','Bangalore',22);

SELECT * FROM check_const_tbl;

CREATE TABLE check_const_tbl2(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Hyderabad',
age INT ,
country VARCHAR(100) CHECK ( country IN ('INDIA','CANADA','USA','AUSTRALIA'))
);


INSERT INTO check_const_tbl2 VALUES(100,'Ramamoorthy Kandasamy','Chennai',32,'INDIA');

SELECT * FROM check_const_tbl2;

INSERT INTO check_const_tbl2 VALUES(101,'Ramamoorthy Kandasamy','Chennai',32,'Canada');




CREATE TABLE check_const_tbl2(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Hyderabad',
age INT ,
country VARCHAR(100) CHECK ( country='INDIA' OR country='CANADA' OR country='USA' OR country='AUSTRALIA')
);

