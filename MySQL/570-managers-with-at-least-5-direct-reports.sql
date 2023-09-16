CREATE SCHEMA IF NOT EXISTS `570-managers-with-at-least-5-direct-reports`;
USE `570-managers-with-at-least-5-direct-reports`;

CREATE TABLE Employee (
	id INT NOT NULL AUTO_INCREMENT,
    `name` varchar(255),
    departament varchar(255),
    managerId int,
    PRIMARY KEY(id)
);

INSERT INTO Employee (id, `name`, departament, managerId)
VALUES (101, 'John', 'A', NULL),
		(102,'Dan', 'A', 101),
        (103, 'James', 'A', 101),
        (104, 'Amy', 'A', 101),
        (105, 'Ane', 'A', 101),
        (106, 'Ron', 'B', 101)
;

/* QUERY */
SELECT e.`name`
FROM Employee e
WHERE e.id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)

