CREATE TABLE nomnom(
name text,
neighbourhood text,
cuisine text,
review real,
price real,
health text);

INSERT INTO nomnom(name,neighbourhood,cuisine,review,price,health)VALUES
("peter","brooklyn","steak","4.4","100","A"),
("andrew","manhattan","indian","5.0","70","A"),
("sean","rosewood","italian","4.1","150","B"),
("robert","east-side","persian","4.5","50","C"),
("ted","queens","korean","4.6","80","B"),
("donald","harbour","german","4.0","95","A");

SELECT * from nomnom;

SELECT DISTINCT neighbourhood from nomnom;

SELECT DISTINCT cuisine FROM nomnom;

SELECT * FROM nomnom WHERE cuisine = "korean";

SELECT * FROM nomnom where review > 4.5;

SELECT * FROM nomnom where cuisine = "italian" AND price = 150;

SELECT * FROM nomnom where neighbourhood LIKE "%wood%";

SELECT * FROM nomnom where neighbourhood in ("brooklyn","harbour","east-side");

SELECT * FROM nomnom where health is NULL;

SELECT * from nomnom ORDER BY review DESC LIMIT 4;