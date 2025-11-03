create table student(
roll_number text primarykey,
name text,
address text,
phone text,
age integer)
;

INSERT INTO student (roll_number,name,address,phone,age) values ('st1','praksh','nagpur' ,"9076512666",18),
('st2','parsh','delhi' ,"9076512666",18),
('st3','ram','mumbai' ,"9176512666",18),
('st4','mira','chennai' ,"9276512666",18),
('st5','prem','vellore' ,"9376512666",18),
('st6','sita','jaipur' ,"9476512666",18);

select * from student;

SELECT * from student where age = 18 and address ="delhi" ;
SELECT * from student where name = "ram" or name = "sita" ;
SELECT * from student where age = 18 and name = "ram";
SELECT * from student where name = "ram" or age = 20;
SELECT * from student where age = 18 and (name = "ram" or name = "ramesh");
