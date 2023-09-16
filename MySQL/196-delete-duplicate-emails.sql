CREATE SCHEMA IF NOT EXISTS `196-delete-duplicate-emails`;
USE `196-delete-duplicate-emails`;

CREATE TABLE Person (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO Person (email)
VALUES ('john@example.com'), ('bob@example.com'), ('john@example.com');

/* DELETE */
DELETE p1
FROM Person p1, Person p2
WHERE p1.id > p2.id AND p1.email = p2.email;