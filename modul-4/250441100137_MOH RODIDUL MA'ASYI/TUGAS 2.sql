SELECT
  m.nama_mahasiswa  AS nama_mahasiswa,
  k.id_mata_kuliah  AS id_mk
FROM      mahasiswa AS m
LEFT JOIN krs       AS k   ON m.id_mahasiswa = k.id_mahasiswa
ORDER BY  m.id_mahasiswa;