use world;
/*select * from country   order by   capital; 
select * from city order by   countrycode;
select * from  countrylanguage;*/

SELECT 
    COUNT(name)
FROM
    city
WHERE
    countrycode = 'USA';

/*Task 2: Find out what the population and average life expectancy for people in Argentina (ARG) is.*/
SELECT 
    population, AVG(lifeExpectancy)
FROM
    country
WHERE
    code = 'ARG';

/*Task 3: Using ORDER BY, LIMIT, what country has the highest life expectancy?*/
SELECT 
    name, lifeExpectancy
FROM
    country
ORDER BY lifeExpectancy DESC
LIMIT 1;

/*Task 4: Select 25 cities around the world that start with the letter 'F' in a single SQL query.*/
SELECT 
    name
FROM
    city
WHERE
    name LIKE 'F%'
LIMIT 25;

/*Task 5: Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.*/
SELECT 
    ID, name, population
FROM
    city
LIMIT 10;

/*Task 6:Create a SQL statement to display columns Id, Name, Population from the city table and limit results to rows 31-40.*/
SELECT 
    ID, name, population
FROM
    city
LIMIT 10 OFFSET 30;

/*Task 7:Create a SQL statement to find only those cities from city table whose population is larger than 2000000.*/
SELECT 
    name
FROM
    city
WHERE
    population > 2000000;

/*Task 8:Create a SQL statement to find all city names from city table whose name begins with Be prefix.*/
SELECT 
    name
FROM
    city
WHERE
    name LIKE 'Be%';

/*Task 9: Create a SQL statement to find only those cities from city table whose population is between 500000-1000000*/
SELECT 
    name, population
FROM
    city
WHERE
    population BETWEEN 500000 AND 1000000;

/*Task 10.Create a SQL statement to display all cities from the city table sorted by Name in ascending order.*/
SELECT DISTINCT
    name
FROM
    city
ORDER BY name ASC;

/*Task 11:Create a SQL statement to find a city with the lowest population in the city table.*/
SELECT 
    name, population
FROM
    city
ORDER BY population
LIMIT 1;

/*Task 12:Create a SQL statement to find a country with the largest population in the country table.*/
SELECT 
    name, population
FROM
    country
ORDER BY population DESC
LIMIT 1;

/*•	Create a SQL statement to find the capital of Spain (ESP).*/
SELECT 
    city.*
FROM
    city
        INNER JOIN
    country ON id = capital AND countrycode = code
        AND country.name = 'spain';

/*•	Create a SQL statement to list all the languages spoken in the Caribbean region.*/
SELECT DISTINCT
    Language
FROM
    countrylanguage cl
        INNER JOIN
    country c2 ON cl.countryCode = c2.code
        AND c2.Region = 'Caribbean';


/*•	Create a SQL statement to find all cities from the Europe continent.*/
SELECT 
    city.*, continent
FROM
    city
        INNER JOIN
    country ON countrycode = code
        AND country.continent = 'Europe';

/*•	Create a SQL statement to find the most populated city in the city table.*/
SELECT 
    name, population
FROM
    city
ORDER BY population DESC
LIMIT 1;