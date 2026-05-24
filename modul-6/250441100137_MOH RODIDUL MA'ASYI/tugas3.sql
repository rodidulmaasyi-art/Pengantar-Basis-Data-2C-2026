create view mahasiswa_dengan_nilai as
SELECT m.nim, m.nama
FROM mahasiswa m
WHERE EXISTS
(
    SELECT 1
    FROM nilai n
    WHERE n.nim = m.nim
)
ORDER BY m.nim;
