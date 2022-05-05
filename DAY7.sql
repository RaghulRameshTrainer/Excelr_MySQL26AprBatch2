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

SELECT id,name,date_format(registered_date,'%W %D %M %Y %h:%i:%s %p') FROM date_function;

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