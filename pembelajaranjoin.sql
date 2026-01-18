🔥 ROADMAP PEMBELAJARAN JOIN (Data Engineer Style)

Urutan belajar kita:

Konsep JOIN (singkat & logis)

INNER JOIN

LEFT JOIN

RIGHT JOIN

UNION vs UNION ALL

Latihan praktik langsung (dvdrental)

Soal studi kasus (mirip kerja nyata)

1️⃣ Konsep JOIN (WAJIB PAHAM)

JOIN digunakan untuk menggabungkan data dari 2 atau lebih tabel berdasarkan kolom yang berelasi.

📌 dvdrental itu database relasional, contoh relasi:

customer.customer_id → rental.customer_id

rental.rental_id → payment.rental_id

film.film_id → inventory.film_id

Tanpa JOIN → data terpotong
Dengan JOIN → data utuh

2️⃣ INNER JOIN (JOIN PALING SERING DIPAKAI)
📌 Konsep

Ambil data yang cocok di kedua tabel

Kalau tidak ada pasangan → tidak ditampilkan

Contoh sederhana
SELECT
    c.customer_id,
    c.first_name,
    r.rental_id,
    r.rental_date
FROM customer c
INNER JOIN rental r
    ON c.customer_id = r.customer_id;


📌 Artinya:

Ambil customer yang PERNAH rental

Customer tanpa rental ❌ tidak ikut

✍️ LATIHAN 1 (KERJAKAN DULU)

Tampilkan:

title film

rental_rate

inventory_id

📌 Gunakan tabel:

film

inventory

🔹 Hint:

film.film_id = inventory.film_id


👉 JANGAN LANJUT sebelum kamu coba query ini

3️⃣ LEFT JOIN (DATA ENGINEER FAVORIT)
📌 Konsep

Ambil semua data dari tabel kiri, walaupun tidak punya pasangan

Contoh
SELECT
    c.customer_id,
    c.first_name,
    r.rental_id
FROM customer c
LEFT JOIN rental r
    ON c.customer_id = r.customer_id;


📌 Hasil:

Semua customer muncul

Customer belum pernah rental → rental_id = NULL

🧠 Ini sering dipakai untuk mencari data yang "hilang"

✍️ LATIHAN 2

Cari customer yang BELUM PERNAH rental

📌 Tampilkan:

customer_id

first_name

last_name

🔹 Hint:

Pakai LEFT JOIN

Filter WHERE rental_id IS NULL

4️⃣ RIGHT JOIN (JARANG DIPAKAI, TAPI WAJIB TAHU)
📌 Konsep

Ambil semua data dari tabel kanan

SELECT
    i.inventory_id,
    f.title
FROM film f
RIGHT JOIN inventory i
    ON f.film_id = i.film_id;


📌 Catatan penting (Data Engineer mindset):

RIGHT JOIN hampir selalu bisa diganti LEFT JOIN
→ Lebih readable & standar industri

5️⃣ UNION vs UNION ALL (INI SERING KELIRU)
📌 UNION

Gabung hasil query

Menghapus duplikat

Lebih lambat

📌 UNION ALL

Gabung hasil query

Duplikat TIDAK dihapus

Lebih cepat (💡 favorit data engineer)

Contoh
SELECT first_name FROM customer
UNION ALL
SELECT first_name FROM staff;

✍️ LATIHAN 3

Gabungkan:

first_name dari customer

first_name dari staff

📌 Gunakan UNION ALL

6️⃣ STUDI KASUS (LEVEL KERJA)
🎯 Kasus:

Tampilkan total pembayaran setiap customer

📌 Kolom:

customer_id

first_name

total_payment

📌 Tabel:

customer

payment

🔹 Hint:

JOIN customer ↔ payment

SUM(amount)

GROUP BY

7️⃣ ATURAN EMAS JOIN (WAJIB DIHAFAL)

✅ Selalu tentukan:

Tabel utama (LEFT)

Relasi kolom (ON)

❌ Hindari:

SELECT *


✅ Biasakan:

SELECT kolom_yang_dibutuhkan
