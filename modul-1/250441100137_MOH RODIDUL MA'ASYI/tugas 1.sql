CREATE DATABASE e-library;

USE e-library;

CREATE TABLE koleksi_langka (
    id_buku       BIGINT           NOT NULL,
    judul         VARCHAR(250)     NOT NULL,
    tahun_terbit  YEAR             NOT NULL,
    estimasi_harga DECIMAL(20, 4)  NOT NULL DEFAULT 0.0000,

    CONSTRAINT pk_koleksi PRIMARY KEY (id_buku)
);

DESCRIBE koleksi_langka;