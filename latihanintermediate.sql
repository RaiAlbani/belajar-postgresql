-- Latihan LEVEL INTERMEDIATE SQL
-- Urutan Emas

/*SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
*/

  
--1 Hitung jumlah film untuk setiap rating.
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE rental_rate > 2
GROUP BY rating
ORDER BY total_film DESC;

--2 Hitung jumlah film berdasarkan rental_rate.
SELECT rental_rate, COUNT(*) AS total_film
FROM film
WHERE length < 100
GROUP BY rental_rate
HAVING COUNT(*) > 50;

--3 Tampilkan rating yang jumlah filmnya PALING SEDIKIT.
SELECT rating, COUNT(*) AS total_film
FROM film
GROUP BY rating
ORDER BY total_film ASC
LIMIT 1;

--4 Hitung jumlah film untuk setiap rating.
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE title ILIKE '%A%' AND length BETWEEN 90 AND 120
GROUP BY rating;

--5 Tampilkan 3 rating dengan jumlah film TERBANYAK
SELECT rating, COUNT(*) AS total_film
FROM film
WHERE length > 100 AND rental_rate != 0.99
GROUP BY rating
ORDER BY total_film DESC
LIMIT 3;

