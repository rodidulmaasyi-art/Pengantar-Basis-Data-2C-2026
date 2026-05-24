CREATE DATABASE belanja;

USE belanja;

CREATE TABLE transaksi_harian (
    id_transaksi  INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    jumlah        DECIMAL(15,2) NOT NULL
);

INSERT INTO transaksi_harian (jumlah)
VALUES (150000.00), (275000.50), (89000.00);

SELECT * FROM transaksi_harian;

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;