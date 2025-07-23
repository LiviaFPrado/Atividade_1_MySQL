CREATE DATABASE db_infos_rh;
USE db_infos_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
	salario DECIMAL(8,2) NOT NULL,
    data_admissao DATE,
	PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, data_admissao, salario) 
VALUES
("Lívia Fernandes Prado", "Gerente", '2032-06-13', 16000),
("Diego Silva Costa", "Cientista de Dados", '2028-12-15', 12000),
("Maria Cristina da Silva", "Engenheira de Software", '2030-12-15', 10000),
("Joana dos Santos Ribeiro","Desenvolvedora Back-end Junior", "2032-10-10", 7000),
("Caique", "Analista de Sistemas Junior", '2026-03-15', 4000),
("Giovanni Santana", "Estagiario", '2032-06-13', 2500);

UPDATE tb_colaboradores SET salario = 1950 WHERE id = 6; 

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

ALTER TABLE tb_colaboradores ADD data_nascimento VARCHAR(255);

UPDATE tb_colaboradores SET data_nascimento = '1997-06-13' WHERE id = 1; 
UPDATE tb_colaboradores SET data_nascimento = '1992-06-17' WHERE id = 2; 
UPDATE tb_colaboradores SET data_nascimento = '1993-06-13' WHERE id = 3; 
UPDATE tb_colaboradores SET data_nascimento = '1999-06-13' WHERE id = 4; 
UPDATE tb_colaboradores SET data_nascimento = '2000-06-13' WHERE id = 5; 
UPDATE tb_colaboradores SET data_nascimento = '1998-06-15' WHERE id = 6; 

SELECT * FROM tb_colaboradores;



