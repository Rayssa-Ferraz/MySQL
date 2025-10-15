CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome_casa VARCHAR(50) NOT NULL, 
    caracteristica_principal VARCHAR(100), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    ataque INT NOT NULL,  -- Poder de Ataque (dano de feitiços)
    defesa INT NOT NULL,  -- Poder de Defesa (resistência a maldições)
    melhor_disciplina VARCHAR(50), 
    casa_id BIGINT, 
    PRIMARY KEY (id),
   
    FOREIGN KEY (casa_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_casa, caracteristica_principal) VALUES
("Grifinória", "Coragem e Ousadia"),
("Sonserina", "Ambição e Astúcia"),
("Lufa-Lufa", "Dedicação e Lealdade"),
("Corvinal", "Inteligência e Sabedoria"),
("Professor", "Conhecimento Mágico Avançado"); 


INSERT INTO tb_personagens (nome, ataque, defesa, melhor_disciplina, casa_id) VALUES
("Sebastian Sallow", 3500, 1800, "Magia Negra", 2),    -- Sonserina
("Natsai Onai", 2200, 2500, "Transfiguração", 1),       -- Grifinória
("Ominis Gaunt", 1500, 3000, "Feitiços", 2),           -- Sonserina
("Poppy Sweeting", 1900, 1500, "Cuidado de Criaturas", 3), -- Lufa-Lufa
("Amit Thakkar", 2800, 900, "Astronomia", 4),          -- Corvinal
("Professor Fig", 5000, 3500, "Magia Antiga", 5),      -- Professor
("Imelda Reyes", 4000, 1200, "Voo de Vassoura", 1),    -- Grifinória
("Garreth Weasley", 2100, 1050, "Poções", 1);          -- Grifinória

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT
    p.nome AS Personagem,
    p.ataque,
    p.defesa,
    p.melhor_disciplina,
    c.nome_casa AS Casa_Hogwarts,
    c.caracteristica_principal
FROM tb_personagens p
INNER JOIN tb_classes c ON p.casa_id = c.id;

SELECT
    p.nome AS Personagem,
    p.ataque,
    p.defesa,
    c.nome_casa AS Casa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.casa_id = c.id
WHERE c.nome_casa = "Sonserina";