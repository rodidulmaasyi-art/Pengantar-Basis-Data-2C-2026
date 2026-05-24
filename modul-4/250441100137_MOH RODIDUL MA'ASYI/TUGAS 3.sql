SELECT
  m.nama_mahasiswa  AS nama_mahasiswa,
  mk.nama_mk        AS nama_mk,
  k.semester_ambil  AS semester_ambil
FROM       krs          AS k
INNER JOIN mahasiswa    AS m   ON k.id_mahasiswa   = m.id_mahasiswa
INNER JOIN mata_kuliah  AS mk  ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE      k.semester_ambil BETWEEN 3 AND 5
ORDER BY   k.semester_ambil ASC;