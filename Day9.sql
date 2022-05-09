-- Variable must be declared before use of it. Global variable are getting created inside the DECLARE STATEMENTS and any variable getting
-- created indside BEGIN and END are called as local variable

DECLARE
    x integer := 100;
    y integer := 200;
    z integer;
BEGIN
    z := x+y;
    dbms_output.put_line('Sum of x and y is : ' || z);
END;
/


DECLARE
    x integer := 10;
BEGIN
    IF( x > 100 ) THEN
       dbms_output.put_line('X is big value , X:' || x); 
    ELSE 
       dbms_output.put_line('The value of x is less than 100, x:' || x);
    END IF;
END;
/


DECLARE
    x integer := 6;
BEGIN
    IF( x > 100 ) THEN
       dbms_output.put_line('X is big value , X:' || x); 
    ELSIF(x>=10) THEN
       dbms_output.put_line('X is greater than or equal to 10 and less than 100, x:' || x); 
    ELSE 
       dbms_output.put_line('The value of x is less than 10, x:' || x);
    END IF;
END;
/


-- LOOPS :   LOOP, WHILE , FOR 

DECLARE
    x number := 1;
BEGIN
    LOOP
        dbms_output.put_line(x);
        x := x + 1;
            IF x > 100 THEN
                exit;
            END IF;
    END LOOP;
    dbms_output.put_line('The value of the x is : ' || x || ' Hence it came out');
END;
/



-- WHILE LOOP

DECLARE 
    a number := 1;
BEGIN
    WHILE a <= 20 LOOP
        dbms_output.put_line('Value of a : '|| a);
        a := a+1;
    END LOOP;
END;
/

-- FOR LOOP

DECLARE
    a number;
BEGIN
    FOR a in 90..100 LOOP
        dbms_output.put_line('Value of a : '  || a);
    END LOOP;
END;
/

DECLARE
    a number;
    type namearray IS VARRAY(5) OF VARCHAR(15);
    location namearray;
    total integer;
    
BEGIN
    location := namearray('Chennai','Bangalore','Pune','Kolkatta','Delhi');
    total := location.count;
    
    for i in 1..total LOOP
        dbms_output.put_line('CITY : '|| location(i) );
    END LOOP;
    
END;
/


CREATE TABLE CUSTOMER(
id INT,
name VARCHAR2(100),
city VARCHAR2(30)
);

INSERT INTO CUSTOMER VALUES(100,'Rakesh Mali','Pune');

DECLARE
    c_id customer.id%type := 101;
    c_name customer.name%type;
    c_city customer.city%type;
BEGIN
    SELECT id, name, city INTO c_id, c_name,c_city
    FROM customer
    WHERE id = c_id;
    DBMS_OUTPUT.PUT_LINE('ID:' || c_id);
    DBMS_OUTPUT.PUT_LINE('NAME:' || c_name);
    DBMS_OUTPUT.PUT_LINE('CITY:' || c_city);

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No such customer');
    WHEN others THEN
        dbms_output.put_line('Error while running select query on customer table');
END;
/


