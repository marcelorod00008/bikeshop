CREATE TABLE marca (
id INT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
garantia boolean not null default true
)ENGINE = INNODB;