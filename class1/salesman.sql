create table salesman(
salesmanid text primarykey,
sanme text,
city text,
commision number(10,2));

INSERT INTO salesman (salesmanid,sanme,city,commision) values ('sl1001','praksh','nagpur' ,0.10),
('sl1002','praksh','jaipur', 0.10),
('sl1003','ram','delhi', 0.15),
('sl1004','rahul','hyderbad', 0.13),
('sl1005','ravi','mumbai', 0.11);

select * from salesman;

create table ordertable (
orderno text,
orddate text,
amt number(13,2),
salesmanid text,
customerid text);

insert into ordertable (orderno, orddate, amt, salesmanid, customerid) VALUES
('or001', '12/10/2024', 4500, 's01', 'c01'),
('or002', '14/10/2024', 2500, 's02', 'c02'),
('or003', '12/10/2024', 450, 's01', 'c03'),
('or004', '17/10/2024', 410, 's03', 'c04'),
('or005', '12/10/2024', 320, 's04', 'c01');

select * from ordertable
select sanme,commision from salesman;
