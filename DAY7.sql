use batch2;

/* DATE FORMAT

%a -> Abbreviated weekday name (Sun, Mon...Sat)
%W -> Weekday name (Sunday, Monday....)
%d -> days of the month (01,02,03..31)
%D -> Days in sentence formath

%b -> Abbreviated month name (Jan...Dec)
%M -> Month name (January, February... December)
%c  -> Month in numeric (1,2....12)

%y -> year in 2 digit (20,21,22.......)
%Y -> Year in 4 digit (2020,2021,2022.......)

%H -> Hours in 24 hrs format (0,1,2...23)
%h -> Hours in 12 hours format (0,1,...12)
%p -> AM|PM
%i -> Minutes (00..59)
%S -> Seconds (00..59)
%T -> hh:mm:ss

*/
CREATE TABLE date_function(
id INT PRIMARY KEY ,
name VARCHAR(100) NOT NULL,
registered_date timestamp
);

INSERT INTO date_function
VALUES(1,'Kolanchi',current_timestamp()),
(2,'Ramesh','2022-05-04 10:11:12'),
(3,'Ramu','2022-05-03 12:30:30');

SELECT * FROM date_function;

SELECT id,name,date_format(registered_date,'%W %D %M %Y %h:%i:%s %p') as joined_date FROM date_function;

/*
05/05/2022
2022-05-05
05/05/2022 12:30
Thu 5th May 2022
THu 5th May 2022 12:30 pm
Thu May 05 2022
12:30 PM May 05 2022
May 05 2022
*/

-- TCL STATEMENTS => COMMIT ROLLBACK SAVEPOINT

SELECT * FROM ORDER_TBL;

START TRANSACTION;
UPDATE ORDER_TBL SET amount =1 WHERE amount IS NULL;
COMMIT;
ROLLBACK;
SET sql_safe_updates=0;

/*
Mobile 25000 -> 30000
Laptop 70000 -> 100000
Charger 1500 -> 2500
Tab  20000 -> 25000
Desktop 15000 -> 20000
*/

START TRANSACTION ;

SAVEPOINT mobile_trans2;
UPDATE ORDER_TBL SET amount=20000 WHERE product_name='Mobile';

SAVEPOINT laptop_update2;
UPDATE ORDER_TBL SET amount=70000 WHERE product_name='Laptop';

SAVEPOINT charger_update2;
UPDATE ORDER_TBL SET amount=1500 WHERE product_name='Charger';

SAVEPOINT Tab_update2;
UPDATE ORDER_TBL SET amount=20000 WHERE product_name='Tab';

SAVEPOINT Desktop_update2;
UPDATE ORDER_TBL SET amount=15000 WHERE product_name='Desktop';

SELECT * FROM ORDER_TBL;

ROLLBACK TO charger_update2;

COMMIT;


-- ROUND FUNCTION

SELECT ROUND(99.5) AS amount;
SELECT ROUND(-99.25) AS amount;

SELECT ROUND(12121.1246673,3) as amount;

SELECT ROUND(12121.1246673,-3) as amount;
SELECT ROUND(12621.1246673,-3) as amount;

-- SUBSTR FUNCTION

SELECT SUBSTR("EXCELR",3) AS company;
SELECT SUBSTR("EXCELR",1,5) AS company;