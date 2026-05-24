CREATE DATABASE medical;
USE medical;

CREATE TABLE dokter (
    id_dokter      INT          NOT NULL AUTO_INCREMENT,
    nama_dokter    VARCHAR(100) NOT NULL,
    spesialisasi   VARCHAR(80)  NOT NULL,
    CONSTRAINT pk_dokter PRIMARY KEY (id_dokter)
);
DESCRIBE dokter;

CREATE TABLE pasien (
    id_pasien      INT          NOT NULL AUTO_INCREMENT,
    nama_pasien    VARCHAR(100) NOT NULL,
    tanggal_lahir  DATE         NOT NULL,
    no_telepon     VARCHAR(20)  NOT NULL,
    CONSTRAINT pk_pasien PRIMARY KEY (id_pasien)
);
DESCRIBE pasien;

CREATE TABLE rekam_medis (
    id_rekam        INT   NOT NULL AUTO_INCREMENT,
    id_pasien       INT   NOT NULL,
    id_dokter       INT   NOT NULL,
    tanggal_periksa DATE  NOT NULL,
    diagnosis       TEXT  NOT NULL,

    CONSTRAINT pk_rekam PRIMARY KEY (id_rekam),

    CONSTRAINT fk_rekam_pasien FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,

    CONSTRAINT fk_rekam_dokter FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter)
        ON DELETE CASCADE
);

DESCRIBE rekam_medis;

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES
    (1, 1, '2025-06-10', 'Diabetes Melitus Tipe 2'),
    (2, 1, '2025-06-12', 'Anemia Defisiensi Besi'),
    (1, 2, '2025-06-13', 'Hipertensi Grade I');
    
select * from rekam_medis;

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

DROP TABLE IF EXISTS rekam_medis;
