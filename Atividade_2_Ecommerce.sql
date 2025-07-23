CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
	valor DECIMAL(8,2) NOT NULL,
	estoque INT,
	PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, descricao, categoria, valor, estoque) 
VALUES
("Fone de Ouvido Bluetooth", "Headphone JBL", "Eletronicos", 349.90 , 150),
("Notebook Dell Inspiron 15", "Intel i5/ 8GB RAM", "Eletronicos", 3799.00, 20),
("Cadeira Gamer Reclinavel", "Apoio de braço ajustável e suporte lombar", "Moveis", 1299.00 , 35),
("Camiseta Oversized Preta", "Malha 100% algodão", "Moda", 59.90 , 200),
("Smartwatch Fit Pro", "Monitor de saúde e GPS integrado", "Eletronicos", 449.90 , 50),
("Mesa de Escritório Compacta", "Madeira MDF com suporte lateral", "Moveis", 529.90 , 20),
("Livro: O Poder do Hábito", "Charles Duhigg - Desenvolvimento pessoal", "Livros", 39.90 , 120),
("Caixa de Som JBL GO 3", "Bluetooth - a prova d’agua", "Eletronicos", 279.90 , 75);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET estoque = 200 WHERE id = 7; 

SELECT * FROM tb_produtos;
