CREATE SCHEMA IF NOT EXISTS `183-customers-who-never-order`;
USE `183-customers-who-never-order`;

CREATE TABLE Customers (
    id INT NOT NULL AUTO_INCREMENT,
    `name` varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE Orders (
    id INT NOT NULL AUTO_INCREMENT,
    customerId INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Customers (`name`)
VALUES ('Joe'), ('Henry'), ('Sam'), ('Max');

INSERT INTO Orders (customerId)
VALUES (3), (1);


/* QUERY */
SELECT c.`name` as `Customers`
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE c.id NOT IN (SELECT customerId FROM Orders);



