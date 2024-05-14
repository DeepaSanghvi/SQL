USE `sql_store`;
/*task 1 : Below script will return customer's lastname,firstname,point and (points*10)+100 from customer table*/
SELECT 
    last_name, first_name, points, (points * 10) + 100
FROM
    customers;
/* Below script will return customer's lastname,firstname,point and (points+10)*100 as discount_factor from customer table*/
SELECT 
    last_name,
    first_name,
    points,
    (points + 10) * 100 AS discount_factor
FROM
    customers;

/*task 2: Below script will return product name,unit price and unit price with increase of 10%  as new_price from product table*/
SELECT 
    name, unit_price, (unit_price * 1.1) AS new_price
FROM
    products;

/*task 3:Below script will display all the customers details whose birthdate is after '1990-01-01'*/
SELECT 
    *
FROM
    customers
WHERE
    birth_date > '1990-01-01';

/*task 4: Below query will use sql_inventory database and will display product name whose stock is highest from product table*/
use sql_inventory;
SELECT 
    name
FROM
    products
ORDER BY quantity_in_stock DESC
LIMIT 1;

/*task 5: Below query will use sql_inventory database and will display expensive product name from product table*/
SELECT 
    name
FROM
    products
ORDER BY unit_price DESC
LIMIT 1;

/*task 6: Below query will use sql_store database and will display firstname, lastname, address and birthdate of oldest customer from customer table*/
use sql_store;
SELECT 
    first_name, last_name, address, birth_date
FROM
    customers
ORDER BY birth_date
LIMIT 1;