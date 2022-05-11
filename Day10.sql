REM   Script: DAY11_BATCH2
REM   Day11

DECLARE 
    type namearray IS VARRAY(3) OF VARCHAR2(30); 
    type agearray IS VARRAY(3) OF INTEGER; 
    names namearray; 
    age agearray; 
    total INTEGER; 
BEGIN 
    names := namearray('Rakesh','Soubhagya','Raghul'); 
    age := agearray(30,31,32); 
    total := names.count; 
    FOR i IN 1..total LOOP 
        dbms_output.put_line(names[i] || '. His age is : '|| age[i]); 
    END LOOP; 
END; 
/

DECLARE 
    type namearray IS VARRAY(3) OF VARCHAR2(30); 
    type agearray IS VARRAY(3) OF INTEGER; 
    names namearray; 
    age agearray; 
    total INTEGER; 
BEGIN 
    names := namearray('Rakesh','Soubhagya','Raghul'); 
    age := agearray(30,31,32); 
    total := names.count; 
    FOR i IN 1..total LOOP 
        dbms_output.put_line(names(i) || '. His age is : '|| age(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namearray IS VARRAY(3) OF VARCHAR2(30); 
    type agearray IS VARRAY(3) OF INTEGER; 
    names namearray; 
    age agearray; 
    total INTEGER; 
BEGIN 
    names := namearray('Rakesh','Soubhagya','Raghul'); 
    age := agearray(30,31,32); 
    total := names.count; 
    FOR i IN 1..total LOOP 
        dbms_output.put_line(names(i) || '. His age is : '|| age(i)); 
    END LOOP; 
END; 
/

CREATE TABLE EMPLOYEE ( 
ID INTEGER, 
NAME VARCHAR2(30), 
AGE INTEGER, 
SALARY INTEGER 
);

DECLARE 
    type namearray IS VARRAY(3) OF VARCHAR2(30); 
    type agearray IS VARRAY(3) OF INTEGER; 
    names namearray; 
    age agearray; 
    total INTEGER; 
BEGIN 
    names := namearray('Rakesh','Soubhagya','Raghul'); 
    age := agearray(30,31,32); 
    total := names.count; 
    FOR i IN 1..total LOOP 
        dbms_output.put_line(names(i) || '. His age is : '|| age(i)); 
    END LOOP; 
END; 
/

CREATE TABLE EMPLOYEE ( 
ID INTEGER, 
NAME VARCHAR2(30), 
AGE INTEGER, 
SALARY INTEGER 
);

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',100000);

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',100000);

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',100000);

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',100000);

SELECT * FROM EMPLOYEE;

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',100000);

INSERT INTO EMPLOYEE VALUES(2,'Soubhagya',150000);

INSERT INTO EMPLOYEE VALUES(3,'Raghul',50000);

INSERT INTO EMPLOYEE VALUES(4,'Malini',10000);

INSERT INTO EMPLOYEE VALUES(5,'Ramesh',200000);

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',30,100000);

INSERT INTO EMPLOYEE VALUES(2,'Soubhagya',31,150000);

INSERT INTO EMPLOYEE VALUES(3,'Raghul',32,50000);

INSERT INTO EMPLOYEE VALUES(4,'Malini',33,10000);

INSERT INTO EMPLOYEE VALUES(5,'Ramesh',34,200000);

CREATE TABLE ALUMNI ( 
ID INTEGER, 
NAME VARCHAR2(30), 
AGE INTEGER, 
SALARY INTEGER 
);

CREATE OR REPLACE TRIGEGR emp_alumni_data 
BEFORE DELETE ON EMPLOYEE 
FOR EACH ROW 
BEGIN 
    INSERT INTO ALUMNI VALUES(:old.id, :old.name, :old.age, :old.salary);

ENd; 


CREATE OR REPLACE TRIGGER emp_alumni_data 
BEFORE DELETE ON EMPLOYEE 
FOR EACH ROW 
BEGIN 
    INSERT INTO ALUMNI VALUES(:old.id, :old.name, :old.age, :old.salary); 
ENd; 
/

SELECT * FROM EMPLOYEE;

SELECT * FROM ALUMNI;

DELETE FROM EMPLOYEE WHERE ID=4;

SELECT * FROM EMPLOYEE;

SELECT * FROM ALUMNI;

DELETE FROM EMPLOYEE WHENE ID<3;

DELETE FROM EMPLOYEE WHERE ID<3;

SELECT * FROM EMPLOYEE;

SELECT * FROM ALUMNI;

INSERT INTO EMPLOYEE VALUES(1,'Rakesh',30,100000);

INSERT INTO EMPLOYEE VALUES(2,'Soubhagya',31,150000);

INSERT INTO EMPLOYEE VALUES(4,'Malini',33,10000);

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE;

DECLARE 
    total number; 
BEGIN 
    UPDATE EMPLOYEE  
    SET SALARY=SALARY+10000; 
     
    IF sql%notfound THEN 
        dbms_output.put_line('No customers selected'); 
    ELSIF sql%found THEN 
        total := sql%rowcount; 
        dbms_output.put_line(total || ' employees salary been revised '); 
    END IF; 
END; 
/

SELECT * FROM EMPLOYEE;

DECLARE 
    total number; 
BEGIN 
    UPDATE EMPLOYEE  
    SET SALARY=SALARY+10000 
    WHERE ID=6; 
     
    IF sql%notfound THEN 
        dbms_output.put_line('No customers selected'); 
    ELSIF sql%found THEN 
        total := sql%rowcount; 
        dbms_output.put_line(total || ' employees salary been revised '); 
    END IF; 
END; 
/

DECLARE 
    c_id employee.id%type; 
    c_name employee.name%type; 
    c_age employee.age%type; 
    c_salary employee.salary%type; 
    CURSOR c_employee IS SELECT ID , NAME, AGE, SALARY FROM EMPLOYEE; 
 
BEGIN 
    OPEN c_employee; 
    LOOP 
        FETCH c_employee INTO c_id, c_name, c_age, c_salary; 
        EXIT WHEN c_employee%notfound; 
        dbms_output.put_line(c_id || ' : ' || c_name || ' : ' || c_age || ' : ' || c_salary ); 
    END LOOP 
END; 
/

DECLARE 
    c_id employee.id%type; 
    c_name employee.name%type; 
    c_age employee.age%type; 
    c_salary employee.salary%type; 
    CURSOR c_employee IS SELECT ID , NAME, AGE, SALARY FROM EMPLOYEE; 
 
BEGIN 
    OPEN c_employee; 
    LOOP 
        FETCH c_employee INTO c_id, c_name, c_age, c_salary; 
        EXIT WHEN c_employee%notfound; 
        dbms_output.put_line(c_id || ' : ' || c_name || ' : ' || c_age || ' : ' || c_salary ); 
    END LOOP; 
END; 
/

DECLARE 
    c_id employee.id%type; 
    c_name employee.name%type; 
    c_age employee.age%type; 
    c_salary employee.salary%type; 
    CURSOR c_employee IS SELECT ID , NAME, AGE, SALARY FROM EMPLOYEE WHERE salary>100000; 
 
BEGIN 
    OPEN c_employee; 
    LOOP 
        FETCH c_employee INTO c_id, c_name, c_age, c_salary; 
        EXIT WHEN c_employee%notfound; 
        dbms_output.put_line(c_id || ' : ' || c_name || ' : ' || c_age || ' : ' || c_salary ); 
    END LOOP; 
END; 
/

CREATE OR REPLACE PROCEDUE greetings 
AS 
BEGIN 
    dbms_output.put_line('Welcome to Data Analytics World!);

END; 


CREATE OR REPLACE PROCEDURE greetings 
AS 
BEGIN 
    dbms_output.put_line('Welcome to Data Analytics World!); 
END; 
/

CREATE OR REPLACE PROCEDURE greetings 
AS 
BEGIN 
    dbms_output.put_line('Welcome to Data Analytics World!'); 
END; 
/

EXECUTE greetings


DROP PROCEDURE greetings;

DECLARE 
    x number; 
    y number; 
    z number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y 
    END IF; 
END; 
 
BEGIN 
    a := 50; 
    b := 60; 
    findMin(a,b,c); 
    dbms_output.put_linr('Minimum of (50,60) is : "|| c) 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y 
    END IF; 
END; 
 
BEGIN 
    a := 50; 
    b := 60; 
    findMin(a,b,c); 
    dbms_output.put_linr('Minimum of (50,60) is : "|| c); 
END; 
/

DECLARE 
    x number; 
    y number; 
    z number; 
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
    IF x < y THEN 
        z := x; 
    ELSE 
        z := y 
    END IF; 
END; 
 
BEGIN 
    a := 50; 
    b := 60; 
    findMin(a,b,c); 
    dbms_output.put_linr('Minimum of (50,60) is : '|| c); 
END; 
/

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
    a := 50; 
    b := 60; 
    findMin(a,b,c); 
    dbms_output.put_linr('Minimum of (50,60) is : '|| c); 
END; 
/

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
    x := 50; 
    y := 60; 
    findMin(x,y,z); 
    dbms_output.put_linr('Minimum of (50,60) is : '|| c); 
END; 
/

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
    x := 50; 
    y := 60; 
    findMin(x,y,z); 
    dbms_output.put_linr('Minimum of (50,60) is : '|| z); 
END; 
/

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
    x := 50; 
    y := 60; 
    findMin(x,y,z); 
    dbms_output.put_line('Minimum of (50,60) is : '|| z); 
END; 
/

