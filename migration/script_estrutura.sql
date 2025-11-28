CREATE DATABASE bd_controlleite

USE bd_controlleite



CREATE TABLE turma (
 turma VARCHAR(50) NOT NULL PRIMARY KEY,
 padrinho VARCHAR(50)
);




CREATE TABLE inventario (
 id_entrega INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 quantidade INT,
 dt_entrega DATE,
 turma VARCHAR(50)
);




ALTER TABLE inventario ADD CONSTRAINT FK_inventario_0 FOREIGN KEY (turma) REFERENCES turma (turma);


