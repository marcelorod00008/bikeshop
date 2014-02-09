CREATE TABLE  tamanho (
id INT( 9 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
codigo VARCHAR( 3 ) NOT NULL ,
descricao VARCHAR( 40 ) NOT NULL ,
UNIQUE (codigo)
) ENGINE = INNODB;


INSERT INTO tamanho VALUES (1, 'P', 'Pequeno');
INSERT INTO tamanho VALUES (2, 'M', 'Médio');
INSERT INTO tamanho VALUES (3, 'G', 'Grande');