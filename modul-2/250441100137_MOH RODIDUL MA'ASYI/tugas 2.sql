CREATE DATABASE rumah_sakit;
USE rumah_sakit;

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
    id_rekam        INT          NOT NULL AUTO_INCREMENT,
    id_pasien       INT          NOT NULL,
    id_dokter       INT          NOT NULL,
    tanggal_periksa DATE         NOT NULL,
    diagnosis       TEXT         NOT NULL,

    CONSTRAINT pk_rekam   PRIMARY KEY (id_rekam),

    CONSTRAINT fk_rekam_pasien FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_rekam_dokter FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
DESCRIBE rekam_medis;

INSERT INTO dokter (nama_dokter, spesialisasi)
VALUES
    ('dr. Anisa Putri, Sp.PD',    'Penyakit Dalam'),
    ('dr. Budi Santoso, Sp.JP',   'Jantung dan Pembuluh Darah');
    
SELECT * FROM dokter;
 
INSERT INTO pasien (nama_pasien, tanggal_lahir, no_telepon)
VALUES
    ('Rahmat Hidayat',  '1990-05-14', '081234567890'),
    ('Siti Aminah',     '1985-11-03', '087654321098');

SELECT * FROM pasien;

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES
    (1, 1, '2025-06-10', 'Diabetes Melitus Tipe 2, perlu kontrol gula darah rutin'),
    (2, 2, '2025-06-11', 'Hipertensi Grade I, disarankan kurangi konsumsi garam');

SELECT * FROM rekam_medis;

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (1, 99, '2025-06-12', 'Tes insert data tidak valid');

SELECT * FROM rekam_medis;
