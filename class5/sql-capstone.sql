CREATE TABLE salesman1(
salesmanid text PRIMARY KEY,
name text,
city text,
comission text);

INSERT INTO salesman1(salesmanid,name,city,comission)VALUES
("5001","james hoog","new york","0.15"),
("5002","robin maner","san francisco","0.13"),
("5003","charles rex","london","0.11"),
("5004","elizabeth canton","berlin","0.16"),
("5005","ted beckham","frankfurt","0.15"),
("5006","wayne rooney","munchen","0.19");

SELECT * FROM salesman1

CREATE TABLE customer1(
customerid1 text,
customerName1 text primary key,
city text,
grade text,
salesmanid text);

INSERT INTO customer1(customerid1,customerName1,city,grade,salesmanid)VALUES
("3002","nick rmando","newyork","100","5001"),
("3003","brad dacis","san francisco","101","5002"),
("3004","grahm zusi","london","150","5003"),
("3005","nick ram","berlin","120","5004"),
("3006","zoji eltador","frankfurt","200","5005"),
("3007","brad guzan","munchen","190","5006");

SELECT * from customer1

CREATE TABLE orders(
orderno text PRIMARY KEY,
purchase text,
date text,
customerid1 text,
salesmanid text);

INSERT INTO orders(orderno,purchase,date,customerid1,salesmanid)VALUES
("7001","150","27-4-25","3002","5001"),
("7002","250","28-4-25","3003","5002"),
("7003","170","26-4-25","3004","5003"),
("7004","156","21-5-25","3005","5004"),
("7005","350","29-4-25","3006","5005"),
("7006","110","11-4-25","3007","5006");

SELECT * from orders

-- queries
SELECT customer1.customerName1 , salesman1.name ,salesman1.city FROM customer1 JOIN salesman1 on customer1.city  = salesman1.city; 

SELECT orders.orderno , customer1.customerName1 , orders.customerid1 , orders.salesmanid from orders 
JOIN customer1 on orders.customerid1 = customer1.customerid1 
join salesman1 on orders.salesmanid = salesman1.salesmanid 
WHERE customer1.city = salesman1.city;  

SELECT orders.orderno , customer1.customerName1  FROM orders join customer1 
ON orders.customerid1 = customer1.customerid1;

SELECT customer1.customerName1 , customer1.grade FROM orders 
JOIN salesman1 on orders.salesmanid = salesman1.salesmanid 
JOIN customer1 on orders.customerid1 = customer1.customerid1 
WHERE customer1.grade is not NULL;