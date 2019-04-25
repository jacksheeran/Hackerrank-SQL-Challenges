/*queries all city names with even ID numbers from the 'station' table */

SELECT DISTINCT city FROM station
WHERE id % 2 = 0;
