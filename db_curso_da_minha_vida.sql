CREATE DATABASE db_curso_da_minha_vida_v2;

USE db_curso_da_minha_vida_v2;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    nivel VARCHAR(50), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_instrutores (
    id BIGINT AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100), 
    data_cadastro DATE,
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(6, 2) NOT NULL,
    carga_horaria INT,
    linguagem VARCHAR(50), 
    instrutor_id BIGINT, 
    categoria_id BIGINT, 
    PRIMARY KEY (id),
  
    FOREIGN KEY (instrutor_id) REFERENCES tb_instrutores(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, nivel) VALUES
("Programação Java", "Avançado"),
("Desenvolvimento Web", "Básico"),
("Design Gráfico", "Intermediário"),
("Marketing Digital", "Básico"),
("Gestão de Projetos", "Avançado");

INSERT INTO tb_instrutores (usuario, nome, especialidade, data_cadastro) VALUES
("Alex_Dev", "Alexandre Santos", "Backend e APIs", '2020-08-10'),
("Mary_Design", "Maria Oliveira", "UI/UX e Photoshop", '2021-03-25'),
("Gesta_Pro", "Paulo Ferreira", "Scrum e Liderança", '2019-11-01');

INSERT INTO tb_cursos (nome, valor, carga_horaria, linguagem, instrutor_id, categoria_id) VALUES
("Java Completo", 850.00, 120, "Java", 1, 1),              -- Java
("HTML e CSS Essencial", 300.00, 40, "HTML/CSS", 2, 2),    -- Web
("UX Design com Figma", 450.00, 60, "Figma", 2, 3),        -- Design
("Estratégias de SEO", 620.00, 80, "Conteúdo", 3, 4),       -- Marketing
("Gerenciamento Ágil", 950.00, 100, "Scrum", 3, 5),        -- Gestão
("Spring Boot Expert", 1200.00, 150, "Java", 1, 1),        -- Java
("JavaScript Moderno", 550.00, 70, "JavaScript", 1, 2),    -- Web
("Jornada do Cliente", 780.00, 90, "Vendas", 3, 4);        -- Marketing


SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT
    cur.nome AS Curso,
    cur.valor,
    cat.nome_categoria AS Categoria,
    cat.nivel
FROM tb_cursos cur
INNER JOIN tb_categorias cat ON cur.categoria_id = cat.id;

SELECT
    cur.nome AS Curso,
    cur.valor,
    cat.nome_categoria AS Categoria
FROM tb_cursos cur
INNER JOIN tb_categorias cat ON cur.categoria_id = cat.id
WHERE cat.nome_categoria = "Programação Java";

SELECT
    cur.nome AS Curso,
    cur.valor,
    cat.nome_categoria AS Categoria,
    i.nome AS Instrutor,
    i.especialidade
FROM tb_cursos cur
INNER JOIN tb_categorias cat ON cur.categoria_id = cat.id
INNER JOIN tb_instrutores i ON cur.instrutor_id = i.id;