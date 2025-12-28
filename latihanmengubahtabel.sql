CREATE TABLE tabeldb.maba (
	nim INTEGER PRIMARY KEY,
	nama_depan VARCHAR(50),
	nama_belakang VARCHAR(50),
	umur INTEGER
);


SELECT * FROM tabeldb.maba;

ALTER TABLE tabeldb.maba ADD COLUMN prodi VARCHAR(50);

UPDATE tabeldb.maba SET nama_depan = 'Andi' WHERE nim = 101001;

INSERT INTO tabeldb.maba (nim, nama_depan, nama_belakang, prodi, umur) VALUES
(101001, 'Andi', 'Saputra', 'Informatika', 19),
(101002, 'Budi', 'Santoso', 'Sistem Informasi', 20),
(101003, 'Citra', 'Lestari', 'Matematika', 18),
(101004, 'Dewi', 'Putri', 'Fisika', 21);

-- Latihan ALTER TABLE
--- Menambah kolom baru angkatan bertipe data VARCHAR(10)
ALTER TABLE tabeldb.maba ADD COLUMN angkatan VARCHAR(10);

--- Menambah kolom baru kota_asal bertipe data TEXT
ALTER TABLE tabeldb.maba ADD COLUMN kota_asal TEXT;

--- Mengubah nama kolom nama_depan jadi nama
ALTER TABLE tabeldb.maba RENAME COLUMN nama_depan TO nama;

--- Mengubah tipe data umur menjadi SMALLINT
ALTER TABLE tabeldb.maba ALTER COLUMN umur SET DATA TYPE SMALLINT;

-- Menghapus kolom nama_belakang
ALTER TABLE tabeldb.maba DROP COLUMN IF EXISTS nama_belakang;


-- Latihan UPDATE DATA
--- Mengubah nilai angkatan mahasiswa dengan nim = 101001 menjadi '2023'
UPDATE tabeldb.maba SET angkatan = '2023' WHERE nim = 101001;

--- Mengubah nilai prodi mahasiswa dengan nim =101003 menjadi 'Statistika'
UPDATE tabeldb.maba SET prodi = 'Statistika' WHERE nim = 101003;

--- Mengubah nilai kota_asal mahasiswa bernama 'Dewi' menjadi 'Bandung'
UPDATE tabeldb.maba SET kota_asal = 'Bandung' WHERE nama = 'Dewi';

--- Mengubah banyak nilai mahasiswa dengan nim = 101002
--- 1. prodi menjadi 'Informatika'
--- 2. angkatan menjadi '2022'
UPDATE tabeldb.maba SET prodi = 'Informatika', angkatan = '2022' WHERE nim = 101002;


--- SET angkatan = NULL untuk mahasiwa yang berumur > 20 tahun
UPDATE tabeldb.maba SET angkatan = NULL WHERE umur > 20;