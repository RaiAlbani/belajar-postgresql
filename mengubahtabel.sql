SELECT * FROM tabeldb.mahasiswa;

-- Menambah kolom
ALTER TABLE tabeldb.mahasiswa ADD COLUMN kota_asal TEXT;
-- (SYNTAX, tabel yang akan ditambahkan kolom, SYNTAX, nama kolom terbaru yang ditambahkan, tipe data)

-- Mengubah nama kolom
ALTER TABLE tabeldb.mahasiswa RENAME COLUMN kota_asal TO angkatan;
-- (SYNTAX, tabel yang kolomnya akan diganti nama, SYNTAX, nama kolom yang lama, KE, nama kolom yang baru)

-- Mengubah tipe data kolom
ALTER TABLE tabeldb.mahasiswa ALTER COLUMN angkatan SET DATA TYPE VARCHAR(20);
-- (SYNTAX, tabel yang kolomnya akan diganti tipe datanya, SYNTAX, nama kolom yang tipe datanya akan diganti, SYNTAX, tipe data terbaru)

-- Membuang kolom
ALTER TABLE tabeldb.mahasiswa DROP COLUMN IF EXISTS nama_belakang;
-- (SYNTAX, tabel yang kolomnya akan dibuang kolomnya, SYNTAX, nama kolom yang akan dibuang)

-- Mengubah nilai
-- 1. untuk satu kolom
UPDATE tabeldb.mahasiswa SET angkatan = NULL WHERE nim = 100191;
-- 2. untuk banyak kolom
UPDATE tabeldb.mahasiswa SET prodi = 'Fisika', angkatan = '2019' WHERE nim = 100191;