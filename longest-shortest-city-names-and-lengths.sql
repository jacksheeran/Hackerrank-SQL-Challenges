/* Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that 
comes first when ordered alphabetically. */

select city, length(city)
from (
select city 
from station
order by length(city) ASC, city ASC) as T
LIMIT 1;

select city, length(city)
from (
select city 
from station
order by length(city) DESC, city ASC) as T
LIMIT 1;
