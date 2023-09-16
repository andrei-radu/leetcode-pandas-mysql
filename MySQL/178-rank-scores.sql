CREATE SCHEMA IF NOT EXISTS `178-rank-scores`;
USE `178-rank-scores`;

CREATE TABLE Scores (
    id INT NOT NULL AUTO_INCREMENT,
    score FLOAT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Scores (score)
VALUES (3.5), (3.65), (4), (3.85), (4), (3.65);

/* QUERY */
SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) 'rank'
FROM Scores
ORDER BY score DESC;
