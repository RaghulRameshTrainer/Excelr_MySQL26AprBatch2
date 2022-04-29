USE constraints_test;

CREATE TABLE employee_pk(
empid INT PRIMARY KEY,
empname VARCHAR(100) NOT NULL,
age INT CHECK (age >0 and age <=100),
city VARCHAR(100) DEFAULT 'Bangalire'
);

INSERT INTO employee_pk VALUES(100,'Rajesh Kumar',25,'Bangalore');
SELECT * FROM employee_pk;

INSERT INTO employee_pk(empname,age,city) VALUES('Rajesh Kumar',25,'Bangalore');


CREATE TABLE ORDER_TBL (
order_id INT PRIMARY KEY,
empid INT,
product_name VARCHAR(100),
amount DECIMAL(12,2),
foreign key (empid) references employee_pk(empid)
);

INSERT INTO ORDER_TBL VALUES(1,100,'laptop',90000);
SELECT * FROM ORDER_TBL;
INSERT INTO ORDER_TBL VALUES(2,100,'mobile',25000);
INSERT INTO ORDER_TBL VALUES(3,100,'mobile',25000);
INSERT INTO ORDER_TBL VALUES(4,100,'laptop',25000);
INSERT INTO ORDER_TBL VALUES(5,100,'laptop',25000);
INSERT INTO ORDER_TBL VALUES(6,100,'mobile',25000);
INSERT INTO ORDER_TBL VALUES(7,100,'laptop',25000);
INSERT INTO ORDER_TBL VALUES(8,100,'mobile',25000);
INSERT INTO ORDER_TBL VALUES(9,100,'laptop',25000);
INSERT INTO ORDER_TBL VALUES(10,100,'mobile',25000);
INSERT INTO ORDER_TBL VALUES(11,100,'laptop',25000);
INSERT INTO ORDER_TBL VALUES(12,100,'mobile',25000);


SELECT product_name,sum(amount)
FROM ORDER_TBL
WHERE order_id < 11
GROUP BY product_name
HAVING sum(amount)>170000
ORDER BY sum(amount) desc;

SELECT * FROM ORDER_TBL;

SELECT * FROM ORDER_TBL;

SELECT * FROM ORDER_TBL
WHERE amount=( SELECT MAX(amount) 
				FROM ORDER_TBL);

SELECT * FROM retail.employee;

SELECT name FROM retail.employee
WHERE salary=(SELECT MAX(salary) FROM retail.employee);


SELECT gender,MAX(salary)
FROM  retail.employee
GROUP BY gender;

SELECT * FROM  retail.employee;

/*
 JOINS
 =====
 1. INNER JOIN
 2. OUTER JOIN
	a. LEFT OUTER JOIN
    b. RIGHT OUTER JOIN
    c. CROSS JOIN
*/

use retail;

SELECT * FROM CUSTOMER;
SELECT * FROM EMPLOYEE;
CREATE TABLE ORDER_TBL


