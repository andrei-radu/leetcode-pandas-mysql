CREATE SCHEMA IF NOT EXISTS `176-second-highest-salary`;
USE `176-second-highest-salary`;

CREATE TABLE Employee (
    id INT NOT NULL AUTO_INCREMENT,
    salary int NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Employee (salary)
VALUES (100), (200), (300);


/* QUERY */
SELECT salary AS SecondHighestSalary
FROM Employee
GROUP BY salary
WHERE salary < (SELECT MAX(salary) FROM Employee)
ORDER BY salary DESC
LIMIT 1;