CREATE TABLE Agent(
agent_id text PRIMARY KEY,
agent_name text,
location text,
rate text);

INSERT INTO Agent(agent_id, agent_name, location, rate) VALUES
("A101", "Alice Smith", "New York", "0.14"),
("A102", "Bob Johnson", "San Francisco", "0.12"),
("A103", "Charlie Brown", "London", "0.10"),
("A104", "Diana Prince", "Berlin", "0.17"),
("A105", "Ethan Hunt", "Paris", "0.14"),
("A106", "Fiona Glenanne", "Munich", "0.18");

SELECT * FROM Agent;

CREATE TABLE Client(
client_id text,
client_name text PRIMARY KEY,
city text,
level text,
agent_id text);

INSERT INTO Client(client_id, client_name, city, level, agent_id) VALUES
("C201", "Global Corp", "New York", "110", "A101"),
("C202", "Tech Solutions", "San Francisco", "105", "A102"),
("C203", "Euro Imports", "London", "160", "A103"),
("C204", "Digital World", "Berlin", "130", "A104"),
("C205", "Innovate LLC", "Paris", "210", "A105"),
("C206", "Speedy Delivery", "Munich", "200", "A106");

SELECT * from Client;


CREATE TABLE Transactions(
transaction_no text PRIMARY KEY,
amount text,
transaction_date text,
client_id text,
agent_id text);

INSERT INTO Transactions(transaction_no, amount, transaction_date, client_id, agent_id) VALUES
("T301", "180", "2025-05-01", "C201", "A101"),
("T302", "275", "2025-05-02", "C202", "A102"),
("T303", "195", "2025-04-30", "C203", "A103"),
("T304", "165", "2025-05-15", "C204", "A104"),
("T305", "380", "2025-05-03", "C205", "A105"),
("T306", "120", "2025-04-25", "C206", "A106");

SELECT * from Transactions;

-- ** QUERIES **
SELECT Client.client_name, Agent.agent_name, Agent.location
FROM Client JOIN Agent on Client.city = Agent.location;

SELECT Transactions.transaction_no, Client.client_name, Transactions.client_id, Transactions.agent_id
FROM Transactions
JOIN Client on Transactions.client_id = Client.client_id
JOIN Agent on Transactions.agent_id = Agent.agent_id
WHERE Client.city = Agent.location;

SELECT Transactions.transaction_no, Client.client_name
FROM Transactions JOIN Client
ON Transactions.client_id = Client.client_id;

SELECT Client.client_name, Client.level
FROM Transactions
JOIN Agent on Transactions.agent_id = Agent.agent_id
JOIN Client on Transactions.client_id = Client.client_id
WHERE Client.level IS NOT NULL;

SELECT Client.client_name AS "name",
Client.city, Agent.agent_name, Agent.rate
FROM Client JOIN Agent
ON Client.agent_id = Agent.agent_id
WHERE CAST(Agent.rate AS REAL) BETWEEN 0.12 AND 0.15;

SELECT
    Transactions.transaction_no,
    Client.client_name,
    Agent.rate AS "rate%",
    CAST(Transactions.amount AS REAL) * CAST(Agent.rate AS REAL) AS "commission amount"
FROM Transactions
JOIN Client ON Transactions.agent_id = Client.agent_id
JOIN Agent ON Transactions.agent_id = Agent.agent_id
WHERE CAST(Client.level AS INTEGER) >= 120;

SELECT * FROM Client
JOIN Transactions
ON Client.client_id = Transactions.client_id
WHERE Transactions.transaction_date = "2025-05-01";