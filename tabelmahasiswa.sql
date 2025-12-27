-- Database: belajardb
-- Schema : raihandb
-- Tabel  : mahasiswa


-- tabel mahasiswa
-- - nim PRIMARY KEY
-- - nama_depan VARCHAR(50)
-- - nama_belakang VARCHAR(50)
-- - fakultas TEXT
-- - prodi TEXT

-- tabel ipk
-- - nim INTEGER
-- - nama_mahasiswa VARCHAR(50)
-- - semester VARCHAR(3)
-- - ipk FLOAT

-- mahasiswa
CREATE TABLE raihandb.mahasiswa (
	nim INTEGER PRIMARY KEY,
	nama_depan VARCHAR(50),
	nama_belakang VARCHAR(50),
	fakultas TEXT,
	prodi TEXT
);

-- ipk
CREATE TABLE raihandb.ipk (
	nim INTEGER,
	nama_mahasiswa VARCHAR(50),
	semester VARCHAR(3),
	ipk FLOAT
);

INSERT INTO tabeldb.mahasiswa (nim, nama_depan, nama_belakang, fakultas, prodi)
VALUES (100190, 'Chicko', 'JellyDrink', 'FEB', 'Manajemen');

INSERT INTO tabeldb.mahasiswa (nim, nama_depan, nama_belakang, fakultas, prodi)
VALUES (100191, 'Sandra', 'Dedi', 'FMIPA', 'Matematika');

INSERT INTO tabeldb.mahasiswa
VALUES (100192, 'Raffih', 'Amat', 'FISIP', 'Ilmu Pemerintahan');

INSERT INTO tabeldb.mahasiswa (fakultas, nama_depan, prodi, nim, nama_belakang)
VALUES ('FT', 'Ayu', 'Teknik Perikanan', 100193, 'Tong-Tong');

INSERT INTO tabeldb.mahasiswa (nim, nama_depan, fakultas, prodi)
VALUES (100194, 'Robinson', 'FK', 'Kedokteran Hewan');

SELECT nim, nama_depan, nama_belakang, fakultas, prodi FROM raihandb.mahasiswa;
