use batch2;

-- GRANT SELECT , INSERT, UPDATE, DELETE ON CUSTOMER TO 'raghul'@localhost

-- GRANT SELECT ON CUSTOMER TO rajesh@localhost;
-- GRANT SELECT,INSERT ON CUSTOMER TO rajesh@localhost;
-- GRANT SELECT,INSERT,UPDATE ON CUSTOMER TO rajesh@localhost;

-- GRANT ALL ON CUSTOMER TO user@machinename;

-- REVOKE INSERT ON CUSTOMER TO rajesh@localhost;
-- REVOKE ALL ON CUSTOMER TO rajesh@localhost;
SELECT * FROM CUSTOMER;
SELECT o.orderid,o.custid,c.custname,c.city,o.product_name,o.amount 
FROM ORDER_TBL o INNER JOIN CUSTOMER c
ON o.custid=c.custid;

SET sql_safe_updates=0;


START TRANSACTION;
SELECT * FROM cust_table2;
-- DELETE FROM cust_table1;
truncate table cust_table2;
ROLLBACK;


SELECT DISTINCT custid FROM ORDER_TBL;

SELECT * FROM ORDER_TBL LIMIT 5;

SELECT * FROM CUSTOMER
WHERE EXISTS ( SELECT PRODUCT_NAME
FROM ORDER_TBL
WHERE  ORDER_TBL.custid=CUSTOMER.custid)


SELECT custid, custname,city,
CASE
WHEN city='Chennai' THEN 'Tamil'
WHEN city='Bangalore' THEN 'Kannadam'
WHEN city='Hyderabad' THEN 'Telugu'
WHEN city='Pune' THEN 'Marathi'
ELSE 'Hindi'
END AS language
FROM customer;

SELECT * FROM customer;

SELECT custid, LCASE(custname), LCASE(city) FROM customer;

SELECT custid, LOWER(custname), UPPER(city) FROM customer;

SELECT * FROM CUSTOMER WHERE custid between 1000 AND 1002;

SELECT * FROM CUSTOMER WHERE city NOT LIKE "%n%";

SELECT * FROM ORDER_TBL;

select UPPER(product_name),amount from ORDER_TBL where product_name like '%o%' 
ORDER BY AMOUNT ;