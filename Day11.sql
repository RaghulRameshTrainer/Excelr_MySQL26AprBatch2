CREATE OR REPLACE PROCEDURE greetings 
AS 
BEGIN 
    dbms_output.put_line('Hello Data Scientiest!'); 
END; 
/

EXECUTE greetings


BEGIN 
    greetings; 
END; 
/

SELECT NOW();

SELECT NOW() FROM DUAL;

SELECT CURRENT_DATE() FROM DUAL;

BEGIN 
    greetings; 
END; 
/

DROP PROCEDURE greetings


DECLARE 
    x number; 
    y number; 
    z number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(x,y,z); 
 dbms_output.put_line(' Minimum of (67,433) is :' || z); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(x,y,res); 
 dbms_output.put_line(' Minimum of (67,433) is :' || res); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(67,433,res); 
 dbms_output.put_line(' Minimum of (67,433) is :' || res); 
END; 
/

CREATE OR REPLACE PROCEDURE findMinValue(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 

/

DROP PROCEDURE findMinValue


CREATE OR REPLACE PROCEDURE findMinValue(x IN number, y IN number) IS 
BEGIN 
    IF x < y THEN 
       dbms_output.put_line(x || ' is smaller than '||y); 
    ELSE 
        dbms_output.put_line(y || ' is smaller than '||x); 
    END IF; 
END; 

/

EXECUTE findMinValue(10,20)


DECLARE 
    x number; 
    res number; 
PROCEDURE findsq(x IN number, res OUT number) IS 
BEGIN 
   res := x*x; 
END; 
 
BEGIN 
x := 6; 
 findsq(x,res); 
 dbms_output.put_line(' Square is :' || res); 
END; 
/

DECLARE 
    x number; 
PROCEDURE findsq(x IN OUT number) IS 
BEGIN 
   x := x*x; 
END; 
 
BEGIN 
x := 10; 
 findsq(x); 
 dbms_output.put_line(' Square is :' || x); 
END; 
/

DECLARE 
    x number; 
PROCEDURE findsq(x IN OUT number) IS 
BEGIN 
   x := x*x; 
END; 
 
BEGIN 
x := 10; 
 findsq(x); 
 dbms_output.put_line(' Square of 10 is :' || x); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(z=res,y=200, x=100); 
 dbms_output.put_line(' Minimum of (67,433) is :' || res); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(z=res,y=200, x=100); 
 dbms_output.put_line(' Minimum of (67,433) is :' || res); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(z=>res,y=>200, x=>100); 
 dbms_output.put_line(' Minimum of (67,433) is :' || res); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(z=>res,y=>200, x=>100); 
 dbms_output.put_line(' Minimum of (100,200) is :' || res); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
    res number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
 
BEGIN 
 x := 67; 
 y := 433; 
 findMin(100,y=>200,z=>res); 
 dbms_output.put_line(' Minimum of (100,200) is :' || res); 
END; 
/

SELECT * FROM CUSTOMERS;

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

DECLARE 
    c_name customers.name%type; 
PROCEDURE max_salaried_employee 
AS 
BEGIN 
    SELECT name INTO c_name FROM CUSTOMERS WHERE SALARY = (SELECT max(SALARY) FROM CUSTOMERS); 
    dbms_output.put_line(c_name || ' is earning more.'); 
END; 
 
BEGIN 
  max_salaried_employee; 
END; 
/

DECLARE 
    cnt number; 
PROCEDURE max_salaried_employee 
AS 
BEGIN 
    SELECT COUNT(*) INTO cnt FROM CUSTOMERS ; 
    dbms_output.put_line('Total number of registered customer is :' || cnt); 
END; 
 
BEGIN 
  max_salaried_employee; 
END;
/

