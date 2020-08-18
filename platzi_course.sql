/*
TINYINT(1 ) === es bandera de true  ••• TINYINT(0)===es bandera de false
*/

-- BOOKS TABLE -- 
CREATE TABLE IF NOT EXISTS books(
    book_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    author_id INTEGER UNSIGNED ,
    title VARCHAR(100) NOT NULL,
    year INTEGER UNSIGNED NOT NULL DEFAULT 1990,
    language VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 Language',
    cover_url VARCHAR(500),
    price DOUBLE(6, 2) NOT NULL DEFAULT 10.0,
    sellable TINYINT(1) DEFAULT 1,
    copies INTEGER NOT NULL DEFAULT 1,
    description TEXT
);
-- AUTHORS TABLE-- 
CREATE TABLE IF NOT EXISTS authors(
    author_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    natinality VARCHAR(3) 
);   

-- CLIENTS TABLE --

CREATE TABLE IF NOT EXISTS clients(
    client_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    birthdate DATETIME,
    gender ENUM('M', 'F', 'ND') NOT NULL ,
    active TINYINT(1 ) NOT NULL DEFAULT 1,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,                                                                
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- OPERATIONS TABLE --

CREATE TABLE IF NOT EXISTS operations (
    operation_id  INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
    book_id INTEGER UNSIGNED,
    client_id INTEGER UNSIGNED ,
    `type`  ENUM('lend', 'sell')  ,
    update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  ,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    finished TINYINT(1) NOT NULL DEFAULT 0

);

-----------------------------------------------------------------------------------------
---------------------------------------ONE BY ONE----------------------------------------
--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT-
-----------------------------------------------------------------------------------------

INSERT INTO tabla(columns) VALUES(valores)
------------------
INSERT INTO authors( name ,natinality)
 VALUES ('Juan Rulfo','MEX');

INSERT INTO authors(name, natinality)
 VALUES('Gabriel Garcia Marquez','COL');

INSERT INTO authors(name, natinality)
 VALUES ('Juan Gabriel Vasquez','COL');


-----------------------------------------------------------------------------------------
-----------------------------------------VARIAS------------------------------------------
--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT-
-----------------------------------------------------------------------------------------

-----------
INSERT INTO authors( name ,natinality)
 VALUES ('Julio Cortazar','ARG'), 
        ('Isabel Allende', 'CHI'),
        ('Octavio Paz', 'MEX')
        ('Carlos Onetti', 'URU')

        INSERT INTO authors( name ,natinality)
 VALUES ('Julio Cortazar','ARG'), 
        ('Isabel Allende', 'CHI'),
        ('Octavio Paz', 'MEX')
        ('Carlos Onetti', 'URU')






------------------------------------

INSERT INTO clients (name,email, birthdate, gender, active)
 VALUES('Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1)
ON DUPLICATE KEY IGNORE ALL/*SUPER MALA PRACTICA */

INSERT INTO clients (name,email, birthdate, gender, active)
 VALUES('Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1)
ON DUPLICATE KEY UPDATE active= 0;




