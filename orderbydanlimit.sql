-- Latihan ORDER BY & LIMIT

--1
SELECT title, length
FROM film
ORDER by length ASC;

--2
SELECT title, length
FROM film
ORDER BY length DESC;

--3
SELECT title, length
FROM film
ORDER BY length
LIMIT 5;

--4
SELECT title, rental_rate
FROM film
ORDER by rental_rate
LIMIT 10;


--5
SELECT title, length
FROM film
WHERE length > 120
ORDER BY length DESC
LIMIT 5;

--6
SELECT title, rental_rate
FROM film
WHERE rental_rate < 2
ORDER BY rental_rate ASC
LIMIT 10;

--7
