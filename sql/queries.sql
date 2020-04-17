# noinspection SqlResolveForFile

# noinspection SqlNoDataSourceInspectionForFile

-- revising-the-select-query
SELECT *
FROM city
WHERE countrycode = 'USA'
  AND population > 100000;

-- revising-the-select-query-2
SELECT name
FROM city
WHERE countrycode = 'USA'
  AND population > 120000;

-- select-by-id
SELECT *
FROM city
WHERE ID = 1661;

-- japanese-cities-attributes
SELECT *
FROM city
WHERE countrycode = 'JPN';

-- japanese-cities-name
SELECT name
FROM city
WHERE countrycode = 'JPN';

-- weather-observation-station-1
SELECT city, STATE
FROM station;

-- weather-observation-station-3
SELECT DISTINCT city
FROM station
WHERE MOD(id, 2) = 0;

-- weather-observation-station-4
SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

-- weather-observation-station-5
(SELECT city, CHAR_LENGTH(city) AS l FROM station ORDER BY l, city LIMIT 1)
UNION
(SELECT city, CHAR_LENGTH(city) AS l FROM station ORDER BY l DESC, city LIMIT 1);

-- weather-observation-station-6
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiou]';

-- weather-observation-station-7
SELECT DISTINCT city
FROM station
WHERE city REGEXP '[aeiou]$';

-- weather-observation-station-8
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiou].*[aeiou]$';

-- weather-observation-station-9
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiou]';

-- weather-observation-station-10
SELECT DISTINCT city
FROM station
WHERE city REGEXP '[^aeiou]$';

-- weather-observation-station-11
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiou]|[^aeiou]$';

-- weather-observation-station-12
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiou].*[^aeiou]$';

-- more-than-75-marks
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), id;

-- name-of-employees
SELECT name
FROM employee
ORDER BY name;

-- salary-of-employees
SELECT name
FROM employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id;

-- weather-observation-station-16
SELECT ROUND(lat_n, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

-- weather-observation-station-17
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

-- weather-observation-station-18
SELECT ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)), 4)
FROM station;

-- weather-observation-station-19
SELECT ROUND(SQRT(POW(MIN(lat_n) - MAX(lat_n), 2) + POW(MIN(long_w) - MAX(long_w), 2)), 4)
FROM station;

-- weather-observation-station-20
SELECT ROUND(MEDIAN(lat_n), 4)
FROM station;
-- Oracle

-- select-all-sql
SELECT *
FROM city;

-- revising-aggregations-sum
SELECT SUM(population)
FROM city
WHERE district = 'California';

-- revising-aggregations-the-average-function
SELECT AVG(population)
FROM city
WHERE district = 'California';

-- average-population
SELECT FLOOR(AVG(population))
FROM city;

-- revising-aggregations-the-count-function
SELECT COUNT(*)
FROM city
WHERE population > 100000;

-- japan-population
SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';

-- population-density-difference
SELECT MAX(population) - MIN(population)
FROM city;

-- the-blunder
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', '')))
FROM employees;

-- earnings-of-employees
SELECT months * salary AS earnings, COUNT(*)
FROM employee
GROUP BY earnings DESC
LIMIT 1;

-- weather-observation-station-2
SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2)
FROM station;

-- weather-observation-station-13
SELECT TRUNCATE(SUM(lat_n), 4)
FROM station
WHERE lat_n > 38.7880
  AND lat_n < 137.2345;

-- weather-observation-station-14
SELECT TRUNCATE(MAX(lat_n), 4)
FROM station
WHERE lat_n < 137.2345;

-- weather-observation-station-15
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;

-- asian-population
SELECT SUM(city.population)
FROM city
         LEFT JOIN country ON city.countrycode = country.Code
WHERE continent = 'Asia';

-- african-cities
SELECT city.name
FROM city
         JOIN country ON city.countrycode = country.CODE
WHERE continent = 'Africa';

-- what-type-of-triangle
SELECT (
           CASE
               WHEN a + b <= c OR a + c <= b OR b + c <= a THEN 'Not a Triangle'
               WHEN a = b AND b = c THEN 'Equilateral'
               WHEN a = b OR b = c OR c = a THEN 'Isosceles'
               ELSE 'Scalene'
               END
           ) AS type
FROM TRIANGLES;

-- the-pads
SELECT CONCAT(name, '(', LEFT(occupation, 1), ')')
FROM occupations
ORDER BY name;
SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS result
FROM occupations
GROUP BY occupation
ORDER BY result;

-- occupations
SET @dc = 0, @pc = 0, @sc = 0, @ac = 0;
SELECT MIN(doctor), MIN(professor), MIN(singer), min(actor)
FROM (
         SELECT CASE occupation
                    WHEN 'Doctor' THEN (@dc := @dc + 1)
                    WHEN 'Professor' THEN (@pc := @pc + 1)
                    WHEN 'Singer' THEN (@sc := @sc + 1)
                    WHEN 'Actor' THEN (@ac := @ac + 1)
                    END                                  AS row,
                IF(occupation = 'Doctor', name, NULL)    AS doctor,
                IF(occupation = 'Professor', name, NULL) AS professor,
                IF(occupation = 'Singer', name, NULL)    AS singer,
                IF(occupation = 'Actor', name, NULL)     AS actor
         FROM occupations
         ORDER BY name
     ) AS _
GROUP BY row;
