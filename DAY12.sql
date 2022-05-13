REM   Script: DAY12_BATCH2
REM   DAY12

CREATE TABLE CUSTOMERS(   
ID INT PRIMARY KEY,   
NAME VARCHAR2(100) NOT NULL,   
AGE INT NOT NULL,   
CITY VARCHAR2(30),   
SALARY DECIMAL(30,2)   
);

INSERT INTO CUSTOMERS VALUES(1,'Raghul',37,'Chennai',100000);

INSERT INTO CUSTOMERS VALUES(2,'Parth',27,'Delhi',75000);

INSERT INTO CUSTOMERS VALUES(3,'Pankaj',25,'Pune',125000);

INSERT INTO CUSTOMERS VALUES(4,'Dhoni',39,'Ranchi',200000);

INSERT INTO CUSTOMERS VALUES(5,'Kholi',34,'Bangalore',150000);

SELECT * FROM CUSTOMERS;

CREATE OR REPLACE FUNCTION get_coustomers_count 
RETURN number IS 
    total number; 
BEGIN 
    SELECT COUNT(*) INTO total FROM CUSTOMERS; 
    RETURN total; 
END; 
/

DECLARE 
    c number; 
BEGIN 
c := get_coustomers_count(); 
dbms_output.put_line(' Total number of registered customer : ' || c); 
END;
/

SELECT COUNT(*) FROM CUSTOMERS;

DECLARE 
    c number; 
BEGIN 
c := get_coustomers_count(); 
dbms_output.put_line(' Total number of registered customer : ' || c); 
END; 
/

DECLARE  
    value1 number; 
    value2 number; 
    min_value number; 
    FUNCTION  findMin(x IN number, y IN number) 
    RETURN number IS 
        res number; 
    BEGIN 
        IF x < y THEN 
            res := x; 
        ELSE 
            res := y; 
        END IF; 
         
        RETURN res; 
END; 
BEGIN 
    value1 := 10; 
    value2 := 20; 
   min_value :=  findMin(value1, value2); 
   dbms_put.put_line(' Minimum of (10,20) is : ' || min_value); 
END; 
/

DECLARE  
    value1 number; 
    value2 number; 
    min_value number; 
    FUNCTION  findMin(x IN number, y IN number) 
    RETURN number IS 
        res number; 
    BEGIN 
        IF x < y THEN 
            res := x; 
        ELSE 
            res := y; 
        END IF; 
         
        RETURN res; 
END; 
BEGIN 
    value1 := 10; 
    value2 := 20; 
   min_value :=  findMin(value1, value2); 
   dbms_put.output_line(' Minimum of (10,20) is : ' || min_value); 
END; 
/

DECLARE  
    value1 number; 
    value2 number; 
    min_value number; 
    FUNCTION  findMin(x IN number, y IN number) 
    RETURN number IS 
        res number; 
    BEGIN 
        IF x < y THEN 
            res := x; 
        ELSE 
            res := y; 
        END IF; 
         
        RETURN res; 
END; 
BEGIN 
    value1 := 10; 
    value2 := 20; 
   min_value :=  findMin(value1, value2); 
   dbms_output.put_line(' Minimum of (10,20) is : ' || min_value); 
END; 
/

DECLARE  
    value1 number; 
    value2 number; 
    min_value number; 
    FUNCTION  findMin(x IN number, y IN number) 
    RETURN number IS 
        res number; 
    BEGIN 
        IF x < y THEN 
            res := x; 
        ELSE 
            res := y; 
        END IF; 
         
        RETURN res; 
END; 
BEGIN 
    value1 := 26523452; 
    value2 := 827347598; 
   min_value :=  findMin(value1, value2); 
   dbms_output.put_line(' Minimum of (26523452,827347598) is : ' || min_value); 
END; 
/

DECLARE 
    num number; 
    factorial number; 
     
    FUNCTION fact(x number) 
    RETURN number IS 
        f number; 
    BEGIN 
        IF x=0 THEN 
            f := 1; 
        ELSE 
            f := x * fact(x-1)   -- => 5 * 4 * 3 * 2*1*1 
        END IF; 
         
        RETURN f; 
