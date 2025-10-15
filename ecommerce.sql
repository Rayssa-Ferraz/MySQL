CREATE DATABASE db_ecommerce_moveis;

USE db_ecommerce_moveis;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    material VARCHAR(50), 
    valor DECIMAL(10, 2) NOT NULL,
    estoque INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, descricao, material, valor, estoque) VALUES
("Cadeira Ergonômica Pro", "Cadeira ajustável com apoio lombar, ideal para longas jornadas.", "Mesh e Aço", 1250.00, 35),
("Mesa de Escritório L", "Mesa em formato 'L' com gaveteiro embutido.", "MDF", 850.50, 20),
("Armário Arquivador 4 Gavetas", "Armário alto para documentos com chave.", "Aço", 420.00, 50),
("Luminária de Mesa LED", "Luminária articulada com ajuste de intensidade.", "Alumínio", 150.99, 100),
("Estante Modular Grande", "Estante aberta com nichos, para livros e decoração.", "Madeira Maciça", 1550.00, 10),
("Sofá de Espera 2 Lugares", "Sofá para recepção ou sala de espera.", "Couro Sintético", 980.00, 15),
("Gaveteiro Auxiliar 3", "Gaveteiro pequeno com rodízios, para usar sob a mesa.", "MDF", 320.00, 75),
("Mesa Redonda para Reunião", "Mesa de diâmetro de 1,20m para 4 a 6 pessoas.", "MDF e Aço", 610.75, 12);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500.00;

SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET estoque = 60 WHERE id = 3;

SELECT * FROM tb_produtos WHERE id = 3;