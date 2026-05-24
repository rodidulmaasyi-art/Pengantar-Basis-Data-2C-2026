CREATE DATABASE customer;

USE customer;

CREATE TABLE pelanggan_setia (
    nomor_identitas  INT  NOT NULL,
    nama_pelanggan   VARCHAR(100)
);

DESCRIBE pelanggan_setia;

ALTER TABLE pelanggan_setia
    MODIFY COLUMN nomor_identitas  VARCHAR(20)  NOT NULL;
    
 INSERT INTO pelanggan_setia VALUES
 (101,'Radit'),
 (102,'Bung Rivki');
 
 SELECT * FROM pelanggan_setia;