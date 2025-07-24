CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_categoria VARCHAR(255),
	descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
("Medicamentos", "Produtos com princípios ativos para tratamento de doenças"),
("Cosméticos", "Itens voltados à higiene e beleza"),
("Higiene Pessoal", "Produtos de uso diário para cuidados pessoais"),
("Suplementos", "Vitaminas e minerais para apoio nutricional"),
("Primeiros Socorros", "Produtos para curativos e emergências");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
	preco DECIMAL(6,2),
	quantidade_estoque INT,
	descricao_produtos VARCHAR(255),
	fabricante VARCHAR(255),
	id_categoria BIGINT
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, descricao_produtos, fabricante, id_categoria)
VALUES
("Dipirona Sódica", 8.90, 200, "Analgésico e antitérmico", "Neo Química", 1),
("Protetor Solar FPS 50", 56.90, 45, "Proteção UVA/UVB para pele sensível", "Sundown", 2),
("Escova Dental Ultra Macia", 12.50, 150, "Escova com cerdas ultramacias para gengivas sensíveis", "Colgate", 3),
("Multivitamínico A-Z", 69.90, 60, "Suplemento com 25 vitaminas e minerais", "Centrum", 4),
("Bandagem Elástica 1,5m", 18.00, 80, "Faixa de compressão para lesões leves", "Nexcare", 5),
("Paracetamol 750mg", 9.80, 180, "Reduz febre e alivia dores leves", "Medley", 1),
("Creme Hidratante Corporal", 49.00, 100, "Hidratação intensa com manteiga de karité", "Nivea", 2),
("Água Oxigenada 10 volumes", 6.50, 90, "Antisséptico para ferimentos", "Farmax", 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id 
WHERE nome_categoria = "Cosméticos";





