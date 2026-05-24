SELECT
    kode_mk,
    AVG(nilai_angka) AS Rata_Rata_Nilai
FROM
(
    SELECT kode_mk, nilai_angka
    FROM nilai
    WHERE kode_mk IN ('MK01', 'MK02')
) AS nilai_inti
GROUP BY kode_mk;
