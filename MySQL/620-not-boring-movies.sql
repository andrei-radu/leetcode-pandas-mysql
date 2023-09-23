CREATE SCHEMA IF NOT EXISTS `620-not-boring-movies`;
USE `620-not-boring-movies`;

CREATE TABLE Cinema (
    id INT NOT NULL AUTO_INCREMENT,
    movie VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    rating FLOAT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Cinema (movie, description, rating)
VALUES
    ('War', 'great 3D', 8.9),
    ('Science', 'fiction', 8.5),
    ('irish', 'boring', 6.2),
    ('Ice song', 'Fantacy', 8.6),
    ('House card', 'Interesting', 9.1);


/* QUERY */
SELECT DISTINCT
    id,
    movie,
    description,
    rating
FROM
    Cinema
WHERE
    id % 2 = 1
AND
    description != 'boring'
ORDER BY
    rating DESC;
