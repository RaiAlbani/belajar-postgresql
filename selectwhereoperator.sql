SELECT title, rating, length
FROM film
WHERE rating = 'PG' OR rating ='PG-13'
AND length > 100;


SELECT title, rental_rate
FROM film
WHERE rental_rate BETWEEN 2 AND 4
AND title LIKE '%A%';

SELECT title, rating
FROM film
WHERE rating != 'R';


-- 7
SELECT title, length
FROM film
WHERE length BETWEEN 90 AND 120;

--8
SELECT title, rating
FROM film
WHERE rating = 'PG' OR rating = 'G';

--9
SELECT title, rating, length
FROM film
WHERE rating = 'PG-13' AND length > 120;

--10
SELECT title
FROM film
WHERE title LIKE '%S%';

--11
SELECT title, rating
FROM film
WHERE rating IN ('PG', 'G') OR rating = 'PG-13';

--12
SELECT title, length
FROM film
WHERE length != 100;
