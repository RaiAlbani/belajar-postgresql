-- DQL: Data Query Language
SELECT * FROM tabeldb.nilaimaba;

/*
Kondisi/Condition
-- keyword: WHERE

Contoh operasi pengkondisian
=
!=
<
>
<=
>=

*/

-- tabel 1 daftar mahasiswa
CREATE TABLE tabeldb.daftarmaba (
	nim INTEGER PRIMARY KEY,
	nama_depan VARCHAR(50),
	prodi VARCHAR(50),
	angkatan VARCHAR(10),
	umur INTEGER,
	kota_asal VARCHAR(50)
);

INSERT INTO tabeldb.daftarmaba (nim, nama_depan, prodi, angkatan, umur, kota_asal) VALUES
(101001, 'Andi', 'Informatika', '2023', 19, 'Jakarta'),
(101002, 'Budi', 'Informatika', '2022', 21, 'Bandung'),
(101003, 'Citra', 'Statistika', '2023', 18, 'Surabaya'),
(101004, 'Dewi', 'Fisika', NULL, 22, 'Bandung'),
(101005, 'Eka', 'Informatika', '2021', 23, 'Jakarta');


--tabel 2 daftar nilai
CREATE TABLE tabeldb.nilaimaba(
	id_nilai SERIAL PRIMARY KEY,
	nim INTEGER,
	mata_kuliah VARCHAR(50),
	nilai INTEGER
);


INSERT INTO tabeldb.nilaimaba (nim, mata_kuliah, nilai) VALUES
(101001, 'Basis Data', 85),
(101001, 'Statistika', 80),
(101002, 'Basis Data', 70),
(101003, 'Statistika', 90),
(101004, 'Fisika Dasar', 75),
(101005, 'Basis Data', 88);

SELECT * FROM tabeldb.nilaimaba;


---  Latihan Select Data Level 1

-- Menampilkan seluruh data mahasiswa
SELECT * FROM tabeldb.daftarmaba;

-- Menampilkan hanya kolom nim, nama, dan prodi saja pada tabel mahasiswa
SELECT nim, nama_depan, prodi FROM tabeldb.daftarmaba;

-- Menampilkan mahasiswa dengan prodi Informatika
SELECT * FROM tabeldb.daftarmaba WHERE prodi = 'Informatika';

-- Menampilkan mahasiswa dengan umur > 20 tahun
SELECT * FROM tabeldb.daftarmaba WHERE umur > 20;

-- Menampilakan mahasiswa dengan angkatan IS NULL
SELECT * FROM tabeldb.daftarmaba WHERE angkatan IS NULL;

