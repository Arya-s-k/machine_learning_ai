create table product(
product_id text primarykey,
name text,
price text,
com text)
;

INSERT INTO product (product_id,name,price,com) values ('pr1','motherboard',"400","100"),
('pr2','refil',"160","30"),
('pr3','mouse',"200","50"),
('pr4','keyboard',"400","100"),
('pr5','moniter',"700","130"),
('pr6','printer',"2000","500");

SELECT * from product
SELECT price,name from product where price=(SELECT min(price) from product);
SELECT price,name from product where price=(SELECT max(price) from product);

