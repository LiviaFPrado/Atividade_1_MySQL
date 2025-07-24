CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
	nome_classe VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tb_classes(nome_classe, descricao)
VALUES 
("Arqueiro", "Especialista em ataques à distância com precisão elevada"),
("Guerreiro", "Forte no combate corpo a corpo, com alta resistencia"),
("Mago de Luz", "Usuario de magias poderosas, gera dano em fé"),
("Curandeiro", "Responsavel por curar aliados e remover efeitos negativos"),
("Assassino", "Agil e letal, ideal para ataques furtivos");



SELECT * FROM  tb_classes;


CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    skill VARCHAR(255) NOT NULL,
    cor_de_pele VARCHAR (255) NOT NULL,
    id_classes BIGINT
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classes) REFERENCES tb_classes(id);

INSERT INTO tb_personagens(nome, nivel,poder_ataque, poder_defesa, skill, cor_de_pele, id_classes)
VALUES 
("Celestina", 18, 2100, 800, "Raio Cósmico", "Lilás", 3),
("Kratos", 45, 2900, 2000, "Furia com Laminas do Caos", "Branco e vermelho", 2),
("Araniel", 22, 1800, 1400, "Furacao Verde", "Verde", 1),
("Cael", 27, 2300, 1600, "Agulhas Envenenadas", "Cinza", 5),
("Tsunade", 30, 900, 3000, "Soco Supremo", "Verde", 4),
("Cassian", 29, 2500, 1800, "Doma de Fogo", "Laranja", 5),
("Helena", 26, 1950, 1050, "Flechas Elétricas", "Dourada", 1),
("Ciro", 19, 2700, 950, "Muro de Terra", "Azul", 2);

SELECT * FROM  tb_classes;

SELECT * FROM  tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classes = tb_classes.id;


SELECT * FROM tb_personagens INNER JOIN tb_classes  -- -- 
ON tb_personagens.id_classes = tb_classes.id 
WHERE nome_classe = "Arqueiro";


