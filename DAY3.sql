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


