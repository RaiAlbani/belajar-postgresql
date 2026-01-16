-- 1
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE rental_rate > 2
GROUP BY rating
HAVING COUNT(*) > 50 
ORDER BY total_film DESC;

-- 2
SELECT rental_rate, COUNT(*) AS total_film
FROM film
WHERE length BETWEEN 90 AND 120
GROUP BY rental_rate
ORDER BY rental_rate DESC;

-- 3
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE title ILIKE '%S%'
GROUP BY rating
ORDER BY total_film DESC
LIMIT 1;

-- 4
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE rating != 'R' AND length > 100
GROUP BY rating
HAVING COUNT(*) >= 30
ORDER BY total_film DESC;
