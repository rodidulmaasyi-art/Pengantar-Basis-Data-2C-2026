SELECT
  mk.nama_mk    AS nama_mk,
  mk.sks        AS sks,
  d.nama_dosen  AS nama_dosen
FROM      mata_kuliah AS mk
JOIN      dosen       AS d   ON mk.id_dosen = d.id_dosen
WHERE     d.bidang_keahlian IN ('Pemrograman', 'Basis Data')
ORDER BY  d.bidang_keahlian, mk.nama_mk;