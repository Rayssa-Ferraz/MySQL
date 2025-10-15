CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    idade INT,                 
    nota DECIMAL(4, 2) NOT NULL,
    status_aluno VARCHAR(50),  
    PRIMARY KEY (id)
);


INSERT INTO tb_estudantes (nome, turma, idade, nota, status_aluno) VALUES
("Guilherme Costa", "6A", 11, 9.50, "Aprovado"),
("Beatriz Alves", "7B", 12, 6.80, "Recuperação"),
("Lucas Ferreira", "8C", 13, 7.50, "Aprovado"),
("Mariana Rocha", "9A", 14, 5.90, "Recuperação"),
("Rafael Souza", "6B", 11, 8.25, "Aprovado"),
("Júlia Martins", "7A", 12, 7.00, "Aprovado"),
("Felipe Barros", "8B", 13, 4.50, "Reprovado"),
("Camila Reis", "9C", 14, 9.10, "Aprovado");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 7.10, status_aluno = 'Aprovado' WHERE id = 2;

SELECT * FROM tb_estudantes WHERE id = 2;