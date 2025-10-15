-- 1. Cria o Banco de Dados
CREATE DATABASE db_rh;

-- Seleciona o Banco de Dados para uso
USE db_rh;

-- 2. Cria a Tabela de Colaboradores com 5 atributos relevantes
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    data_admissao DATE,
    salario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);

-- 3. Insere no mínimo 5 dados (registros)
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, salario) VALUES
("Luíz Fellipe Rezende", "Desenvolvedor Jr", "2024-01-15", 1800.00),
("Davi Lucca Costa", "Analista de RH Pleno", "2022-05-20", 3500.50),
("Anna Victória Ferraz", "Gerente de Projetos", "2019-11-10", 8500.75),
("Wesley Lima", "Assistente Administrativo", "2023-08-01", 1500.00),
("Matteo Costa Ferraz", "Especialista de Marketing", "2021-03-25", 4200.00);

-- Exibe todos os registros inseridos (Opcional, para checagem)
SELECT * FROM tb_colaboradores;

-- 4. SELECT que retorne todos os colaboradores com o salário maior do que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- 5. SELECT que retorne todos os colaboradores com o salário menor do que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- 6. Atualiza um registro desta tabela
-- Exemplo: Atualiza o salário da colaboradora com id = 1 (Maria da Silva)
UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 1;

-- Exibe o registro atualizado (Opcional, para checagem)
SELECT * FROM tb_colaboradores WHERE id = 1;