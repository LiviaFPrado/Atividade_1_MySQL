CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE  tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo_categoria VARCHAR (255),
    descricao VARCHAR (255)
);

INSERT INTO tb_categorias (tipo_categoria, descricao)
VALUES
("Tradicional", "Sabores clássicos mais vendidos da casa"),
("Especial","Ingredientes selecionados e combinações exclusivas"),
("Vegetariana","Sem carne, com vegetais frescos"),
("Doce","Pizzas de sobremesa"),
("Vegana","Sem ingredientes de origem animal");

SELECT * FROM tb_categorias;

CREATE TABLE  tb_pizzas(
	id BIGINT,
    nome VARCHAR (255),
    preco DECIMAL (6,2),
    tamanho VARCHAR (255),
    borda_recheada BOOLEAN,
    ingredientes VARCHAR (255),
    id_categoria BIGINT
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(nome, preco, tamanho, borda_recheada, ingredientes, id_categoria)
VALUES 
("Margherita", 35.90, "média", 0, "Molho de tomate, mussarela, manjericão", 1),
("Calabresa", 42.00, "grande", 1, "Calabresa, cebola, mussarela", 1),
("Frango com Catupiry", 48.50, "grande", 1, "Frango desfiado, catupiry, orégano", 2),
("4 Queijos", 44.00, "média", 0, "Mussarela, provolone, parmesão, gorgonzola", 2),
("Vegetariana", 39.90, "média", 0, "Tomate, pimentão, cebola, azeitona, mussarela", 3),
("Brigadeiro", 29.90, "pequena", 0, "Chocolate, granulado, leite condensado", 4),
("Banana com Canela", 32.90, "pequena", 1, "Banana, canela, açúcar, leite condensado", 4),
("Vegana Suprema", 49.90, "grande", 0, "Tofu, tomate seco, rúcula, molho especial vegano", 5);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 35 AND 50;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias  
ON tb_pizzas.id_categoria = tb_categorias.id 
WHERE tipo_categoria = "Doce";
