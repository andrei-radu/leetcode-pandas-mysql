CREATE SCHEMA IF NOT EXISTS `182-duplicate-emails`;
USE `182-duplicate-emails`;

CREATE TABLE Person (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Person (email)
VALUES ('a@b.com'), ('c@d.com'), ('a@b.com');


/* QUERY */
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;
