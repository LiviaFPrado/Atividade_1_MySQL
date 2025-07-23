CREATE DATABASE db_estudantes;
USE db_estudantes;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	nome_responsavel VARCHAR(255) NOT NULL,
    data_nascimento DATE,
	serie VARCHAR(255) NOT NULL,
	nota_final DECIMAL(3,1) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, nome_responsavel, data_nascimento, serie, nota_final) 
VALUES
("Alice Moreira dos Santos", "Cassandra dos Santos", '2010-03-14', "8 ano" , 8.5),
("Lucas Pereira da Silva", "Amanda Pereira", '2009-07-25', "9 ano", 7.2),
("Bianca Carvalho Lima", "Douglas de Lima", '2011-11-03', "7 ano" , 9.1),
("Luis Henrique Costa", "Thatiane Costa", '2007-02-08', "1 ano Ensino Medio" , 7.5),
("Julia Menezes Rocha", "Francisca Rocha", '2008-05-22', "1 ano Ensino Medio" , 8.9),
("Gabriel Lima Ferreira", "Andrea Poento Ferreira", '2010-09-12', "8 ano" , 5.8),
("Mariana Oliveira Souza", "Carla Oliveira", '2006-12-01', "3 ano Ensino Medio" , 9.5),
("Rafael Nascimento Alves", "Ricardo Nascimento", '2009-01-30', "9 ano" , 7.0);


SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota_final > 7.0;

SELECT * FROM tb_alunos WHERE nota_final < 7.0;

UPDATE tb_alunos SET nota_final = 6.0 WHERE id = 6; 

