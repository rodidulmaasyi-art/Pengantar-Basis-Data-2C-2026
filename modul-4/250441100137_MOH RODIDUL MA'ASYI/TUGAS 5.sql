SELECT
  m.nama_mahasiswa  AS nama_mahasiswa,
  m.angkatan        AS angkatan,
  mk.nama_mk        AS nama_mk,
  d.nama_dosen      AS nama_dosen
FROM       krs          AS k
INNER JOIN mahasiswa    AS m   ON k.id_mahasiswa   = m.id_mahasiswa
INNER JOIN mata_kuliah  AS mk  ON k.id_mata_kuliah = mk.id_mata_kuliah
INNER JOIN dosen        AS d   ON mk.id_dosen      = d.id_dosen
WHERE      m.angkatan BETWEEN 2023 AND 2025
  AND      d.nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY   m.angkatan DESC;