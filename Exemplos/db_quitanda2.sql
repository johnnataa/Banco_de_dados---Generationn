CREATE DATABASE db_quitanda2;

USE db_quitanda2;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT  NULL,
quantidade INT,
dataValidade DATE,
preco DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, dataValidade, preco)
VALUES ("Tomate", 100, "2024-01-30", 8.00),
("Maçã", 20, "2024-01-30", 5.00),
("Laranja", 50, "2024-01-30", 10.00),
("Banana", 200, "2024-01-30", 12.00),
("Uva", 1200, "2024-01-30", 30.00),
("Abacaxi", 500, "2024-01-30", 2.99);

SELECT * FROM tb_produtos;

DELETE FROM tb_produtos WHERE id = 9;

CREATE TABLE tb_categorias (
id BIGINT auto_increment primary KEY,
descricao varchar(255) NOT NULL
);

INSERT INTO tb_categorias (descricao)
VALUES ("frutas"), ("verduras"), ("legumes"), ("temperos"), ("ovos"), ("outros");

SELECT * FROM tb_categorias;

ALTER TABLE tb_produtos ADD categoriaId BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria
FOREIGN KEY (categoriaId) REFERENCES tb_categorias(id);

UPDATE tb_produtos SET categoriaId = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaId = 1 WHERE id = 6;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY nome ASC;

SELECT * FROM tb_produtos ORDER BY nome DESC;

SELECT * FROM tb_produtos ORDER BY preco ASC;

SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00) ORDER BY nome ASC;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 and 15.00 ORDER BY preco ASC;

SELECT * FROM tb_produtos WHERE nome LIKE "%pimenta%";

SELECT AVG(preco) AS Media FROM tb_produtos;

SELECT SUM(preco) AS Media FROM tb_produtos;

SELECT * FROM tb_produtos;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