END; 
BEGIN 
    num := 5; 
   factorial :=  fact(num); 
   dbms_output.put_line('Factorial of 5 is ' || factorial); 
END; 
/

DECLARE 
    num number; 
    factorial number; 
     
    FUNCTION fact(x number) 
    RETURN number IS 
        f number; 
    BEGIN 
        IF x=0 THEN 
            f := 1; 
        ELSE 
            f := x * fact(x-1);   -- => 5 * 4 * 3 * 2*1*1 
        END IF; 
         
        RETURN f; 
END; 
BEGIN 
    num := 5; 
   factorial :=  fact(num); 
   dbms_output.put_line('Factorial of 5 is ' || factorial); 
END; 
/

DECLARE 
    num number; 
    factorial number; 
     
    FUNCTION fact(x number) 
    RETURN number IS 
        f number; 
    BEGIN 
        IF x=0 THEN 
            f := 1; 
        ELSE 
            f := x * fact(x-1);   -- => 5 * 4 * 3 * 2*1*1 
        END IF; 
         
        RETURN f; 
END; 
BEGIN 
    num := 10; 
   factorial :=  fact(num); 
   dbms_output.put_line('Factorial of 10 is ' || factorial); 
END; 
/

DECLARE 
    num number; 
    factorial number; 
     
    FUNCTION fact(x number) 
    RETURN number IS 
        f number; 
    BEGIN 
        IF x=0 THEN 
            f := 1; 
        ELSE 
            f := x * fact(x-1);   -- => 5 * 4 * 3 * 2*1*1 
        END IF; 
         
        RETURN f; 
END; 
BEGIN 
    num := 15; 
   factorial :=  fact(num); 
   dbms_output.put_line('Factorial of 15 is ' || factorial); 
END; 
/

SELECT * FROM CUSTOMERS;

 CREATE OR REPLACE FUNCTION get_customer_name( custid IN number) 
 RETURN varchar2 IS 
    cust_name VARCHAR2(100); 
    res VARCHAR2; 
 BEGIN 
    SELECT name INTO cust_name FROM CUSTOMERS WHERE id=custid; 
     
    RETURN cust_name; 
  
 END; 
BEGIN 
    res := get_customer_name(2); 
    dbms_output.put_line('Name of the customer witd id 2 is:'|| res); 
END; 
/

 CREATE OR REPLACE FUNCTION get_customer_name( custid IN number) 
 RETURN varchar2 IS 
    cust_name VARCHAR2(100); 
    res VARCHAR2; 
 BEGIN 
    SELECT name INTO cust_name FROM CUSTOMERS WHERE id=custid; 
     
    RETURN cust_name; 
  
 END; 
/

 / 


BEGIN 
    res := get_customer_name(2); 
    dbms_output.put_line('Name of the customer witd id 2 is:'|| res); 
END; 
/

DECLARE 
    res VARCHAR2; 
BEGIN 
    res := get_customer_name(2); 
    dbms_output.put_line('Name of the customer witd id 2 is:'|| res); 
END; 
/

DECLARE 
    res VARCHAR2(100); 
BEGIN 
    res := get_customer_name(2); 
    dbms_output.put_line('Name of the customer witd id 2 is:'|| res); 
END; 
/

 CREATE OR REPLACE FUNCTION get_customer_name( custid IN number) 
 RETURN varchar2 IS 
    cust_name VARCHAR2(100); 
 BEGIN 
    SELECT name INTO cust_name FROM CUSTOMERS WHERE id=custid; 
     
    RETURN cust_name; 
  
 END; 
/

 / 


DECLARE 
    res VARCHAR2(100); 
BEGIN 
    res := get_customer_name(2); 
    dbms_output.put_line('Name of the customer witd id 2 is:'|| res); 
END; 
/

DECLARE 
    res VARCHAR2(100); 
BEGIN 
    res := get_customer_name(5); 
    dbms_output.put_line('Name of the customer witd id 5 is:'|| res); 
END; 
/

SELECT ID FROM CUSTOMERS;

SELECT get_customer_name(ID) FROM CUSTOMERS;

