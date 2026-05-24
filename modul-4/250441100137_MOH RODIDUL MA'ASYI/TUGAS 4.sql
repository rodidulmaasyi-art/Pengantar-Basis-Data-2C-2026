SELECT
  m.nama_mahasiswa  AS nama_mahasiswa,
  mk.nama_mk        AS nama_mk,
  mk.sks            AS sks
FROM       krs          AS k
INNER JOIN mahasiswa    AS m   ON k.id_mahasiswa   = m.id_mahasiswa
INNER JOIN mata_kuliah  AS mk  ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE      m.program_studi = 'Sistem Informasi'
  AND      mk.sks > 2
ORDER BY   mk.sks DESC, m.nama_mahasiswa ASC;