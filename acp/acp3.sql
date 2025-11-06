CREATE TABLE employee(
employee text,
department text,
salary integer);

INSERT INTO employee(employee,department,salary) VALUES
("1","sofware",25000),
("2","backend",50000),
("3","frontend",40000),
("4","product desinger",100000),
("5","coder",75000),
("6","team manager",20000),
("7","hardware",60000);

SELECT * from employee

SELECT min(salary) from employee;
SELECT max(salary) from employee;

SELECT AVG(salary) as averagesalary
from employee;

SELECT count(DISTINCT department) as No_of_department
from employee;