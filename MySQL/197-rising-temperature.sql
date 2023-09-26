CREATE SCHEMA IF NOT EXISTS `197-rising_temperature`;
USE `197-rising_temperature`;

CREATE TABLE 'Weather' (
  'id' int NOT NULL AUTO_INCREMENT,
  'recordDate' date NOT NULL,
  'temperature' int NOT NULL,
  PRIMARY KEY ('id')
);

INSERT INTO 'Weather' ('recordDate', 'temperature') 
VALUES ('2015-01-01', 10),
       ('2015-01-02', 25),
       ('2015-01-03', 20),
       ('2015-01-04', 30);


/* Query */
SELECT DISTINCT w1.id
FROM Weather w1, Weather w2
WHERE w1.temperature > w2.temperature
AND datediff(w1.recordDate, w2.recordDate) = 1;
