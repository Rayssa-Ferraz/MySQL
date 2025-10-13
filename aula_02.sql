CREATE DATABASE db_quitanda;

USE db_quitanda;

-- Criar a tabela
CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY(id)
);

-- Inserir dados na Tabela

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Abacate", 10, "2025-10-27", 15.90);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Laranja", 50, "2025-10-17", 12.50);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 200, "2025-10-18", 12.90);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Morango", 70, "2025-10-11", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("kiwi", 700, "2025-10-11", 25.00);

SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE  id = 4;

SELECT * FROM tb_produtos WHERE  preco > 20;

SELECT * FROM tb_produtos WHERE  id != 4;


-- Modificar a estrutura de um atributo
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

UPDATE tb_produtos SET preco = 14.90 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 3;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos CHANGE descricao description varchar(255);

ALTER TABLE tb_produtos DROP description;