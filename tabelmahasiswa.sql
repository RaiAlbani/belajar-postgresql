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

INSERT INTO raihandb.mahasiswa VALUES
	(00980, 'Raihan', 'Albani', 'FST', 'Sistem Informasi');
INSERT INTO raihandb.mahasiswa (nim, nama_depan, nama_belakang, fakultas, prodi)
	VALUES (00981, 'Anya', 'Geraldine', 'FEB', 'Sekolah Bisnis');
INSERT INTO raihandb.mahasiswa (nim, nama_depan, nama_belakang, fakultas, prodi)
	VALUES (00982, 'Mario', 'Teguh', 'FH', 'Hukum');
INSERT INTO raihandb.mahasiswa (nim, nama_depan, fakultas, prodi)
	VALUES (00983, 'Sutrisno', 'FK', 'Kedokteran');
INSERT INTO raihandb.mahasiswa (fakultas, nama_depan, nim, nama_belakang, prodi)
	VALUES ('FISIP', 'Maudy', 00984, 'Ayunda', 'Ilmu Pemerintahan');
INSERT INTO raihandb.mahasiswa VALUES
	(00985, 'Ajeng', 'Cantika', 'FT', 'Teknik Komputer');

SELECT nim, nama_depan, nama_belakang, fakultas, prodi FROM raihandb.mahasiswa;