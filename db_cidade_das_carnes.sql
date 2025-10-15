CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL, 
    origem VARCHAR(50), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(6, 2) NOT NULL, 
    peso_medio DECIMAL(4, 2), 
    corte VARCHAR(50),
    categoria_id BIGINT, 
    PRIMARY KEY (id),
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, origem) VALUES
("Bovinas", "Nacional"),
("Suínas", "Nacional"),
("Aves", "Nacional"),
("Peixes", "Importada"),
("Embutidos", "Nacional");

INSERT INTO tb_produtos (nome, valor, peso_medio, corte, categoria_id) VALUES
("Picanha Maturatta", 95.00, 1.20, "Traseiro", 1),
("Linguiça Calabresa", 18.50, 0.50, "Embutido", 5),
("Filé de Frango", 22.00, 1.00, "Peito", 3),
("Salmão Fresco", 120.00, 0.80, "Lombo", 4),
("Costela Suína", 35.00, 2.50, "Costado", 2),
("Alcatra", 55.00, 1.50, "Traseiro", 1),
("Coxa de Frango", 15.00, 1.00, "Perna", 3),
("Bacon em Cubos", 38.00, 0.50, "Embutido", 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT
    p.nome AS Produto,
    p.valor,
    p.corte,
    c.nome_categoria AS Categoria,
    c.origem
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT
    p.nome AS Produto,
    p.valor,
    c.nome_categoria AS Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome_categoria = "Aves";