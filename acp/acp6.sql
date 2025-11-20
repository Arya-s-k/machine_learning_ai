CREATE TABLE nomnom(
name text,
neighbourhood text,
cuisine text,
review real,
price real,
health text);

INSERT INTO nomnom(name,neighbourhood,cuisine,review,price,health)VALUES
("The Golden Spoon", "Midtown", "French", "4.8", "250", "A"),
("Spicy Bites", "Queens", "Thai", "4.1", "45", "B"),
("Corner Bistro", "Greenwood", "American", "4.5", "60", "A"),
("Mama Mia's", "Brooklyn", "Italian", "3.9", "120", "C"),
("Tokyo Delight", "Manhattan", "Japanese", "4.9", "90", "A"),
("Desert Oasis", "West Village", "Mediterranean", "4.6", "75", "B");

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