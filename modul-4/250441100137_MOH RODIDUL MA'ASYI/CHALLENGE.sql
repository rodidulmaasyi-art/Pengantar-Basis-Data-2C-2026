SELECT
m.nama_mahasiswa AS nama,
mk.nama_mk AS matkul
FROM mata_kuliah AS mk
RIGHT JOIN mahasiswa AS m ON m.id_mahasiswa = mk.id_mahasiswa
ORDER BY nama_mk;