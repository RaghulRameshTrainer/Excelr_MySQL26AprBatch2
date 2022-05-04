employeeuse batch2;

SELECT * FROM customer;

/* CASE STATEMENT SYNTAX:
CASE
WHEN <condition> THEN <action>
WHEN <condition1> THEN <action2>
ELSE <action>
END as alias_name
*/

SELECT custid, custname,city,
CASE
WHEN city='Chennai' THEN 'Tamil'
WHEN city='Bangalore' THEN 'Kannadam'
WHEN city='Hyderabad' THEN 'Telugu'
WHEN city='Pune' THEN 'Marathi'
ELSE 'Hindi'
END AS language
FROM customer;

use report;
SELECT * FROM customer;

SELECT c1.custname as CustomerName1 , c2.custname as CustomerName2 , c1.city
 FROM customer c1, customer c2
WHERE c1.city=c2.city
AND c1.custid <> c2.custid;

-- CTAS CREATE TABLE AS SELECT

CREATE TABLE batch2.user AS
SELECT custname,city FROM CUSTOMER WHERE city IN ('Chennai','Bangalore','Hyderabad','Pune');

SELECT * FROM batch2.user;

use batch2;

SELECT * FROM order_tbl;
INSERT INTO order_tbl(orderid,custid,product_name) VALUES(7,1001,'Table'),(8,1002,'Wrist Watch');

SELECT orderid,custid,product_name,IFNULL(amount,0) FROM order_tbl;

SELECT orderid,custid,product_name,COALESCE(amount,0) FROM order_tbl;

/* INDEX */

CREATE INDEX order_idx 
ON ORDER_TBL(orderid);

SELECT * FROM ORDER_TBL WHERE orderid <6;

SELECT SUM(amount) FROM order_tbl;

CREATE INDEX ord_custid
ON ORDER_TBL(orderid,custid);

SELECT * FROM ORDER_TBL WHERE orderid<6 and custid>1000;


ALTER TABLE order_tbl
DROP INDEX ord_custid;

SHOW INDEX FROM order_tbl;

/*
CREATE TRIGGER trigger_name
{BEFORE|AFTER|INSTEAD OF}
{INSER|UPDATE|DELETE}
[OF col_name]
ON table_name
[ REFERENCING OLD AS o NEW AS n ]
[FOR EACH ROW]
DECLARE
	variable
BEGIN
   INSERT INTO ALUMNI VALUES(old.empid,old.ename,old,city)
END;
/
*/


CREATE TRIGGER emp_audit_data
BEFORE DELETE
ON customer
DECLARE
	name VARCHAR(100)
BEGIN
   INSERT INTO ALUMNI VALUES(old.custid,old.custname,old.city)
END;
/