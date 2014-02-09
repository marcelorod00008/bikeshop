CREATE TABLE bike (
 id int(9) NOT NULL AUTO_INCREMENT,
 marca_id int(9) NOT NULL,
 tamanho_id int(9) NOT NULL,
 nome varchar(200) NOT NULL,
 modelo varchar(50) NOT NULL,
 cor varchar(50) NOT NULL,
 PRIMARY KEY (id),
 KEY marca_id_index (marca_id),
 KEY tamanho_id_index (tamanho_id),
 CONSTRAINT bike_fk_marca FOREIGN KEY (tamanho_id) REFERENCES tamanho (id),
 CONSTRAINT bike_fk_tamanho FOREIGN KEY (marca_id) REFERENCES marca (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO bike
VALUES (1,1,1,'Registro inválido','Marca 123 não existe','Inválido');

