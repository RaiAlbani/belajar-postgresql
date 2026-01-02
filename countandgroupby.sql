-- Latihan COUNT & GROUP BY

--1 
SELECT COUNT(*) AS total_film
FROM film;

--2
SELECT COUNT(*) AS total_film
FROM film
WHERE rating = 'G';

--3
SELECT rating, COUNT(*) AS total_film
FROM film
GROUP BY rating;

--4
SELECT rental_rate, COUNT(*) AS total_film
FROM film
GROUP BY rental_rate;

--5
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE length > 120
GROUP BY rating;

--6
SELECT rating, COUNT(*) AS total_film
FROM film
GROUP BY rating
HAVING COUNT(*) > 50;

--7 FINAL AGREGASI
SELECT rating, COUNT(*) AS total_film 
FROM film
WHERE length > 100
GROUP BY rating
HAVING COUNT(*) > 20
ORDER BY total_film DESC;





