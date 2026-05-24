CREATE DATABASE komentar;

USE komentar;

CREATE TABLE umpan_balik (
    id_komentar   BIGINT       NOT NULL AUTO_INCREMENT,
    id_pengguna   INT          NOT NULL,
    id_artikel    INT          NOT NULL,
    isi_komentar  TEXT         NOT NULL,
    waktu_kirim   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    kode_negara   CHAR(2)      NOT NULL,  -- contoh CHAR
    status_komentar CHAR(1)    NOT NULL DEFAULT 'A',  -- A/I/P

    CONSTRAINT pk_feedback PRIMARY KEY (id_komentar)
);

DESCRIBE umpan_balik;

INSERT INTO umpan_balik (id_pengguna, id_artikel, isi_komentar, kode_negara)
VALUES (1, 101,
    'Artikel ini sangat informatif dan membantu saya memahami
     topik yang selama ini membingungkan. Terima kasih banyak
     kepada tim redaksi yang sudah bekerja keras!',
    'ID');
    
    SELECT * FROM umpan_balik;