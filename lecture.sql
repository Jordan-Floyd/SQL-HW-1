-- SELECT ALL records from a table called actor.
SELECT *
FROM actor;


-- SELECT the first and last names of every actor/actress in the actor table.
SELECT first_name, last_name
FROM actor;


-- Query the first and last_name column where the first_name equals 'Nice', using WHERE clause.
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';


-- Query the first and last_name column where the first_name equals 'Nick', using LIKE clause.
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';


--Query for all first_name data that begins with the letter J using LIKE/WHERE and wildcard operator.
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';


-- Query name data for actors with  3 letter names beginning with 'K'. _ placeholder for single character.
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';


--Query for name data for actors starting with K and ending with TH.
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K%th';


-- Comparason Operators for numerical values
-- Greater than (>) --Less than (<)
-- Greater or Equal (>=) -- Less or Equal (<=)
-- Not Equal (<>)


-- Exploratory query into a new table.
SELECT *
FROM payment;


--Query for data that shows customers who paid an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2;


--Query for data that shows customers who paid an amount less than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;


--Query for data that shows customer who paid an amount less than or equal to
SELECT customer_id, amount
FROM payment
WHERE amount <=7.99;


-- Can use ORDER BY clause to sort output by numerical value. ASC/DESC(ascending and decending)
SELECT customer_id, amount
FROM payment
WHERE amount > 2
ORDER BY amount DESC;


-- Using the BETWEEN/AND clause to find amounts between 3.00 AND 7.00.
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.00 AND 7.00;


-- Find all payments that are not equal to  0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0
ORDER BY amount;


-- SQL Aggregators => SUM(), AVG(), COUNT(), MIN(), MAX().

-- Display the sum of every amount paid greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;


-- Find the Average payment amount above 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;


-- Find the total number of payment amounts 5.99.
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;


-- Find all unique payment amounts above 5.99 -- Add COUNT in front of DISTINCT to count total.
SELECT DISTINCT (amount)
FROM payment
WHERE amount > 5.99;


-- Query to display MINIMUM payment amount over 7.99
-- Also using aliasing to rename aggregated column output. (as min_payment)
SELECT MIN(amount) as min_payment
FROM payment
WHERE amount > 7.99;


-- Query to display the MAXIMUM payment under 7.99
SELECT MAX(amount)
FROM payment
WHERE amount < 7.99;



-- GROUPBY comes next...

-- Query to display all amounts equal to 7.99
SELECT amount
FROM payment
WHERE amount = 7.99;


-- Query to display different amounts GROUPed together.
-- and the count of each amount.
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;


-- Query to display customer_id and total amount of money spent.
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


-- Query to display customer_id's that show up more than 30 times using HAVING clause.
SELECT customer_id, COUNT(customer_id)
FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id) > 30;


-- Random Query prompt..
-- Write a query to display the total count of films that start with the letter A.
SELECT COUNT(title)
FROM film
WHERE title LIKE 'A%';


-- Write a query to display all customer id's that spent over $100 last month.
SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;