CREATE TABLE EMPLOYEE(  
empid INTEGER,  
name VARCHAR2(100),  
city VARCHAR2(100),  
salary INTEGER  
);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(2,'Raghul','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(3,'Ashwin','Chennai',200000);

INSERT INTO EMPLOYEE VALUES(4,'Malini','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(5,'Tharani','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(6,'Ramu','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(7,'Shivani','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(8,'Harsha','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(9,'Arun','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(10,'Raja','Bangalore',120000);

INSERT INTO EMPLOYEE VALUES(11,'Ranjita','Bangalore',130000);

INSERT INTO EMPLOYEE VALUES(12,'Mani','Bangalore',200000);

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE WHERE SALARE = ( SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT * FROM EMPLOYEE WHERE SALARY = ( SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT NAME, CITY, SALARY FROM EMPLOYEE WHERE SALARY = ( SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT * FROM EMPLOYEE;

SELECT CITY, MAX(SALARY) FROM EMPLOYEE 
GROUP BY CITY;

SELECT ID,NAME,CITY, SALRY FROM EMPLOYEE;

SELECT ID,NAME,CITY, SALARY FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE 
WHERE rnk<=3;

SELECT EMPID,NAME,CITY, SALARY ,rnk 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=3;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) "rnk" 
FROM EMPLOYEE) 
WHERE rnk<=3;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=3;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

CREATE TABLE CUSTOMERS(   
ID INT PRIMARY KEY,   
NAME VARCHAR2(100) NOT NULL,   
AGE INT NOT NULL,   
CITY VARCHAR2(30),   
SALARY DECIMAL(30,2)   
);

INSERT INTO CUSTOMERS VALUES(1,'Raghul',37,'Chennai',100000);

INSERT INTO CUSTOMERS VALUES(2,'Parth',27,'Delhi',75000);

INSERT INTO CUSTOMERS VALUES(3,'Pankaj',25,'Pune',125000);

INSERT INTO CUSTOMERS VALUES(4,'Dhoni',39,'Ranchi',200000);

INSERT INTO CUSTOMERS VALUES(5,'Kholi',34,'Bangalore',150000);

SELECT * FROM CUSTOMERS;

CREATE OR REPLACE FUNCTION get_coustomers_count 
RETURN number IS 
    total number; 
BEGIN 
    SELECT COUNT(*) INTO total FROM CUSTOMERS; 
    
    RETURN total; 
END; 
/

DECLARE 
    c number; 
BEGIN 
c := get_coustomers_count(); 
dbms_output.put_line(' Total number of registered customer : ' || c); 
END; 
/

SELECT COUNT(*) FROM CUSTOMERS;

IN  -> To send as INPUT type to the function or procedure 


OUT -> To get output from a procedure 


IN OUT -> The same variable will act as a input and as an output 


DECLARE  
    value1 number; 
    value2 number; 
    min_value number; 
    FUNCTION  findMin(x IN number, y IN number) 
    RETURN number IS 
        res number; 
    BEGIN 
        IF x < y THEN 
            res := x; 
        ELSE 
            res := y; 
        END IF; 
         
        RETURN res; 
END; 
BEGIN 
    value1 := 100; 
    value2 := 200; 
   min_value :=  findMin(value1, value2); 
   dbms_output.put_line(' Minimum of (100,200) is : ' || min_value); 
END; 
/

5! = 5*(5-1)*(4-1)*(3-1)*(2-1)*1 


5! = 5*4*3*2*1 => 120 


6! = 6*5*4*3*2*1 => 720 


3! => 3*2*1 =>6 


DECLARE 
    num number; 
    factorial number; 
     
    FUNCTION fact(x number) 
    RETURN number IS 
        f number; 
    BEGIN 
        IF x=0 THEN 
            f := 1; 
        ELSE 
            f := x * fact(x-1);   -- => 5 * 4 * 3 * 2*1*1 
        END IF; 
         
        RETURN f; 
END; 
BEGIN 
    num := 15; 
   factorial :=  fact(num); 
   dbms_output.put_line('Factorial of 15 is ' || factorial); 
END; 
 
 
 
------------------PROCEDURE vs FUNCION -------------------------------- 
 
PROCEDURE                                                FUNCTION 
 
1. procedure is created for performing            function is created for performing 
logical operation                                  computation 
 
2. Procedure will not return a value                function must return a value 
3. Paramenters: IN , oUT, IN OUT                    only IN parameter is used 
4. PROCEDURE cannot be used in select               can be a part of select query 
   statement                            
    
    
 CREATE OR REPLACE FUNCTION get_customer_name( custid IN number) 
 RETURN varchar2 IS 
    cust_name VARCHAR2(100); 
 BEGIN 
    SELECT name INTO cust_name FROM CUSTOMERS WHERE id=custid; 
     
    RETURN cust_name; 
  
 END; 
/

 / 


DECLARE 
    res VARCHAR2(100); 
BEGIN 
    res := get_customer_name(5); 
    dbms_output.put_line('Name of the customer witd id 5 is:'|| res); 
END; 
/

SELECT get_customer_name(ID) FROM CUSTOMERS;

CREATE TABLE EMPLOYEE(  
empid INTEGER,  
name VARCHAR2(100),  
city VARCHAR2(100),  
salary INTEGER  
);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(2,'Raghul','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(3,'Ashwin','Chennai',200000);

INSERT INTO EMPLOYEE VALUES(4,'Malini','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(5,'Tharani','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(6,'Ramu','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(7,'Shivani','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(8,'Harsha','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(9,'Arun','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(10,'Raja','Bangalore',120000);

INSERT INTO EMPLOYEE VALUES(11,'Ranjita','Bangalore',130000);

INSERT INTO EMPLOYEE VALUES(12,'Mani','Bangalore',200000);

SELECT * FROM EMPLOYEE;

SELECT NAME, CITY, SALARY FROM EMPLOYEE WHERE SALARY = ( SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT CITY, MAX(SALARY) FROM EMPLOYEE 
GROUP BY CITY;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY ASC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

SELECT EMPID,NAME,CITY, SALARY , 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY ASC) rnk 
FROM EMPLOYEE;

DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE(  
empid INTEGER,  
name VARCHAR2(100),  
city VARCHAR2(100),  
salary INTEGER  
);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(2,'Raghul','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(3,'Ashwin','Chennai',200000);

INSERT INTO EMPLOYEE VALUES(4,'Malini','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(5,'Tharani','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(6,'Ramu','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(7,'Shivani','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(8,'Harsha','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(9,'Arun','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(10,'Raja','Bangalore',120000);

INSERT INTO EMPLOYEE VALUES(11,'Ranjita','Bangalore',130000);

INSERT INTO EMPLOYEE VALUES(12,'Mani','Bangalore',200000);

SELECT * FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY , 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY ASC) rnk 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY , 
;

SELECT EMPID,NAME,CITY, SALARY , 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE;

CREATE TABLE CUSTOMERS(   
ID INT PRIMARY KEY,   
NAME VARCHAR2(100) NOT NULL,   
AGE INT NOT NULL,   
CITY VARCHAR2(30),   
SALARY DECIMAL(30,2)   
);

INSERT INTO CUSTOMERS VALUES(1,'Raghul',37,'Chennai',100000);

INSERT INTO CUSTOMERS VALUES(2,'Parth',27,'Delhi',75000);

INSERT INTO CUSTOMERS VALUES(3,'Pankaj',25,'Pune',125000);

INSERT INTO CUSTOMERS VALUES(4,'Dhoni',39,'Ranchi',200000);

INSERT INTO CUSTOMERS VALUES(5,'Kholi',34,'Bangalore',150000);

SELECT * FROM CUSTOMERS;

CREATE OR REPLACE FUNCTION get_coustomers_count 
RETURN number IS 
    total number; 
BEGIN 
    SELECT COUNT(*) INTO total FROM CUSTOMERS; 
    
    RETURN total; 
END; 
/

DECLARE 
    c number; 
BEGIN 
c := get_coustomers_count(); 
dbms_output.put_line(' Total number of registered customer : ' || c); 
END; 
/

SELECT COUNT(*) FROM CUSTOMERS;

IN  -> To send as INPUT type to the function or procedure 


OUT -> To get output from a procedure 


IN OUT -> The same variable will act as a input and as an output 


DECLARE  
    value1 number; 
    value2 number; 
    min_value number; 
    FUNCTION  findMin(x IN number, y IN number) 
    RETURN number IS 
        res number; 
    BEGIN 
        IF x < y THEN 
            res := x; 
        ELSE 
            res := y; 
        END IF; 
         
        RETURN res; 
END; 
BEGIN 
    value1 := 100; 
    value2 := 200; 
   min_value :=  findMin(value1, value2); 
   dbms_output.put_line(' Minimum of (100,200) is : ' || min_value); 
END; 
/

5! = 5*(5-1)*(4-1)*(3-1)*(2-1)*1 


5! = 5*4*3*2*1 => 120 


6! = 6*5*4*3*2*1 => 720 


3! => 3*2*1 =>6 


DECLARE 
    num number; 
    factorial number; 
     
    FUNCTION fact(x number) 
    RETURN number IS 
        f number; 
    BEGIN 
        IF x=0 THEN 
            f := 1; 
        ELSE 
            f := x * fact(x-1);   -- => 5 * 4 * 3 * 2*1*1 
        END IF; 
         
        RETURN f; 
END; 
BEGIN 
    num := 15; 
   factorial :=  fact(num); 
   dbms_output.put_line('Factorial of 15 is ' || factorial); 
END; 
 
 
 
------------------PROCEDURE vs FUNCION -------------------------------- 
 
PROCEDURE                                                FUNCTION 
 
1. procedure is created for performing            function is created for performing 
logical operation                                  computation 
 
2. Procedure will not return a value                function must return a value 
3. Paramenters: IN , oUT, IN OUT                    only IN parameter is used 
4. PROCEDURE cannot be used in select               can be a part of select query 
   statement                            
    
    
 CREATE OR REPLACE FUNCTION get_customer_name( custid IN number) 
 RETURN varchar2 IS 
    cust_name VARCHAR2(100); 
 BEGIN 
    SELECT name INTO cust_name FROM CUSTOMERS WHERE id=custid; 
     
    RETURN cust_name; 
  
 END; 
/

 / 


DECLARE 
    res VARCHAR2(100); 
BEGIN 
    res := get_customer_name(5); 
    dbms_output.put_line('Name of the customer witd id 5 is:'|| res); 
END; 
/

SELECT get_customer_name(ID) FROM CUSTOMERS;

DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE(  
empid INTEGER,  
name VARCHAR2(100),  
city VARCHAR2(100),  
salary INTEGER  
);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(2,'Raghul','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(3,'Ashwin','Chennai',200000);

INSERT INTO EMPLOYEE VALUES(4,'Malini','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(5,'Tharani','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(6,'Ramu','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(7,'Shivani','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(8,'Harsha','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(9,'Arun','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(10,'Raja','Bangalore',120000);

INSERT INTO EMPLOYEE VALUES(11,'Ranjita','Bangalore',130000);

INSERT INTO EMPLOYEE VALUES(12,'Mani','Bangalore',200000);

SELECT * FROM EMPLOYEE;

SELECT NAME, CITY, SALARY FROM EMPLOYEE WHERE SALARY = ( SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT CITY, MAX(SALARY) FROM EMPLOYEE 
GROUP BY CITY;

SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY ASC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY ASC) rnk 
FROM EMPLOYEE) 
WHERE rnk<=2;

SELECT EMPID,NAME,CITY, SALARY , 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE;

DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE(  
empid INTEGER,  
name VARCHAR2(100),  
city VARCHAR2(100),  
salary INTEGER  
);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(2,'Raghul','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(3,'Ashwin','Chennai',200000);

INSERT INTO EMPLOYEE VALUES(4,'Malini','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(5,'Tharani','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(6,'Ramu','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(7,'Shivani','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(8,'Harsha','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(9,'Arun','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(10,'Raja','Bangalore',120000);

INSERT INTO EMPLOYEE VALUES(11,'Ranjita','Bangalore',130000);

INSERT INTO EMPLOYEE VALUES(12,'Mani','Bangalore',200000);

SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY ASC) rnk 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE) 
WHERE rnk=2;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE)  
WHERE rnk=2;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE)  
WHERE rnk=1;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE)  
WHERE rnk=3;

SELECT EMPID,NAME,CITY, SALARY ,rnk FROM 
(SELECT EMPID,NAME,CITY, SALARY , 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) rnk 
FROM EMPLOYEE)  
WHERE rnk<=3;

