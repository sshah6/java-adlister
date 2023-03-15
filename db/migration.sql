DROP DATABASE IF EXISTS zenith_contacts_db;

CREATE DATABASE zenith_contacts_db;

USE zenith_contacts_db;

CREATE TABLE contacts (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(50) NOT NULL,
     phone_number VARCHAR(25) NOT NULL
);