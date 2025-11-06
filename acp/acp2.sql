create table Customers(
CustomerID text primarykey,
CustomerName text,
City text,
Grade integer)
;

INSERT INTO Customers (CustomerID, CustomerName, City, Grade) VALUES
(1, 'Alice Smith', 'New York', 120),  
(2, 'Bob Johnson', 'New York', 95),   
(3, 'Charlie Brown', 'Boston', 130), 
(4, 'Diana King', 'New York', 105),   
(5, 'Ethan Hunt', 'Chicago', 80),   
(6, 'Fiona Glenanne', 'Miami', 100),  
(7, 'George Starr', 'New York', 100); 

select * from Customers;

SELECT CustomerName, City, Grade
FROM Customers
WHERE City = 'New York' OR Grade > 100;

