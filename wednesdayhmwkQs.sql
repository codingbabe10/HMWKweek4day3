--1. List all customers who live in Texas (use
--JOINs)


--started with
SELECT *
FROM customers


--then tried 
SELECT *
FROM address


-- error message
SELECT *
From district


-- gave error message ...
SELECT *
FROM customers
WHERE district = 'Texas';



SELECT *
FROM customers
JOIN district = 'Texas';




-- this worked 
SELECT *
FROM customers 
JOIN address ON address_id = address_id
WHERE district = 'Texas';



-- then used count to find out number 
SELECT COUNT(*) AS texas_customer_count
FROM customers 
JOIN address a ON address_id = address_id
WHERE district = 'Texas';



--Answer: 20 customers live in Texas





--2. Get all payments above $6.99 with the Customer's Full
--Name

SELECT *
FROM payment




SELECT *
FROM payment
JOIN customers ON customer_id = customer_id
WHERE amount > 6.99;


-- Answer: Michael Jordan, Nikola Jokic, Joel Embiid



--3. Show all customers names who have made payments over $175(use
--subqueries)

-- this works but add subquery to meet requirment 
SELECT *
FROM payment
JOIN customers ON customer_id = customer_id
WHERE amount > 175.00;


--got error message
SELECT *
FROM customers
WHERE customers (
    SELECT customer_id
    FROM payment
    WHERE amount > 175.00
);

--error message
SELECT customer_id
FROM customers (
    SELECT customers
    FROM payment
    WHERE amount > 175.00;
);

--error message 
SELECT *
FROM customers
WHERE customers (
    SELECT customer_id
    FROM payment
    WHERE amount > 175.00
);


-- Answer Lebron James, Michael Jordan, Nikola Jokic, Joel Embiid, 


--4. List all customers that live in Nepal (use the city
--table)

--first tried 
SELECT *
FROM city 


--then tried 

SELECT *
FROM city 
JOIN address ON address_id = address_id
WHERE city = 'Nepal';


-- then tried got error message 

SELECT *
FROM city
WHERE city = 'Nepal';




--error message 
SELECT *
FROM customers 
JOIN address ON address_id = address_id
JOIN city ON city_id = city_id
WHERE country = 'Nepal';


-- tried this ...
SELECT  *
FROM customers 
JOIN address ON address.address_id = address.address_id
JOIN city ON city = city.city
WHERE city = 'Nepal';


--- tried this ..
SELECT *
FROM customers
JOIN city ON address.city_id = city.city_id
WHERE city = 'Nepal';

---Last attempt have to move on...
SELECT *
FROM city_id
WHERE city = 'Nepal';


--5. Which staff member had the most
--transactions?


SELECT COUNT(transactions.transaction_id) AS transaction_count
FROM staff
JOIN transactions ON staff_id = transactions.staff_id
GROUP BY staff.staff_id, 
ORDER BY transaction_count DESC
LIMIT 1;









--6. How many movies of each rating are
--there?

SELECT COUNT(*) AS movie_count
FROM movies
GROUP BY rating;


--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)


SELECT *
FROM customers 
JOIN payments ON customer_id = customer_id
WHERE amount > 6.99 





8. How many free rentals did our stores give
away?


SELECT COUNT(*) AS free_rental_count
FROM rentals
WHERE rental_amount = 0;

