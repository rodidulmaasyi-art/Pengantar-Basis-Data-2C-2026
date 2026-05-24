CREATE DATABASE penyakit;
USE penyakit;

CREATE TABLE rekam_medis (
    id_rekam        INT  NOT NULL AUTO_INCREMENT,
    id_pasien       INT  NOT NULL,
    id_dokter       INT  NOT NULL,
    tanggal_periksa DATE NOT NULL,
    diagnosis       TEXT NOT NULL,
    CONSTRAINT pk_rekam PRIMARY KEY (id_rekam),
    CONSTRAINT fk_rekam_pasien FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    CONSTRAINT fk_rekam_dokter FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

DESCRIBE rekam_medis;

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (1, 1, '2025-06-10', 'Diabetes Melitus Tipe 2'),
    (2, 2, '2025-06-11', 'Hipertensi Grade I');
    
SELECT * FROM rekam_medis;